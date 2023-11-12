<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin</title>
    <link rel="stylesheet" href="/WebApplication3/icon/themify-icons-font/themify-icons/themify-icons.css">
    <style>
     <%@ include file="/css/adminpage.css"%>
    </style>
    <script src="js/modal.js"></script> 
</head>
<body>
    <div class="header">
        <a href="/WebApplication3/Trangchu"> <img  src="/WebApplication3/anh/logo.png" class="logo" alt="SLY CLOTHING"> </a>
        <nav class="nav-bar">
            <div class="button-nav">
                <button class="btn ">   <a class="b1" href="/WebApplication3/Cuahang">SHOP ALL</a>  </button>
                <button class="btn">    <a class="b1" href="/WebApplication3/Top">TOP </a>         </button>
                <button class="btn">    <a class="b1" href="/WebApplication3/Outwear">OUTWEAR </a>      </button>
                <button class="btn">    <a class="b1" href="/WebApplication3/Bottom">BOTTOM</a>       </button>
                <button class="btn">    <a class="b1" href="/WebApplication3/Accessories">ACCESSORIES</a>    </button>
                <c:if test="${sessionScope.taikhoan.isAdmin == 1}">      
                     <button class="btn">    <a class="b1" href="/WebApplication3/Manager">MANAGE PRODUCT</a>         </button>
                 </c:if>
                <c:if test="${sessionScope.taikhoan != null}">         
                <button class="btn">    <a class="b1" href="#">${sessionScope.taikhoan.user}</a>      </button>
                <button class="btn">    <a class="b1" href="/WebApplication3/Logout">ĐĂNG XUẤT</a>      </button>
                 <c:if test="${sessionScope.taikhoan.isAdmin == 0}">  
                <button class="btn">    <a class="b1" href="/WebApplication3/Cart"><i class="ti-shopping-cart"></i></a>      </button>
                </c:if>
                </c:if>
            </div>
        </nav>
        <form action="Search" method="post" class="form1">
                <div class="timkiem">
                    <div class="timkiem1">
                    <input name="txt" type="text" >
                    </div>
                    <button type="submit" class="btn"><i class="search-icon ti-search"></i></button> 
                </div>
       </form>
        <c:if test="${sessionScope.taikhoan == null}">         
            <div class="dk-dn1" >   <a href="/WebApplication3/index/dk.jsp">ĐĂNG KÝ</a>   </div>
            <div class="dk-dn2"> <a href="/WebApplication3/Login">ĐĂNG NHẬP</a> </div>
        </c:if>
    </div>
    <div class="giua">
        <div id="modal-container" >
                <div class="modal" id="modal-demo">
                    <div class="modal-header">
                        <h3>Thêm sản phẩm</h3>
                        <button  id="btn-close" onclick="modal1()"><i class="ti-close"></i></a> </button> 
                    </div>
                    <div class="modal-body">
                        <form action="/WebApplication3/Add" method="post" class="form1">
                            <div class="themsp">
                                <p>Tên</p>
                                <input name="txt1" type="text" class="ip">
                                <P>Ảnh</p>
                                <input name="txt2" type="text" class="ip">
                                <P>Gía</p>
                                <input name="txt3" type="text" class="ip">
                                <P>Chi tiết</p>
                                <input name="txt4" type="text" class="ip">
                                <P>Danh mục</p>
                                <input name="txt5" type="text" class="ip">                               
                            </div>
                            <div class="modal-footer">
                                <button  class="btn" id="luu" type="submit"><i class="ti-plus"> Lưu</i> </button> 
                            </div>
                        </form>                                          
                    </div>
                </div>
        </div>           
        <center>
            <div class="tieude">
                <h2><b>Manage Product</b></h2>
                <button  id="btn-open" class="btn" onclick="modal()"><i class="ti-plus"></i></a> </button> 				
            </div>  
            <table class="bangsp" border="1px" width="80%">
                <tr>
                    <th>ID</th>
                    <th>TÊN</th>
                    <th>ẢNH</th>
                    <th>GIÁ</th>
                    <th>CHI TIẾT</th>
                    <th></th>
                </tr>
                <c:forEach items="${listp}" var="o">
                    <tr>                        
                        <td>${o.id}</td>
                        <td>${o.ten}</td>
                        <td>
                            <img src="${o.anh}" class="pic1">
                        </td>
                        <td>${o.gia} đ</td>
                        <td>${o.chitiet}</td>
                        <td>
                            <button  class="btn"><a  href="Loadedit?pid=${o.id}"><i class="ti-cut"></i></a> </button> 
                            <button  class="btn"><a  href="Delete?pid=${o.id}"><i class="ti-trash"></i></a> </button> 
                        </td>
                    </tr>
                </c:forEach>    
            </table>
        </center>
    </div>
</body>
</html>