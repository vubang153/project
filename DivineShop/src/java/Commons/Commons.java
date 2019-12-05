/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Commons;

/**
 *
 * @author Admin
 */
public class Commons {
    public static String selectAllQuery(String tableName) {
        String query = "SELECT * FROM "  + tableName;
        return query;
    }
    // Method tính % discount
    public static int getDiscountPercent(int price, int sale_price) {
        return 100 - (sale_price / (price / 100));
    }
}
