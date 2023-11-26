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
public class Donhang {
    private int id;
    private String transactionid;
    private int accountid;
    private String name;
    private String sdt;
    private String dchi;
    private String date;
    private int tien;

    public Donhang(int id, String transactionid, int accountid, String name, String sdt, String dchi, String date, int tien) {
        this.id = id;
        this.transactionid = transactionid;
        this.accountid = accountid;
        this.name = name;
        this.sdt = sdt;
        this.dchi = dchi;
        this.date = date;
        this.tien = tien;
    }

  

    public Donhang() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTransactionid() {
        return transactionid;
    }

    public void setTransactionid(String transactionid) {
        this.transactionid = transactionid;
    }      
    
    public int getAccountid() {
        return accountid;
    }

    public void setAccountid(int accountid) {
        this.accountid = accountid;
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
    
    

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public int getTien() {
        return tien;
    }

    public void setTien(int tien) {
        this.tien = tien;
    }

    @Override
    public String toString() {
        return "Donhang{" + "id=" + id + ", transactionid=" + transactionid + ", accountid=" + accountid + ", name=" + name + ", sdt=" + sdt + ", dchi=" + dchi + ", date=" + date + ", tien=" + tien + '}';
    }

    
    
}
