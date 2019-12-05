/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package JavaBeans;

/**
 *
 * @author Admin
 */
public class clCategory {
    private int id;
    private String name;
    
    public clCategory(int id, int parent_id, String name) {
        this.id = id;
        this.name = name;
    }

    public clCategory() {
    }


    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
}
