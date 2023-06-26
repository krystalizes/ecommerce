
package DAO;

import context.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import model.Giohang;
import model.Sanpham;
import model.Taikhoan;
public class DAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<Sanpham> getAllProduct() {
        List<Sanpham> list = new ArrayList<>();
        String query = "select * from product";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Sanpham(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    public List<Sanpham> getTopProduct() {
        List<Sanpham> list = new ArrayList<>();
        String query = "select * from product where category='top'";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Sanpham(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    public List<Sanpham> getOutwearProduct() {
        List<Sanpham> list = new ArrayList<>();
        String query = "select * from product where category='outwear'";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Sanpham(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    public List<Sanpham> getBottomProduct() {
        List<Sanpham> list = new ArrayList<>();
        String query = "select * from product where category='bottom'";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Sanpham(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    public List<Sanpham> getAccessoriesProduct() {
        List<Sanpham> list = new ArrayList<>();
        String query = "select * from product where category='accessories'";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Sanpham(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    public Sanpham getProductbyID(String id) {
        String query = "select * from product where id=?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Sanpham(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6));
            }
        } catch (Exception e) {
        }
        return null;
    }
    public List<Sanpham> searchProductbyName(String txtSearch) {
        List<Sanpham> list = new ArrayList<>();
        String query = "select * from product where [name] like ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1,"%"+txtSearch+"%");
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Sanpham(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    public Taikhoan login(String user, String pass){
        String query = "select * from Account where [user] = ? and pass = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1,user);
            ps.setString(2,pass);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Taikhoan(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),                      
                        rs.getInt(4));
            }
        } catch (Exception e) {
        }
        return null;
        
    }public Taikhoan checkTaikhoan(String user){
        String query = "select * from Account where [user] = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1,user);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Taikhoan(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),                       
                        rs.getInt(4));
            }
        } catch (Exception e) {
        }
        return null;
        
    }
    public void signup(String user, String pass){
        String query = "insert into Account values(?,?,0)";   
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1,user);
            ps.setString(2,pass);
            ps.executeUpdate();          
        } catch (Exception e) {
        }    
    }
    public void xoaProduct(String pid){
        String query = "delete from product where id=?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1,pid);         
            ps.executeUpdate();          
        } catch (Exception e) {
        }    
    }
    public void themProduct(String ten, String anh, String gia, String chitiet, String danhmuc){
        String query = "insert into [dbo].[product] ([name], [image], [price], [description], [category]) VALUES (?, ?, ?, ?, ?)";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1,ten); 
            ps.setString(2,anh);       
            ps.setString(3,gia);       
            ps.setString(4,chitiet);       
            ps.setString(5,danhmuc);       
            ps.executeUpdate();          
        } catch (Exception e) {
        }    
    }
    public void suaProduct(String ten, String anh, String gia, String chitiet, String danhmuc, String id){
        String query="update product set [name]=?, [image]=?, [price]=?, [description]=?, [category]=? where [id]=?";
        try{ 
            conn=new DBContext().getConnection();
            ps=conn.prepareStatement(query);
            ps.setString(1, ten);
            ps.setString(2, anh);
            ps.setString(3, gia);
            ps.setString(4, chitiet);
            ps.setString(5, danhmuc);
            ps.setString(6, id);
            ps.executeUpdate();
        }catch (Exception e){
            
        }
    }
    public List<Giohang> getCartbyID(int id) {
        List<Giohang> list = new ArrayList<>();
        String query = "select dbo.Cart.ProductID,dbo.product.[name],dbo.product.[image],dbo.product.price, dbo.Cart.Amount from dbo.Cart,dbo.product,dbo.Account where dbo.Cart.AccountID=dbo.Account.[uID] and dbo.Cart.ProductID=dbo.product.id and dbo.Cart.AccountID=?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Giohang(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),                      
                        rs.getDouble(4),
                        rs.getInt(5)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    public void themgiohang(int id, int pid, int soluong){
        String query = "insert into Cart([AccountID],[ProductID],[Amount]) values(?,?,?)";   
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1,id);
            ps.setInt(2,pid);
            ps.setInt(3,soluong);
            ps.executeUpdate();          
        } catch (Exception e) {
        }    
    }
    public Giohang checkGiohang(int id, int pid){
        String query = "select dbo.Cart.ProductID,dbo.product.[name],dbo.product.[image],dbo.product.price, dbo.Cart.Amount from dbo.Cart,dbo.product,dbo.Account where dbo.Cart.AccountID=dbo.Account.[uID] and dbo.Cart.ProductID=dbo.product.id  and dbo.Cart.AccountID=? and dbo.Cart.ProductID=?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1,id);
            ps.setInt(2, pid);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Giohang(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getInt(5));
            }
        } catch (Exception e) {
        }
        return null;     
    }
    public void xoaspgiohang(int id, int pid){
        String query = "delete from Cart where AccountID = ? and ProductID = ?";   
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1,id);
            ps.setInt(2,pid);
            ps.executeUpdate();          
        } catch (Exception e) {
        }    
    }
    public void xoagiohang(int id){
        String query = "delete from Cart where AccountID = ? ";   
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1,id);
            ps.executeUpdate();          
        } catch (Exception e) {
        }    
    }
    
}