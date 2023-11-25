<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Giỏ hàng</title>
    <link rel="stylesheet" href="/WebApplication3/icon/themify-icons-font/themify-icons/themify-icons.css">
    <style>
     <%@ include file="/css/giohang.css"%>
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
                <button class="btn">    <a class="b1" href="/WebApplication3/Cart"><i class="ti-shopping-cart"></i></a>      </button>
                </c:if>
            </div>
        </nav>
        <form action="Search" method="post" class="form1">
            <div class="timkiem">
                <button type="submit" class="btn"><i class="search-icon ti-search"></i></button> 
            </div>
            <div class="timkiem1">
                <input name="txt" type="text" id="search">
            </div>
        </form>
        <c:if test="${sessionScope.taikhoan == null}">         
            <div class="log">
                <div class="dk-dn1" >   <a href="/WebApplication3/index/dk.jsp">ĐĂNG KÝ</a>   </div>
                <div class="dk-dn2" >   <a href="/WebApplication3/Login">ĐĂNG NHẬP</a> </div>
            </div>
        </c:if>
    </div>
    <div class="giua">
        <center>
            <div class="tieude">
                <h2><b>GIỎ HÀNG</b></h2>
                <button  id="btn-open" class="btn"><a href="Xoagiohang"><i class="ti-close"></i></a> </button> 				
            </div>  
            <table class="bangsp" border="1px" width="80%" style="vertical-align: middle; text-align: center;">
                <tr>
                    <th>TÊN</th>
                    <th>ẢNH</th>
                    <th>GIÁ</th>
                    <th>SỐ LƯỢNG</th>
                    <th></th>
                </tr>
                <c:set var="tong" value="0"></c:set>
                <c:forEach items="${listp}" var="o">
                    <c:set var="tong" value="${tong + o.gia * o.soluong}"></c:set>
                    <tr>                        
                        <td>${o.ten}</td>                       
                        <td>
                            <img src="${o.anh}" class="pic1">
                        </td>
                        <td>${o.gia} đ</td>
                        <td>
                            <form action="/WebApplication3/Editcart?pid=${o.id}" method="post" >
                            <input type="number" value="${o.soluong}" name="soluong" class="soluong1" min="1" style="width: 50px; text-align: center;">
                            <button class="btn" type="submit">Lưu</button>
                            </form>
                        </td>
                        <td>
                            <button  class="btn"><a  href="Xoapgiohang?pid=${o.id}"><i class="ti-trash"></i></a> </button> 
                        </td>
                    </tr>
                </c:forEach>                    
            </table>
            <h3 class="chiphi" >TỔNG TIỀN: ${tong}đ</h3>
             <button  id="btn-open" class="btn1"><a href="Payment?tong=${tong}">Thanh toán</a> </button> 	   
            
        </center>
    </div>
    <script>window.onload=function(){search.focus()}</script>
</body>
</html>