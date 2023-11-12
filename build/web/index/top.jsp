<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Top</title>  
    <style>
     <%@ include file="/css/top.css"%>
    </style>
    <link rel="stylesheet" href="/WebApplication3/icon/themify-icons-font/themify-icons/themify-icons.css">
    <script src="test.js"></script>
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
                <button type="submit" class="btn"><i class="search-icon ti-search"></i></button> 
            </div>
            <div class="timkiem1">
                <input name="txt" type="text" >
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
        <div class="giua-2">
            <ul>
                <c:forEach items="${listp}" var="o">
                    <li>
                        <a href="Detail?pid=${o.id}">
                            <img src="${o.anh}" class="pic1">
                            <p class="pa1">${o.ten}</p>
                            <p class="tien1">${o.gia}đ</p>
                        </a>
                    </li>
                </c:forEach>
            </ul>
    </div>
    </div>

    <div class="footer">
        <div class="cot1">
            <img  src="/WebApplication3/anh/logo.png" class="logo1">
            <p class="f">Store Online: 0902 798 994</p>
            <p class="f">HCM: The New PlayGround - 90 Lê Lai, Q1
                Open: 10h - 21h30</p>
            <p class="f">HCM: 772 Sư Vạn Hạnh, Phường 12, Q10
                Open: 9h - 21h30</p>
            <img class="picf" src="/WebApplication3/anh/logoSaleNoti.png">
        </div>
        <div class="cot2">
            <p class="ff">CHÍNH SÁCH</p>
            <p class="f1">CHÍNH SÁCH ĐỔI HÀNG</p>
            <p class="f1">CHÍNH SÁCH BẢO MẬT</p>
            <p class="f1">HỆ THỐNG CỬA HÀNG</p>
            <p class="f1">HỆ THỐNG MEMBER</p>
        </div>

        <div class="cot3">
            <p class="ff">DỊCH VỤ-HƯỚNG DẪN</p>
            <p class="f1">GIAO HÀNG TẬN NƠI</p>
            <p class="f1">MEMBER ONLINE</p>
            <p class="f1">MEMBER OFFLINE</p>
            <p class="f1">HƯỚNG DẪN ĐĂNG KÝ TÀI KHOẢN</p>
            <p class="f1">HƯỚNG DẪN BẢO QUẢN</p>
            <p class="f1">TUYỂN DỤNG</p>

        </div>

    </div>
</body>
</html>