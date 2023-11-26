<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--<%@page contentType="text/html" pageEncoding="UTF-8"%>--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sửa thông tin sản phẩm</title>
    <link rel="stylesheet" href="/WebApplication3/icon/themify-icons-font/themify-icons/themify-icons.css">
    <style>
     <%@ include file="/css/edit.css"%>
    </style>
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
                <button class="btn">    <a class="b1" href="/WebApplication3/Accessories">ACCESSORY</a>    </button>
                <c:if test="${sessionScope.taikhoan.isAdmin == 1}">      
                     <button class="btn">    <a class="b1" href="/WebApplication3/Manager">MANAGE PRODUCT</a>         </button>
                     <button class="btn">    <a class="b1" href="/WebApplication3/Thongke">THỐNG KÊ</a>         </button>
                 </c:if>
                <c:if test="${sessionScope.taikhoan != null}">   
                <c:if test="${sessionScope.taikhoan.isAdmin == 0}">  
                <button class="btn">    <a class="b1" href="/WebApplication3/Cart"><i class="ti-shopping-cart"></i></a>      </button>
                <button class="btn">    <a class="b1" href="/WebApplication3/Orderhis">LỊCH SỬ</a>      </button>
                <button class="btn">    <a class="b1" href="/WebApplication3/LoadeditAcc">THÔNG TIN</a>      </button>
                </c:if>
                <button class="btn">    <a class="b1" href="#">${sessionScope.taikhoan.user}</a>      </button>
                <button class="btn">    <a class="b1" href="/WebApplication3/Logout">ĐĂNG XUẤT</a>      </button>             
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
    <div id="modal-container" >
                <div class="modal" id="modal-demo">
                    <div class="modal-header">
                        <h3>Sửa thông tin khách hàng</h3>
                        <button  id="btn-close"><a href="/WebApplication3/Trangchu"><i class="ti-close"></i></a> </button> 
                    </div>
                    <div class="modal-body">
                        <form action="/WebApplication3/EditAcc" method="post" class="form1" accept-charset="UTF-8>
                            <div class="themsp">                              
                                <p>Họ Tên</p>
                                <input name="txt1" value="${detail.name}" type="text" class="ip">                                
                                <P>Số điện thoại</p>
                                <input name="txt2" value="${detail.sdt}" type="text" class="ip">
                                <P>Địa chỉ</p>
                                <input name="txt3" value="${detail.dchi}" type="text" class="ip">                               
                            </div>
                            <div class="modal-footer">
                                <button  class="btn2" id="luu" type="submit"><i class="ti-plus"> Lưu</i> </button>                             
                            </div>
                        </form>                                          
                    </div>
                </div>
        </div>         