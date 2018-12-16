<%-- 
    Document   : register
    Created on : 2016-10-25, 19:07:48
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>注册</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<!-- Custom Theme files -->
<!--theme-style-->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />	
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Fashion Mania Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- start menu -->
<link href="css/memenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/memenu.js"></script>
<script>$(document).ready(function(){$(".memenu").memenu();});</script>
<script src="js/simpleCart.min.js"> </script>
<!-- slide -->
</head>
<body>
<!--header-->
<div class="header">
	<div class="header-top">
		<div class="container">
		<div class="col-sm-4 world">
				</div>
				<div class="col-sm-4 logo">
					<a href="index.jsp"><img src="images/logo1.jpg" width="70%" height="60%" alt=""></a>
				</div>
		
			<div class="col-sm-4 header-left">
                        
                        <p class="log">	
                        您好，买家。
                        </p>
					<div class="clearfix"> </div>
			</div>
				<div class="clearfix"> </div>
		</div>
		</div>
		
</div>
<div class="account">
	<div class="container">
		<div class="account_grid">
			   <div class="col-md-6 login-right">
                               <form method="post" action="/register/buyserRegister.do">
                                   <table>
                                       <tr><th><h2>注册</h2></th></tr>
                                        <tr>
                                            <td><span><label for="username">用户名</label></span> </td>
                                            <td><input autofocus id="username" name="username" type="text"/> </td>
                                        </tr>
                                        <tr>
                                            <td><span><label for="pass">密码</label></span> </td>
                                            <td><input id="pass" name="pass" type="password"/> </td>
                                        </tr>
                                        <tr>
                                            <td><span><label for="confirmPass">确认密码</label></span> </td>
                                            <td><input id="confirmPass" name="confirmPass" type="password"/> </td>
                                        </tr>
                                        <tr>
                                            <td><span><label for="name">真实名字</label></span></td>
                                            <td><input type="text" id="name" name="name"/></td>
                                        </tr>
                                        <tr>
                                            <td><span><label for="phone">手机号</label></span></td>
                                            <td><input type="text" id="phone" name="phone"/></td>
                                        </tr>
                                        <tr>
                                            <td><span><label for="address">地址</label></span></td>
                                            <td><input type="text" id="address" name="address"/></td>
                                        </tr>
                                        <tr>
                                            <td><span><label for="idcardNum">银行卡号</label></span></td>
                                            <td><input type="text" id="idcardNum" name="idcardNum"/></td>
                                        </tr>
                                        <tr>
                                            <td>
                                              <input type="submit" value="注册"/></td>
                                            <td><p style="color:red">*本平台仅支持快捷支付，请仔细核对银行卡号。</p></td>
                                        </tr>
                                        <tr>
                                            <td><input style="display: none" id="lastp" name="lastpage" type="text" value="${param.lastpage}"></td>
                                        </tr>
                                        <tr><!--输入密码两次不一致 显示错误信息-->
                                            <td><p style="color:red">${request.error}</p></td>
                                        </tr>
                                   </table>
			    </form>
			   </div>	
			 </div>
	</div>
    
</div>
<!--footer-->
<div class="footer">
    <div class="footer-bottom">
        <p class="footer-class">Copyright &copy; 2016.Company name 版权所有.</p>
    </div>

</div>
<!--//footer-->
</body>
</html>

