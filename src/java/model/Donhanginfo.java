/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author acer
 */
public class Donhanginfo {
    private int oid;
    private int pid;
    private String anh;
    private int amount;
    private int price;

    public Donhanginfo() {
    }

    public Donhanginfo(int oid, int pid, String anh, int amount, int price) {
        this.oid = oid;
        this.pid = pid;
        this.anh=anh;
        this.amount = amount;
        this.price = price;
    }

    public int getOid() {
        return oid;
    }

    public void setOid(int oid) {
        this.oid = oid;
    }

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public String getAnh() {
        return anh;
    }

    public void setAnh(String anh) {
        this.anh = anh;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    @Override
    public String toString() {
        return "Donhanginfo{" + "oid=" + oid + ", pid=" + pid + ", anh=" + anh + ", amount=" + amount + ", price=" + price + '}';
    }

    
    
    
}
