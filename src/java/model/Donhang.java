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
    private String date;
    private int tien;

    public Donhang(int id, String transactionid, int accountid, String date, int tien) {
        this.id = id;
        this.transactionid=transactionid;
        this.accountid = accountid;
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
        return "Donhang{" + "id=" + id + ", transactionid=" + transactionid + ", accountid=" + accountid + ", date=" + date + ", tien=" + tien + '}';
    }

   
    
}
