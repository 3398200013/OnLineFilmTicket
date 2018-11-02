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


<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<title>选择影院</title>
<link rel="stylesheet" type="text/css" href="css/ppt.css" />
<link rel="stylesheet" type="text/css" href="fonts/iconfont.css">
<link rel="stylesheet" type="text/css" href="css/selectCinema.css" />
<link rel="stylesheet" type="text/css" href="css/style.css" />

</head>

<body>
	<jsp:include page="head.jsp"></jsp:include>
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
							class="icon_star" src="img/icon_star.png"  style="width:150px;hright:32px;"/>
						<div id="icon_star_r">
							<img src="img/icon_star_r.png"  style="width:150px;hright:32px;"/>
						</div>
					</h3>
					<p class="people_score">1111 人想看</p>
				</div>
			</div>
			<div class="ppt_module_2">
				<div id="ppt_buttons">
					<div id="button_hope">
						<i class="iconfont hope_write icon-taoxin1"></i>
						<p class="hope_write">想看</p>
					</div>
						<a class="cd-popup-trigger">
							<div id="button_score">
								<span class="star"></span>
								<p id="score_text">评分</p>
							</div>
						</a>
						<!-- <a class="comment_end">
						<div id="button_score">
								<span class="star"></span>
								<p id="score_text">已评分</p>
							</div>
						</a> -->
						
					
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
		<div class="selevt_first_tit">选择影院</div>
		<div class="select_table select_area">
			<div class="select_tit select_area_tit">选择区域</div>
			<ul class="select_list select_area_list">
				<li class="alldistincts area_action">全部区域</li>
					<li id="area_1">北京</li>
					<li id="area_2">天津</li>
					<li id="area_3">上海</li>
					<li id="area_4">广州</li>
					<li id="area_5">成都</li>
					<li id="area_6">重庆</li>
					<li id="area_7">杭州</li>
			</ul>
		</div>
		
		<div class="select_table select_cinema_name">
			<div class="select_tit select_cinema_name_tit">选择影院</div>
			<ul class="select_list select_cinema_name_list">
				<!-- 默认加载全部电影院 -->
			<!-- 	<c:forEach end="0" var="tCinemas" items="${tCinemas}">
					<li class="cinema_action" id="cinema_${tCinemas.cid}">${tCinemas.cname}</li>
				</c:forEach> -->
				<!-- <c:forEach begin="1" var="tCinemas" items="${tCinemas}">
					<li id="cinema_${tCinemas.cid}">${tCinemas.cname}</li>
				</c:forEach> -->
				<li class="cinema_action" id="cinema_1">海天盛筵1</li>
				<li id="cinema_2">海天盛筵2</li>
				<li id="cinema_3">海天盛筵3</li>
				<li id="cinema_4">海天盛筵4</li>
				<li id="cinema_5">海天盛筵5</li>
			</ul>
			<span class="more"> 更多 <i class="iconfont icon-svg02"></i>
			</span>
		</div>
		<div class="select_table select_time">
			<div class="select_tit select_time_tit">选择时间</div>
			<ul class="select_list select_time_list">
				<li class="time_action">
					<span class="get_date"></span>
					<div>今天</div>
				</li>
				<li>
					<span class="get_date"></span>
					<div>明天</div>
				</li>
			</ul>
		</div>

		<table class="movie_table" border="0px">
			<tr>
				<td>放映时间</td>
				<td>预计结束时间</td>
				<td>语言版本</td>
				<td>放映厅</td>
				<td>价格</td>
				<td>选座购票</td>
			</tr>
			<tr>
				<td>15:30</td>
				<td>17:30</td>
				<td>国语2D</td>
				<td>4号厅</td>
				<td>39.10</td>
				<td><a href="javascript:;" style="padding:10px;padding-left:20px;padding-right:20px; background: red;">选座购票</a></td>
			</tr>
			<tr>
				<td>15:30</td>
				<td>17:30</td>
				<td>国语2D</td>
				<td>4号厅</td>
				<td>39.10</td>
				<td><a href="javascript:;" style="padding:10px;padding-left:20px;padding-right:20px; background: red;">选座购票</a></td>
			</tr>
		</table>
		<a href="" id="To_Select_Seat" style="display=none"></a>

	</div>

	<!--版权-->
	<div class="fotter">
		<p>©2016 中软电影 icss.com 京ICP证166666号 京ICP备1666666号-1 京公网安备 1101号 网络文化经营许可证</p>
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
	
		//select time
		var li_time = document.getElementsByClassName("get_date");
		for (var i = 0; i < li_time.length; i++) {
			li_time[i].innerHTML = getNowFormatDate(i);
		}
	
		function getNowFormatDate(i) {
			var date = new Date();
			var seperator1 = "-";
			var month = date.getMonth() + 1;
			var strDateNow = date.getDate();
			var strDate = strDateNow + i;
			if (month >= 1 && month <= 9) {
				month = "0" + month;
			}
			if (strDate >= 0 && strDate <= 9) {
				strDate = "0" + strDate;
			}
			var currentdate = date.getFullYear() + seperator1 + month + seperator1 + strDate;
			return currentdate;
		}
	
		//more
		var more = document.getElementsByClassName("more");
		for (var i = 0; i < more.length; i++) {
			more[i].onclick = (function(i) {
				return function() {
					document.getElementsByClassName("select_cinema_name_list")[0].style.height = "auto";
					more[i].style.display = "none";
					list2_height();
				}
			})(i);
		}
		//list
	
		var select_list_tit = document.getElementsByClassName("select_tit");
		var select_list_content = document.getElementsByClassName("select_list");
		for (var i = 0; i < select_list_tit.length; i++) {
			if (i == 1) {
				list2_height();
			} else {
				select_list_tit[i].style.paddingTop = select_list_content[i].clientHeight / 2 - 5 + "px";
				select_list_tit[i].style.paddingBottom = select_list_content[i].clientHeight / 2 - 5 + "px";
			}
	
		}
	
		function list2_height() {
			select_list_tit[1].style.paddingTop = select_list_content[1].clientHeight / 2 + 5 + "px";
			select_list_tit[1].style.paddingBottom = select_list_content[1].clientHeight / 2 + 5 + "px";
		}
		
			
		//弹窗 upcomments score_text cd-popup-trigger
		var button_hope = document.getElementById("button_hope");
		var button_score = document.getElementById("button_score");
		var upcomments = document.getElementById("upcomments");
		var commentsform = document.getElementById("commentsform");
		var score_text = document.getElementById("score_text");
		var comment_end = document.getElementsByClassName("comment_end")[0];
	
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
		
		//三联加载
			var select_area_list = document.getElementsByClassName("select_area_list")[0];
			var area_li = select_area_list.getElementsByTagName("li");
			var all_cinema = document.getElementsByClassName("select_cinema_name_list")[0].innerHTML; //缓存全部电影的信息
			var area_id;			//缓存地区ID
			var cinema_cache = 6;	//缓存影院ID
			var cinema_name = "海天盛宴影院";  //缓存影院名字
			var data_cache = 0;		//缓存时间状态码
			/*
			 * 地区选择 --------------------------------------------------------------------------------------------------------
			 */
			for(var i = 0; i < area_li.length; i++) {
				area_li[i].onclick = (function(i) {
					return function() {
						var action = document.getElementsByClassName("area_action")[0];
						if(action.className == "alldistincts area_action"){
							action.className = "alldistincts";				
						}else{
							action.className = "";
						}
						if(i == 0) {
							area_li[i].className = "alldistincts area_action";
							document.getElementsByClassName("select_cinema_name_list")[0].innerHTML = all_cinema;
							
						} else {
							area_li[i].className = "area_action";
							area_id = area_li[i].id.substr(5);
							var destURL = "<%=basePath%>SelectCinemaListSvl?dno=" + area_id;
							onload_cinema(destURL);
						}
						setTimeout(function() {
							list2_height();
						}, 100);
					}
				})(i);
			}
			
			/*
			 * 影院加载AJAX --------------------------------------------------------------------------------------------------------
			 */
			var onload_cinema = function(destURL) {
				$.ajax({
					type: "get",
					url: destURL,
					success: function(data) {
						if(data.length >= 1) {
							var obj = eval(data);
							$(".select_cinema_name_list").empty();
							$(obj).each(function(i) {
								if( i == 0){
									var html_li = "<li onclick='re_load(" + i + ")' class='cinema_action' id=cinema_" + obj[i].cid + ">" + obj[i].cname + "</li>";
									cinema_name = obj[i].cname;
								}else{
									var html_li = "<li onclick='re_load(" + i + ")' id=cinema_" + obj[i].cid + ">" + obj[i].cname + "</li>";
								}
								
								$(html_li).appendTo(".select_cinema_name_list");
							});
							$(".movie_table").empty();
							if(obj.length > 0){
								var cinemaURL = "<%=basePath%>SelectMoiveListSvl?cid=" + obj[0].cid + "&mid=${movie.mid}&timestate="+ data_cache;
								cinema_cache = obj[0].cid; //缓存默认影院的cid
								onload_ronda(cinemaURL); //根据信息加载场次列表
							}
						}
					},
					// XMLHttpRequest 对象、错误信息、（可选）捕获的异常对象
					error: function(XMLHttpRequest, type, errorThrown) {
						//异常处理；
						console.log(type);
						alert("加载失败,请检查网络设置")
					}
				});

			}
			
			/*
			 * 影院选择 --------------------------------------------------------------------------------------------------------
			 * document.getElementsByClassName("select_cinema_name_list")[0].getElementsByTagName("li")
			 */
			 for(var i = 0; i < document.getElementsByClassName("select_cinema_name_list")[0].getElementsByTagName("li").length; i++) {
				document.getElementsByClassName("select_cinema_name_list")[0].getElementsByTagName("li")[i].onclick = (function(i) {
					return function() {
						re_load(i);
					}
				})(i);
			 }
			 
			function re_load(i){
				document.getElementsByClassName("cinema_action")[0].className = "";	
				document.getElementsByClassName("select_cinema_name_list")[0].getElementsByTagName("li")[i].className = "cinema_action";
				cinema_name = document.getElementsByClassName("select_cinema_name_list")[0].getElementsByTagName("li")[i].innerHTML;
				cinema_cache = document.getElementsByClassName("select_cinema_name_list")[0].getElementsByTagName("li")[i].id.substr(7);
				var cinemaURL = "<%=basePath%>SelectMoiveListSvl?cid=" + cinema_cache + "&mid=${movie.mid}&timestate="+ data_cache;
				$(".movie_table").empty();
				onload_ronda(cinemaURL); //根据信息加载场次列表
			}
			
			/*
			 * 时间选择 --------------------------------------------------------------------------------------------------------
			 */
			var select_time_list = document.getElementsByClassName("select_time_list")[0];
			var select_time_list_li = select_time_list.getElementsByTagName("li");
			for(var i = 0; i < select_time_list_li.length; i++) {
				select_time_list_li[i].onclick = (function(i) {
					return function() {
						document.getElementsByClassName("time_action")[0].className = "";	
						select_time_list_li[i].className = "time_action";
						if(i == 0){
							var cinemaURL = "<%=basePath%>SelectMoiveListSvl?cid=" + cinema_cache + "&mid=${movie.mid}&timestate=0";
							data_cache = 0;
						}else if(i == 1){
							var cinemaURL = "<%=basePath%>SelectMoiveListSvl?cid=" + cinema_cache + "&mid=${movie.mid}&timestate=1";
							data_cache = 1;
						}
						$(".movie_table").empty();
						onload_ronda(cinemaURL); //根据信息加载场次列表
					}
				})(i);
			}
			
			/*
			 * 场次加载AJAX --------------------------------------------------------------------------------------------------------
			 */
			var onload_ronda = function(cinemaURL) {
				$.ajax({
					type: "get",
					url: cinemaURL,
					success: function(data) {
						if(data.length >= 1) {
							var obj = eval(data);
							console.log(obj);
							$(obj).each(function(i) {
								if(i == 0){
									var html_table = "<tr><th>放映时间</th><th>语言版本</th><th>放映厅</th><th>座位情况</th><th>现价/影院价(元)</th><th>选座购票</th></tr><tr><td><h5>" + obj[i].begintime + "</h5><h2>预计" + obj[i].endtime + "散场</h2></td><td>" + obj[i].language + "</td><td>" + obj[i].hname + "</td><td>" + obj[i].state + "</td><td>" + obj[i].price + "</td><td onclick='Select_Seat("+ obj[i].aid + "," + obj[i].price + ",\"" + obj[i].begintime + "\",\"" + obj[i].language + "\"," + obj[i].hno + ",\"" + obj[i].hname +"\" )' class='buy_movie'>选座购票</td></tr>";
								}else{
									var html_table = "<tr><td><h5>" + obj[i].begintime + "</h5><h2>预计" + obj[i].endtime + "散场</h2></td><td>" + obj[i].language + "</td><td>" + obj[i].hname + "</td><td>" + obj[i].state + "</td><td>" + obj[i].price + "</td><td onclick='Select_Seat("+ obj[i].aid + "," + obj[i].price + ",\"" + obj[i].begintime + "\",\"" + obj[i].language + "\"," + obj[i].hno + ",\"" + obj[i].hname +"\")' class='buy_movie'>选座购票</td></tr>";
								}
								$(html_table).appendTo(".movie_table");
							});
						}
					},
					// XMLHttpRequest 对象、错误信息、（可选）捕获的异常对象
					error: function(XMLHttpRequest, type, errorThrown) {
						//异常处理；
						console.log(type);
						alert("加载失败,请检查网络设置")
					}
				});
			}
			function Select_Seat(aid,price,optime,language,hno,hname){
				var To_Select_Seat = document.getElementById("To_Select_Seat");
				// var seat_Url = "<%=basePath%>SelectSeat.jsp?aid=" + aid + "&mid=${movie.mid}&MovieName=" + "${movie.mname}" + "&MovieTime=" + ${movie.length}  + "&CinemaName=" + cinema_name + "&price=" + price + "&optime=" + optime + "&language=" + language + "&hno=" + hno + "&hname=" + hname;
				To_Select_Seat.href = seat_Url;
				To_Select_Seat.click();
			};
			
	</script>
</html>
