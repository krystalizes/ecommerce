<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đăng kí</title>
    <style>
     <%@ include file="/css/dk.css"%>
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
                <button class="btn">    <a class="b1" href="/WebApplication3/index/sale.jsp">SALES</a>         </button>
                <button class="btn">    <a class="b1" href="/WebApplication3/Trangchu">INSTAGRAM</a>      </button>
            </div>
        </nav>
                <div class="dk-dn1" >   <a href="/WebApplication3/index/dk.jsp">ĐĂNG KÍ </a>   </div>
            <div class="dk-dn2"> <a href="/WebApplication3/Login">ĐĂNG NHẬP </a> </div>
        </div>
    </div>
    <div class="dangky">
        <form action="/WebApplication3/Signup" method="post">         
            <input class="user" type="text" id="user" name="user" placeholder="Username"><br><br>       
            <input class="pass" type="password" id="pass" name="pass" placeholder="Password"><br><br>
            <input class="repass" type="password" id="repass" name="repass" placeholder="Viết lại Password"><br><br>
            <button class="btn1" type="submit" >Đăng kí</button>
            <br><br>
            <button class="btn1" type="button"> <a href="/WebApplication3/Login">Đã có tài khoản? Đăng nhập</a></button>
          </form>
    </div>
</body>
</html>