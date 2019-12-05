/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

import JavaBeans.clGame;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import Commons.Commons;
import Commons.DB_QUERY;

/**
 *
 * @author Admin
 */
public class tblGame {

    private String tbName = "game";

    private void setDataToClass(clGame game, ResultSet rs) throws SQLException {
        if (rs.next()) {
            game.setId(rs.getInt("id"));
            game.setName(rs.getString("name"));
            game.setPrice(rs.getInt("price"));
            game.setSale_price(rs.getInt("sale_price"));
            game.setDescription(rs.getString("description"));
            game.setIntroduction(rs.getString("introduction"));
            game.setStatus(rs.getBoolean("status"));
            game.setQuantity(rs.getInt("quantity"));
            game.setImage(rs.getString("image"));
        }
    }

    private void setDataToList(ArrayList<clGame> arr, ResultSet rs) throws SQLException {
        while (rs.next()) {
            clGame game = new clGame();
            game.setId(rs.getInt("id"));
            game.setName(rs.getString("name"));
            game.setPrice(rs.getInt("price"));
            game.setSale_price(rs.getInt("sale_price"));
            game.setDescription(rs.getString("description"));
            game.setIntroduction(rs.getString("introduction"));
            game.setStatus(rs.getBoolean("status"));
            game.setQuantity(rs.getInt("quantity"));
            game.setImage(rs.getString("image"));
            game.setDiscount_percent(Commons.getDiscountPercent(game.getPrice(), game.getSale_price()));
            arr.add(game);
        }
    }

    public tblGame() {
    }

    // hàm lấy dữ liệu danh sách game từ db
    public int getDatas(ArrayList<clGame> arr) {
        Connection cnn = Database.connectToDB();
        if (cnn == null) {
            System.out.println("Can't connect to DB");
            return DB_QUERY.FAIL_CONNECTION;
            // Không thể kết nối tới DB
        } else {
            String query = "SELECT * FROM `game` ORDER BY `id` LIMIT 12";
            try {
                Statement stm = cnn.createStatement();
                ResultSet rs = stm.executeQuery(query);
                this.setDataToList(arr, rs);

                // Lấy list game từ DB thành công
                return DB_QUERY.OK;
            } catch (SQLException ex) {
                Logger.getLogger(tblGame.class.getName()).log(Level.SEVERE, null, ex);
                return DB_QUERY.SQL_ERROR;
                // Lỗi sai lênh sql
            }
        }
    }

    // Lấy game theo id

    public int getDatas(clGame game, int id) {
        Connection cnn = Database.connectToDB();
        String sql = "SELECT * FROM " + tbName
                + " WHERE id=?";
        if (cnn == null) {
            return DB_QUERY.FAIL_CONNECTION;
        } else {
            try {
                PreparedStatement stm = cnn.prepareStatement(sql);
                stm.setInt(1, id);
                ResultSet rs = stm.executeQuery();
                this.setDataToClass(game, rs);
                return DB_QUERY.OK;
            } catch (SQLException ex) {
                Logger.getLogger(tblGame.class.getName()).log(Level.SEVERE, null, ex);
                return DB_QUERY.SQL_ERROR;
            }
        }
    }
}
