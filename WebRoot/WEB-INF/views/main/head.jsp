<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'head.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="shortcut icon" href="img/logo.ico" />
<link rel="stylesheet" type="text/css" href="css/common.css" />
<link rel="stylesheet" type="text/css" href="css/styleshowlist.css" />
<link rel="stylesheet" type="text/css" href="fonts/iconfont.css" />
<link rel="stylesheet" type="text/css" href="css/picstyle.css" />
<script type="text/javascript" src="js/login.js"></script>
<script type="text/javascript" src="js/cityAZ.js"></script>
<script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="js/JavaScript.js"></script>
<script type="text/javascript">


$(function(){
	showCitys();
	 optionAdd.onclick = function (e) {
	 var optionAdd = document.getElementById("optionAdd");
    var optionAdd = optionAdd.querySelectorAll('a');
    var e = e || window.event;
    var target = e.target || e.srcElement;
    if (target && target.nodeName == 'A') {
    var cityP = document.getElementById("cityP");
        cityP.innerText = target.innerText;
    }
   
} 
});

/*显示城市的具体方法*/
function showCitys() {
var optionAdd = document.getElementById("optionAdd");
	//alert(cityAll.length);
   for(var i =0; i < cityAll.length; i++){
   		var citysLen = cityAll[i].citys.length;
   		 var ul = document.createElement('ul');
   		 var span = document.createElement('span');
   		 span.innerText = cityAll[i].name;
   		 //alert(span.innerText);
   		 ul.appendChild(span);
   		
   		 for(var j = 0; j < citysLen; j++){
   		    
   		 	 var aCity = document.createElement('a');
   		 	 var li = document.createElement('li');
   		 	 aCity.innerText = cityAll[i].citys[j];
   		 	  //alert(aCity.innerText);
   		 	 li.appendChild(aCity);
   		 	 ul.appendChild(li);
   		 }
   		optionAdd.appendChild(ul);
   }

}

	function unameValid() {
		var regname = $('#changename').val();
		var span = document.getElementById("examinuname");
		var destURL = "UserVaildSvl?regname=" + regname;
		var changeunameURL = "ChangeInformationSvl?yuaname=${user.uname}&regname=" + regname;
		changeuname(destURL, changeunameURL);
	}
	function balanceValid() {
		var balance = $('.balancePay').val();
		var changebalanceURl = "ChangeBalanceSvl?name=${user.uname}&balance=" + balance;
		paymoney(changebalanceURl);
	}
	function changetxt() {
		var txt = $('.textareatxt').val();
		var changetxtURL = "ChangeTxtSvl?name=${user.uname}&txt=" + txt;
		$.ajax({
			type : "get",
			url : changetxtURL,
			success : function(msg) {
				if (msg == 1) {
					$('.usertxtshow').html(txt);
					alert("修改成功");
					$('#dialogBg').fadeOut(10, function() {
						$('#tochangetxt').addClass('bounceOutUp').fadeOut();
					});
					$('.textareatxt').val("");
				} else {
					alert("修改失败");
					return false;
				}
			}
		});
	}
</script>

</head>

