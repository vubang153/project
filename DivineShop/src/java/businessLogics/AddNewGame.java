/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package businessLogics;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 *
 * @author Admin
 */
@WebServlet(name = "AddNewGame", urlPatterns = {"/AddNewGame"})
public class AddNewGame extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        File file;
            int maxFileSize = 5000 * 1024;
            int maxMemSize = 5000 * 1024;
//            String contentType = request.getContentType();
//            String filePath = "E:/K32B2/HanoiComputer/web/img/product/product_detail/";
            ServletContext context = request.getServletContext();
            String curPath = context.getRealPath("/");//lấy đường dẫn thư mục hiện tại
            String filePath = curPath + "img/product/product_detail/";//cộng thêm thư mục Uploads
            boolean isMultipart = ServletFileUpload.isMultipartContent(request);
            if (isMultipart) {
//            if ((contentType.indexOf("multipart/form-data") >= 0)) {
                DiskFileItemFactory factory = new DiskFileItemFactory();
                factory.setSizeThreshold(maxMemSize);
                factory.setRepository(new File(curPath));

//                factory.setRepository(new File("E:/K32B2/HanoiComputer/web/img/product"));
                ServletFileUpload upload = new ServletFileUpload(factory);
                upload.setSizeMax(maxFileSize);
                String product_id = "";
                String product_name = "";
                int product_price = 0;
                int product_group = 0;
                String product_detail = "";
                String file_name = "";
                try {
                    List fileItems = upload.parseRequest(request);
                    Iterator i = fileItems.iterator();

                    while (i.hasNext()) {

                        FileItem fi = (FileItem) i.next();
                        String fieldName = fi.getFieldName();//lấy tên input
                        out.println("<p>fieldname: " + fieldName + "</p>");
                        //lặp các input submit từ form
                        if (fi.isFormField()) //nếu là input thường
                        {
                            if (fieldName.equalsIgnoreCase("inputProductId")) {
                                product_id = fi.getString("UTF-8");
                            } else if (fieldName.equalsIgnoreCase("inputProductName")) {
                                product_name = fi.getString("UTF-8");
                            } else if (fieldName.equalsIgnoreCase("inputProductPrice")) {
                                product_price = Integer.parseInt(fi.getString("UTF-8"));
                            } else if (fieldName.equalsIgnoreCase("inputProductGroup")) {
                                product_group = Integer.parseInt(fi.getString("UTF-8"));
                            } else if (fieldName.equalsIgnoreCase("inputProductDetails")) {
                                product_detail = fi.getString("UTF-8");
                            } else {
                                out.println("other <br>");
                            }
                        } else {//nếu là input dạng file
                            file_name = fi.getName();
                            boolean isInMemory = fi.isInMemory();
                            long sizeInBytes = fi.getSize();
                            file = new File(filePath + file_name);
                            fi.write(file);
                            out.println("Uploaded Filename: " + filePath + file_name + "<br>");
                            out.println("<br><img src='Uploads/" + file_name + "' width=100>");
                        }
                    }
                    tbSanpham tb_sanpham = new tbSanpham();
                    clsSanpham sp = new clsSanpham();
                    sp.setMasp(product_id);
                    sp.setTensp(product_name);
                    sp.setGiasp(product_price);
                    sp.setManhom(product_group);
                    sp.setHinhanh(file_name);
                    sp.setNoidung(product_detail);
                    out.print(sp.getNoidung());;
                    out.print(sp.getTensp());
                    int result = tb_sanpham.addNewProduct(sp);
                    out.print("Đ" + result);
                    if (result == 1) {
                        response.sendRedirect("admin/index.jsp?");
                    } else {
                        response.sendRedirect("admin/index.jsp?s=f");
                    }
                } catch (Exception ex) {
                    System.out.println(ex);
                }
            } else {
                out.println("<p>No file uploaded</p>");
            }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
