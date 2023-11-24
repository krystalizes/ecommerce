
package model;


public class Sanpham {
    private int id;
    private String ten;
    private String anh;
    private int gia;
    private int soluong;
    private String chitiet;
    private String danhmuc;

    public String getDanhmuc() {
        return danhmuc;
    }

    public void setDanhmuc(String danhmuc) {
        this.danhmuc = danhmuc;
    }
   

    public Sanpham() {
    }

    public Sanpham(int id, String ten, String anh, int gia, int soluong, String chitiet, String danhmuc) {
        this.id = id;
        this.ten = ten;
        this.anh = anh;
        this.gia = gia;
        this.soluong = soluong;
        this.chitiet = chitiet;
        this.danhmuc=danhmuc;
       
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTen() {
        return ten;
    }

    public void setTen(String ten) {
        this.ten = ten;
    }

    public String getAnh() {
        return anh;
    }

    public void setAnh(String anh) {
        this.anh = anh;
    }

    public int getGia() {
        return gia;
    }
    
    public int getSoluong() {
        return soluong;
    }

    public void setSoluong(int soluong) {
        this.soluong = soluong;
    }

    public void setGia(int gia) {
        this.gia = gia;
    }

    public String getChitiet() {
        return chitiet;
    }

    public void setChitiet(String chitiet) {
        this.chitiet = chitiet;
    }

    @Override
    public String toString() {
        return "Sanpham{" + "id=" + id + ", ten=" + ten + ", anh=" + anh + ", gia=" + gia + ", soluong=" + soluong + ", chitiet=" + chitiet + ", danhmuc=" + danhmuc + '}';
    }

   

    
    
}
