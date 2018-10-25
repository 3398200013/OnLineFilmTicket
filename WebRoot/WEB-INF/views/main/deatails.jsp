<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%> 
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'deatails.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" type="text/css" href="css/ppt.css" />
<link rel="stylesheet" type="text/css" href="fonts/iconfont.css">
<link rel="stylesheet" type="text/css" href="css/deatails.css" />
<meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
<meta content="width=device-width; initial-scale=1; maximum-scale=1"
	name="viewport">
<meta content="Washington Botelho" name="author">
<meta content="jQuery Raty - A Star Rating Plugin" name="description">
<meta
	content="jquery,plugin,rating,raty,voto,star,staring,classificacao,classificar,votar,plugin"
	name="keywords">

</head>
<jsp:include page="head.jsp"></jsp:include>
<body>
	<div class="lunbo lunbo1">
		<div class="ppt_stage">
			<div class="ppt_bg_1">
				<div class="ppt_text_1">
					<p>${movie.type}</p>
					<p>${movie.area }/${movie.length }分钟</p>
					<p><fmt:formatDate value="${movie.bgdate}" pattern="yyyy-MM-dd"/> 大陆上映</p>
				</div>
			</div>
			<div class="ppt_module_1">
				<img class="ppt_movie"
					src="${movie.cover }" />
				<h1>${movie.mname }</h1>
				<h2 style="display:none">Contratiempo</h2>
				<div class="ppt_text_2">
					<p>用户评分</p>
					<h3>
						<span id="movie_score">${movie.score}</span> <img
							class="icon_star" src="img/icon_star.png"
							style="width:150px;hright:32px;" />
						<div id="icon_star_r">
							<img src="img/icon_star_r.png" style="width:150px;hright:32px;" />
						</div>
					</h3>
					<p class="people_score">2333人想看</p>
				</div>
			</div>
			<div class="ppt_module_2">
				<div id="ppt_buttons">
					<div id="button_hope">
						<i class="iconfont hope_write icon-taoxin1"></i>
						<p class="hope_write">想看</p>
					</div>
					<c:if test="${CommentState==0}">
						<a class="cd-popup-trigger">
							<div id="button_score">
								<span class="star"></span>
								<p id="score_text">评分</p>
							</div>
						</a>
					</c:if>
					<!-- <c:if test="${CommentState==3}">
						<a class="comment_yk">
							<div id="button_score">
								<span class="star"></span>
								<p id="score_text">评分</p>
							</div>
						</a>
					</c:if>
					<c:if test="${CommentState==1}">
						<a class="comment_end">
							<div id="button_score">
								<span class="star"></span>
								<p id="score_text">已评分</p>
							</div>
						</a>
					</c:if> -->
					

					<c:if test="${movie.state==1}">
						<a href="<%=basePath%>SelectCinemaSvl?mid=${movie.mid}"><div
								class="button_buy">立即购票</div></a>
					</c:if>
				</div>
				<div class="ppt_text_3">
					<h1>累计票房</h1>
					<h2>${movie.sealnum/100000000}亿</h2>
				</div>
			</div>
		</div>
	</div>
	<div class="cd-popup" role="alert">

		<form target="nm_iframe"
			action="<%=basePath%>CommentSvl?mid=${movie.mid}" method="post"
			id="commentsform" class="cd-popup-container">
			<p>评分</p>
			<div id="star"></div>
			<!--<input type="hidden" name="score"  value="" />-->
			<textarea rows="5" cols="50" name="comments" maxlength="100"
				placeholder="请写一段短评,最多100字..." required></textarea>
			<ul class="cd-buttons">
				<li><a class="remove" id="upcomments">提交</a></li>
				<li><a class="remove">取消</a></li>
			</ul>

			<a href="#0" class="cd-popup-close img-replace">Close</a>
		</form>
		<!-- 打开到一个空的iframe,并在其中提交数据,实现页面不刷新提交数据 -->
		<iframe id="id_iframe" name="nm_iframe" style="display:none;"></iframe>
	</div>



	<div class="main_box">
		<div class="deatails_box plot">
			<div class="plot_title">剧情介绍</div>
			<div class="plot_content">${movie.details}</div>
		</div>
		<div class="deatails_box actor">
			<div class="actor_title">演职人员</div>
			<div class="more">
				更多 <i class="iconfont icon-svg02"></i>
			</div>
			<div class="actor_content">
				<div class="actors">
					<img src="img/actor1.png" />
					<h1>奥利奥尔.保罗</h1>
					<h2>
						饰：<span class="actorby"></span>
					</h2>
				</div>
				<div class="actors">
					<img src="img/actor2.png" />
					<h1>马里奥.卡萨斯</h1>
					<h2>
						饰：<span class="actorby">Adrián Doria</span>
					</h2>
				</div>
				<div class="actors">
					<img src="img/actor3.png" />
					<h1>AnaWagener</h1>
					<h2>
						饰：<span class="actorby">Virginia Goodman</span>
					</h2>
				</div>
				<div class="actors">
					<img src="img/actor4.png" />
					<h1>何塞.拉罗那多</h1>
					<h2>
						饰：<span class="actorby">Tomás Garrido</span>
					</h2>
				</div>
				<div class="actors">
					<img src="img/actor5.png" />
					<h1>芭芭拉.蓝妮</h1>
					<h2>
						饰：<span class="actorby">Laura Vidal</span>
					</h2>
				</div>
			</div>
		</div>
		<div class="deatails_box comments">
			<div class="comments_title">热门短评</div>
			<div id="talk_about">发表评论</div>
			<ul class="comments_content">
				<c:forEach var="comments" items="${comments}">
					<li class="comments_li">
						<div class="users">
							<div class="user_pic">
								<img src="img/hj.jpg" />
							</div>
							<div class="user_name">阿三</div>
							<!--  -->
							<div class="uesr_comments_time">2018.1.1</div>
							<div class="uesr_score">1.0分</div>
						</div>
						<div class="users_comments_content">我也不知道好不好看</div>
					</li>
				</c:forEach>
			</ul>
		</div>
	</div>

	<!--版权-->
	<div class="fotter">
		<p>©2018 中软电影 icss.com 京ICP证166666号 京ICP备1666666号-1 京公网安备 1101号
			网络文化经营许可证</p>
	</div>
	<script src="js/jquery-1.11.0.min.js" type="text/javascript"
		charset="utf-8"></script>
	<script type="text/javascript" src="js/jquery.raty.js"></script>
	<script src="js/modernizr.js" type="text/javascript" charset="utf-8"></script>
	<script>
		var ppt_left = document.getElementsByClassName("lunbo")[0].offsetLeft;
		var ppt_top = document.getElementsByClassName("lunbo")[0].offsetTop;
		var camera_left;
		var index = 0;
		// 3D组件
		// mouseenter
		$(".lunbo").mouseenter(function(e) {
			
		})
		$(".lunbo").mousemove(function(e) {
			check(e);
		})
	
		$(".lunbo").mouseleave(function(e) {
			$(".ppt_bg_1").css("transform", "translateX(" + 0 + "px)translateY(" + 0 + "px)");
			$(".ppt_module_1").css("transform", "translateX(" + 0 + "px)translateY(" + 0 + "px)");
			$(".ppt_module_2").css("transform", "translateX(" + 0 + "px)translateY(" + 0 + "px)");
			$(".ppt_stage").css("transform", "rotateX(" + 0 + "deg)rotateY(" + 0 + "deg)");
		})
	
		function check(e) {
			var a = e ? e : window.event;
			var x_mid = ppt_left + 610 - e.clientX;
			var y_mid = ppt_top + 250 - e.clientY;
			$(".ppt_bg_1").css("transform", "translateX(" + x_mid * 0.012 + "px)translateY(" + y_mid * 0.011 + "px)");
			$(".ppt_module_1").css("transform", "translateX(" + x_mid * 0.015 + "px)translateY(" + y_mid * 0.015 + "px)");
			$(".ppt_module_2").css("transform", "translateX(" + x_mid * 0.005 + "px)translateY(" + y_mid * 0.005 + "px)");
			$(".ppt_stage").css("transform", "rotateX(" + (y_mid / 500 * 12) + "deg)rotateY(" + -x_mid / 1220 * 12 + "deg)");
		}
	
		//电影评分
		var movie_score = document.getElementById("movie_score").innerHTML;
		var movie_star = document.getElementById("icon_star_r");
		movie_star.style.width = 15 * movie_score + "px";
	
		//actorBy
		var actorby = document.getElementsByClassName("actorby");
		for (i = 0; i < actorby.length; i++) {
			if (actorby[i].innerHTML == '') {
				actorby[i].parentNode.style.display = "none";
			}
		}
		//more
		var more = document.getElementsByClassName("more");
		for (var i = 0; i < more.length; i++) {
			more[i].onclick = (function(i) {
				return function() {
					var x = i + 1
					alert("more:" + x)
				}
			})(i);
		}
	
	
	
		//talk about cd-popup-trigger comment_end
		var talk_about = document.getElementById("talk_about");
		talk_about.onclick = function() {
			var star_button = document.getElementsByClassName("cd-popup-trigger")[0];
			if (star_button != undefined) {
				star_button.click();
			} else {
				alert("您已经评分,不能重复评分");
			}
		}
		//弹窗 upcomments score_text cd-popup-trigger
		var button_hope = document.getElementById("button_hope");
		var button_score = document.getElementById("button_score");
		var upcomments = document.getElementById("upcomments");
		var commentsform = document.getElementById("commentsform");
		var score_text = document.getElementById("score_text");
		var comment_end = document.getElementsByClassName("comment_end")[0];
		var comment_yk = document.getElementsByClassName("comment_yk")[0];
		button_hope.onclick = function() {
			var hope_write = button_hope.getElementsByClassName("hope_write");
			var hope_red = button_hope.getElementsByClassName("hope_red");
			if (hope_write.length > 0) {
				hope_write[0].className = "iconfont hope_red icon-taoxin1";
				hope_write[0].innerHTML = "已想看";
				hope_write[0].className = "hope_red";
			} else {
				hope_red[0].className = "iconfont hope_write icon-taoxin1";
				hope_red[0].innerHTML = "想看";
				hope_red[0].className = "hope_write";
			}
		}
		upcomments.onclick = function() {
			commentsform.submit();
			score_text.innerHTML = "已评分";
			var star_button = document.getElementsByClassName("cd-popup-trigger")[0];
			star_button.className = "comment_end";
		}
		if (comment_end != undefined) {
			comment_end.onclick = function() {
				alert("您已经评分,不能重复评分");
			}
		}
		if (comment_yk != undefined) {
			comment_yk.onclick = function() {
				alert("游客不能评分");
			}
		}
		$('#star').raty({
	
		});
	
		//open popup
		$('.cd-popup-trigger').on('click', function(event) {
			var star_button = document.getElementsByClassName("cd-popup-trigger")[0];
			if (star_button != undefined) {
				event.preventDefault();
				$('.cd-popup').addClass('is-visible');
			} else {
				alert("您已经评分,不能重复评分");
			}
		});
	
	
		//close popup
		$('.cd-popup').on('click', function(event) {
			if ($(event.target).is('.cd-popup-close') || $(event.target).is('.cd-popup')) {
				event.preventDefault();
				$(this).removeClass('is-visible');
			}
			if ($(event.target).is('.remove') || $(event.target).is('.cd-popup')) {
				event.preventDefault();
				$(this).removeClass('is-visible');
			}
		});
		//close popup when clicking the esc keyboard button
		$(document).keyup(function(event) {
			if (event.which == '27') {
				$('.cd-popup').removeClass('is-visible');
			}
		});
	</script>
</body>
</html>
