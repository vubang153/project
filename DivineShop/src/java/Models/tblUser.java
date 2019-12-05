/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

import Commons.DB_QUERY;
import JavaBeans.clUser;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Admin
 */
public class tblUser {

    private String db_table = "account";

    public int checkLogin(String username, String password) {
        String sqlQuery = "SELECT * FROM " + db_table + " WHERE username = ? AND password=MD5(?)";   
        Connection cnn = Database.connectToDB();
        if (cnn == null) {
            return DB_QUERY.FAIL_CONNECTION;
        } else {
            try {
                PreparedStatement stm = cnn.prepareStatement(sqlQuery);
                stm.setString(1, username);
                stm.setString(2, password);
                ResultSet rs = stm.executeQuery();
                if (rs.next()) {
                    return DB_QUERY.OK;
                    // Tài khoản và mật khẩu đúng
                } else {
                    return DB_QUERY.NO_RECORDS_FOUND;
                    // Tài khoản và mật khẩu sai
                }
            } catch (SQLException ex) {
                Logger.getLogger(tblUser.class.getName()).log(Level.SEVERE, null, ex);
                return DB_QUERY.SQL_ERROR;
                // Lênh sql bị sai
            }
        }
    }

    // Hàm đăng kí

    public int registerAccount(clUser user) {
        Connection cnn = Database.connectToDB();
        String sql = "INSERT INTO " + db_table + "(username,password) VALUES(?,MD5(?))";
        if (cnn == null) {
            return DB_QUERY.FAIL_CONNECTION;
        }
        else {
            try {
                PreparedStatement stm = cnn.prepareStatement(sql);
                stm.setString(1, user.getUsername());
                stm.setString(2, user.getPassword());
                int result = stm.executeUpdate();
                return DB_QUERY.OK;
            } catch (SQLException ex) {
                Logger.getLogger(tblUser.class.getName()).log(Level.SEVERE, null, ex);
                return DB_QUERY.SQL_ERROR;
            }
        }
    }
}