<body>
	<!--头部nav设置-->
	<div class="nav">
		<div class="nav_left">
		<c:if test="${user==null}">
			<div class="nav_left_title">
				
					<a href="<%=basePath%>Login.jsp">登录</a>
					<span>|</span>
					<a href="<%=basePath%>Login.jsp?zhuce=a">注册</a>
				
				<!-- <c:if test="${user!=null}">
					<div class="userPic">
						<img src="UserPicSvl?uname=${user.uname}" />
					</div>
					<p id="usernameOne">${user.uname}</p>
				</c:if> -->
			</div>
			</c:if>
			<div class="selectAdd" style="width: 130px" align="center">
				<p>
					<span class="iconfont">&#xe632;</span>
					<a id='cityP'>北京</a>
					<span class="arrow iconfont">&#xe625;</span>
				</p>
				
				<div class="optionAddBox" >
					<div class="triangle"></div>
					<div class="optionAdd" id="optionAdd">
					
					
					
					
					</div>
				</div>
			</div>
		</div>
		<div class="nav_right">
			<div class="customer selectAdd">
				<p>
					联系客服<span class="arrow iconfont">&#xe625;</span>
				</p>
				<div class="customerAdd">
					<div class="customerTriangle"></div>
					<div class="customerBox">
						<div class="customerBoxTxt">
							<h3>客服：金角大王</h3>
							<p>
								<span class="iconfont">&#xe60d;</span>13615821456
							</p>
							<p>
								<span class="iconfont">&#xe658;</span>328675854
							</p>
							<p>
								<span class="iconfont">&#xe63b;</span>13615821456
							</p>
						</div>
					</div>
				</div>
			</div>
		<c:if test="${user!=null}">
				<div class="myOrder selectAdd">
					<p>
						修改信息<span class="arrow iconfont">&#xe625;</span>
					</p>
					<div class="myOrderAdd">
						<div class="triangle"></div>
						<div class="myOrderBox">
							<div class="myOrderAdd">
								<div class="triangle"></div>
								<div class="myOrderBox">
									<div id="wrapper">
										<div class="box">
											<div class="demo">
												<a class="bounceIn changeuname">更改用户名</a> <a
													class="bounceIn changepwd">更改密码</a> <a
													class="bounceIn changeimg">更改头像</a> <a
													class="bounceIn changeusertxt">更改个性签名</a> <a
													class="bounceIn changebalance">充值</a>
											</div>

											<div id="dialogBg"></div>
											<div id="tochangename" class="animated">
												<img class="dialogIco" width="50" height="50"
													src="img/ico.png" alt="" />
												<div class="dialogTop">
													<a class="claseDialogBtn">取消</a>
												</div>
												<form action="" method="post" id="editForm"
													onkeydown="if(event.keyCode==13){return false;}">
													<ul class="editInfos">
														<li><label><font color="#ff0000">修改用户名*
															</font><input type="text" name="changename"
																placeholder="用户名必须4-12位" value="" class="ipt changename"
																id="changename" onclick="quxiao()" /></label></li>
														<li><input type="button" value="检测该用户名是否可用"
															id="examinuname" class="submitBtn" onclick="unameValid()" /></li>
													</ul>
												</form>
											</div>
											<div id="tochangepwd" class="animated">
												<img class="dialogIco" width="50" height="50"
													src="img/ico.png" alt="" />
												<div class="dialogTop">
													<a href="javascript:;" class="claseDialogBtn">取消</a>
												</div>
												<form action="ChangeinfoSvl?user=${user.uname}"
													method="post" id="editForm" class="changepwdform">
													<ul class="editInfos">
														<li><label> <font color="#ff0000">修改密码*
															</font> <input type="password" placeholder="确认密码" name="pwdtxt"
																value="" class="ipt changepwdtxt" /> <span
																class="password_hint"></span>
														</label></li>
														<li><label><font color="#ff0000">确认密码*
															</font><input type="password" placeholder="确认密码" value=""
																class="ipt changepwdtxtcon" /><span
																class="confirm_hint"></span></label></li>
														<li><input type="button" value="确认修改"
															class="submitBtn" id="changepwdbtn" /></li>
													</ul>
												</form>
											</div>
											<div id="tochangeimg" class="animated">
												<img class="dialogIco" width="50" height="50"
													src="img/ico.png" alt="" />
												<div class="dialogTop">
													<a href="javascript:;" class="claseDialogBtn">取消</a>
												</div>
												<form action="" method="post" id="editForm">
													<ul class="editInfos">
														<li><label><font color="#ff0000">修改头像*
															</font><input type="password" name="" required value=""
																class="ipt" /></label></li>
														<li><input type="button" value="提交" class="submitBtn" /></li>
													</ul>
												</form>
											</div>
											<div id="tochangetxt" class="animated">
												<img class="dialogIco" width="50" height="50"
													src="img/ico.png" alt="" />
												<div class="dialogTop">
													<a href="javascript:;" class="claseDialogBtn">取消</a>
												</div>
												<form action="" method="post" id="editForm">
													<ul class="editInfos">
														<li><label><font color="#ff0000">输入你的个性签名*
															</font> <textarea
																	style="margin-right: 0px;margin-top:10px;margin-bottom:10px;resize:none;color:#666;font-size:14px;"
																	name="usertxt" placeholder="我有一个梦想..." rows="5"
																	cols="40%" class="ipt textareatxt" value=""></textarea></label></li>
														<li><input type="button" value="确认" class="submitBtn"
															onclick="changetxt()" /></li>
													</ul>
												</form>
											</div>
											<div id="tochangebalance" class="animated">
												<img class="dialogIco" width="50" height="50"
													src="img/ico.png" alt="" />
												<div class="dialogTop">
													<a href="javascript:;" class="claseDialogBtn">取消</a>
												</div>
												<form action="" method="post" id="editForm">
													<ul class="editInfos">
														<li><label><font color="#ff0000"
																style="later-space:2px">请输入要充值的金额* </font><input
																placeholder="金额必须为整数" type="text" name="" value=""
																class="ipt balancePay" /></label></li>
														<li><input type="button" value="确认支付"
															class="submitBtn" id="topay" onclick="balanceValid()" /></li>
													</ul>
												</form>
											</div>
										</div>

									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="myIntegral selectAdd">
					<p>
						我的信息<span class="arrow iconfont">&#xe625;</span>
					</p>
					<div class="myIntegralAdd">
						<div class="triangle"></div>
						<div class="myIntegralBox">
							<div class="myIntegralBoxPage">
								<div class="textBox">
									<h3 id="usernameTwo">${user.uname}</h3>
									
									<p>
										绑定手机 : <span>${user.tel}</span>
									</p>
									<p>
										账户余额 : <span class="userbalanceshow" id="userbalanceshow">${user.balance}</span>
									</p>
									<h5>
										个性签名 : <span class="usertxtshow">${user.usertxt}</span>
									</h5>
								</div>
								<div class="imageBox">
									<img src="img/logo.png" />
								</div>
								<a href="LogoutSvl?url=MainSvl">退出登录</a> <a
									href="LogoutSvl?url=LoginSvl" id="logout"></a>
							</div>
						</div>
					</div>
				</div>
			</c:if>
		</div>
	</div>

	<script type="text/javascript">
		var span = document.getElementById("examinuname");
		var w,
			h,
			className;
		function getSrceenWH() {
			w = $(window).width();
			h = $(window).height();
			$('#dialogBg').width(w).height(h);
		}
	
		window.onresize = function() {
			getSrceenWH();
		}
		$(window).resize();
	
		$(function() {
			getSrceenWH();
	
			$('.changeuname').click(function() {
				className = $(this).attr('class');
				$('#dialogBg').fadeIn(10);
				$('#tochangename').removeAttr('class').addClass('animated ' + className + '').fadeIn();
			});
			$('.changepwd').click(function() {
				className = $(this).attr('class');
				$('#dialogBg').fadeIn(10);
				$('#tochangepwd').removeAttr('class').addClass('animated ' + className + '').fadeIn();
			});
			$('.changeimg').click(function() {
				className = $(this).attr('class');
				$('#dialogBg').fadeIn(10);
				$('#tochangeimg').removeAttr('class').addClass('animated ' + className + '').fadeIn();
			});
			$('.changeusertxt').click(function() {
				className = $(this).attr('class');
				$('#dialogBg').fadeIn(10);
				$('#tochangetxt').removeAttr('class').addClass('animated ' + className + '').fadeIn();
			});
			$('.changebalance').click(function() {
				className = $(this).attr('class');
				$('#dialogBg').fadeIn(10);
				$('#tochangebalance').removeAttr('class').addClass('animated ' + className + '').fadeIn();
			});
			$('.claseDialogBtn').click(function() {
				$('#dialogBg').fadeOut(10, function() {
					$('#tochangename').addClass('bounceOutUp').fadeOut();
					document.getElementById("changename").value = "";
					span.value = "检测该用户名是否可用"
				});
			});
			$('.claseDialogBtn').click(function() {
				$('#dialogBg').fadeOut(10, function() {
					$('#tochangepwd').addClass('bounceOutUp').fadeOut();
					document.getElementById("changename").value = "";
				});
			});
			$('.claseDialogBtn').click(function() {
				$('#dialogBg').fadeOut(10, function() {
					$('#tochangeimg').addClass('bounceOutUp').fadeOut();
					document.getElementById("changename").value = "";
				});
			});
			$('.claseDialogBtn').click(function() {
				$('#dialogBg').fadeOut(10, function() {
					$('#tochangetxt').addClass('bounceOutUp').fadeOut()
					$(".textareatxt").val("");
				});
			});
			$('.claseDialogBtn').click(function() {
				$('#dialogBg').fadeOut(10, function() {
					$('#tochangebalance').addClass('bounceOutUp').fadeOut();
					$(".balancePay").val("");
				});
			});
		});
	</script>
</body>
</html>
