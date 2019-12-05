/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

import JavaBeans.clCategory;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Admin
 */
public class tblCategory {
    private String query = "SELECT * FROM category";
    private void getDataToList(ResultSet rs, ArrayList<clCategory> arr) throws SQLException {
        while (rs.next()) {
            clCategory category = new clCategory();
            category.setId(rs.getInt("id"));
            category.setName(rs.getString("name"));
            arr.add(category);
        }
    }
    public int getDatas(ArrayList<clCategory> arr) {
        Connection cnn = Database.connectToDB();
        if (cnn == null) {
            return 0;
            // Không thể kết nối cơ sở dữ liệu
        }
        else {
            try {
                PreparedStatement stm = cnn.prepareStatement(query);
                ResultSet rs = stm.executeQuery();
                this.getDataToList(rs, arr);
                return 1;
                // Get datas success
            } catch (SQLException ex) {
                Logger.getLogger(tblCategory.class.getName()).log(Level.SEVERE, null, ex);
                return -1;
                // Sql query error
            }
        }
    }
}
