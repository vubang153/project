/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ParentsClasses;

/**
 *
 * @author Admin
 */
public abstract class _clAccount {
    private String username;
    private String password;
    private int permission;
//    Quyền bằng: 
//    ------------1 là normal user
//    ------------2 là manager
//    ------------3 là admin

    public _clAccount(String username, String password, int permission) {
        this.username = username;
        this.password = password;
        this.permission = permission;
    }

    public _clAccount() {
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getPermission() {
        return permission;
    }

    public void setPermission(int permission) {
        this.permission = permission;
    }
}
