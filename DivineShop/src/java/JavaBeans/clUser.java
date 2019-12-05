/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package JavaBeans;

import ParentsClasses._clAccount;

/**
 *
 * @author Admin
 */
public class clUser extends _clAccount {
    // Quyền mặc định là 1: Normal user
    private String real_name;
    private String phone_number;

    public clUser(String real_name, String phone_number, String username, String password, int permission) {
        super(username, password, permission);
        this.real_name = real_name;
        this.phone_number = phone_number;
    }

    public clUser(String real_name, String phone_number) {
        this.real_name = real_name;
        this.phone_number = phone_number;
    }
    public clUser() {
    }

    public String getReal_name() {
        return real_name;
    }

    public void setReal_name(String real_name) {
        this.real_name = real_name;
    }

    public String getPhone_number() {
        return phone_number;
    }

    public void setPhone_number(String phone_number) {
        this.phone_number = phone_number;
    }

    
}
