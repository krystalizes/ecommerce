
package model;


public class Taikhoan {
    private int id;
    private String user;
    private String pass;
    private int isAdmin;
    private String name;
    private String sdt;
    private String dchi;

    public Taikhoan(int id, String user, String pass, int isAdmin, String name, String sdt, String dchi) {
        this.id = id;
        this.user = user;
        this.pass = pass;
        this.isAdmin = isAdmin;
        this.name = name;
        this.sdt = sdt;
        this.dchi = dchi;
    }
    
    
    public Taikhoan() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public int getIsAdmin() {
        return isAdmin;
    }

    public void setIsAdmin(int isAdmin) {
        this.isAdmin = isAdmin;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSdt() {
        return sdt;
    }

    public void setSdt(String sdt) {
        this.sdt = sdt;
    }

    public String getDchi() {
        return dchi;
    }

    public void setDchi(String dchi) {
        this.dchi = dchi;
    }

    @Override
    public String toString() {
        return "Taikhoan{" + "id=" + id + ", user=" + user + ", pass=" + pass + ", isAdmin=" + isAdmin + ", name=" + name + ", sdt=" + sdt + ", dchi=" + dchi + '}';
    }
    
    
    

    
}
