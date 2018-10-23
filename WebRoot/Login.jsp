<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Login.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="shortcut icon" href="img/logo.ico" />
<link rel="stylesheet" type="text/css" href="fonts/iconfont.css" />
<link rel="stylesheet" type="text/css" href="css/login.css" />
<script type="text/javascript">



		function unameValid(){         
	    var regname = $('#regname').val();
	    var destURL = "UserVaildSvl?regname=" + regname;
	    $.ajax({
				type: "get",
				url: destURL,
				success: function(msg){     			
		          var span = document.getElementById("userspan");
		          if(msg == 1){
		             span.innerHTML = " ";
		          }else{
		             span.innerHTML = "你输入的用户名已存在，请重新输入";
		             $('.user_hint').html("×").css("color","red");
		             user_Boolean = false;
		          } 
				}
		  });  
	
		}	
	</script>
  </head>
  
 
<body>
	<div id="panel">
		<div class="fromImg">
			<img src="img/logo.png" />
			<p id="title">用户登录</p>
		</div>
		<span id="userspan"></span>
		<div class="login_regis" id="login_regis">
			<div class="inputLable">
				<form action="login" id="dlform" method="post">
					<input type="text" name="uname" id="uname" value=""
						placeholder="请输入用户名" /> <input type="password" name="upwd"
						id="upwd" value="" placeholder="请输入密码" />
					<h2 class="getNew" onclick="changeLeft(-350)">申请账号</h2>
					<a href="javascript:void(0);" class="forget">忘记密码?</a>
					<div class="sub">
						<input type="button" name="" id="" value="登录"
							onclick="verification()" />
					</div>
				</form>
			</div>
			<div class="registered">
				<form action="" id="zcform" method="post">
					<ul class="reg_ul">
						<li><span class="spanOne">用户名:</span> <input type="text"
							name="regname" value="" placeholder="4-12位用户名(小写字母)"
							class="reg_user" id="regname" onblur="unameValid()"> <span
							class="user_hint"></span></li>
						<li><span class="spanTwo">密码:</span> <input type="password"
							name="regpwd" value="" placeholder="6-16位密码" class="reg_password">
							<span class="password_hint"></span></li>
						<li><span class="spanThree">确认密码:</span> <input
							type="password" name="" value="" placeholder="确认密码"
							class="reg_confirm"> <span class="confirm_hint"></span></li>
						<li><span class="spanFour">手机号： </span> <input type="email"
							name="regphone" value="" placeholder="手机号" class="reg_mobile">
							<span class="mobile_hint"></span></li>
						<a onclick="changeLeft(0)">以有账号直接登录</a>
						<li>
							<button type="button" name="button" class="red_button">注册</button>
						</li>
					</ul>
				</form>
			</div>
		</div>

	</div>

	<script type="text/javascript"
		src="js/jquery-1.11.0.min.js"></script>
	<script type="text/javascript" src="js/JavaScript.js"></script>
	<script type="text/javascript" src="js/login.js"></script>
	<script type="text/javascript">
	$(function(){
	var a = getParam("zhuce");
	if(a == 'a'){
	changeLeft(-350);
	}
	

	
	});
			var x = document.documentElement.clientHeight;
			var y = document.getElementById("panel");
			document.body.style.height = x + "px";
			y.style.top = (x-y.offsetHeight)/2 + "px";
			
	    //截取url数据方法
    var getParam = function (name) {
        var search = document.location.search;
        //alert(search);
        var pattern = new RegExp("[?&]" + name + "\=([^&]+)", "g");
        var matcher = pattern.exec(search);
        var items = null;
        if (null != matcher) {
            try {
                items = decodeURIComponent(decodeURIComponent(matcher[1]));
            } catch (e) {
                try {
                    items = decodeURIComponent(matcher[1]);
                } catch (e) {
                    items = matcher[1];
                }
            }
        }
        return items;
    };
		</script>
</body>
</html>