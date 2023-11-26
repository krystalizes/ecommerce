<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đăng nhập</title>
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
                <button class="btn">    <a class="b1" href="/WebApplication3/Accessories">ACCESSORY</a>    </button>
            </div>
        </nav>       
    </div>
    <div class="dangky">
        <form action="/WebApplication3/Login" method="post">         
            <input class="user" type="text" id="user" name="user" placeholder="Username"><br><br>
            <input class="pass" type="password" id="pass" name="pass" placeholder="Password"><br><br>
            <!--<p class="alert-text">${tinnhan}</p>-->

            <button class="btn1" type="submit" >Đăng nhập</button>
            <br><br>
            <button class="btn1" type="button"> <a href="/WebApplication3/index/dk.jsp">Chưa có tài khoản? Đăng kí</a></button>
          </form>
    </div>
</body>
</html>