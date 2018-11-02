<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
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
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="css/ppt.css" />
<link rel="stylesheet" type="text/css" href="css/selectseat.css" />
<title>选择座位</title>

<link rel="stylesheet" type="text/css" href="css/style.css" />
	

  </head>
 <jsp:include page="head.jsp"></jsp:include>
<body>

	
	<div class="main_box">
		<div class="seat_tit">座位选择</div>
		<div class="seat_list">
			<div class="seat-tip">
				<span style="background-color: #0e9aef;" class="seat can_select"></span><span>可选座位</span>
				<span class="seat cant_select"></span><span>已售座位</span>
				<span class="seat selected"></span><span>已选座位</span>
				<span class="seat SeatOfDie"></span><span>被选座位</span>
			</div>
			<div class="screen"></div>
			<div class="screen_center">
				<span class="screens_name"> </span> 屏幕中央
			</div>
			<div class="seat_box">
				<ul id="y_shaft">
				
				</ul>
				<ul id="seats">
				</ul>
			</div>
		</div>
		<div class="order">
			<div class="order_tit">
				<img id="movie_pic" src="" />
				<h1 id="movie_name"></h1>
				<p>
					版本: <span id="movie_language"></span>
				</p>
				<p>
					片长: <span id="movie_time"></span>分钟
				</p>
			</div>
			<div class="order_context">
				<p>
					影院: <span id="cinema"></span>
				</p>
				<p>
					影厅: <span class="screens_name"></span>
				</p>
				<p>
					场次: <span id="movie_optime"></span>
				</p>
				<p>
					座位: <span id="select_seat"></span>
				</p>
			</div>
			<div class="order_price">
				<p>
					原价: <span id="price_original"></span>
				</p>
				<p>
					优惠后价格: <span id="price_sale"></span>
				</p>
				<p>
					总价: <span id="price_all"></span>
				</p>
			</div>
			<div class="order_determine">
				<h1>接收电子码的手机号：</h1>
				<span id="user_tel"> </span> <input type="button" name="payment"
					id="payment" value="确认下单" />
			</div>
		</div>
	</div>
	<a id="To_Select_Seat" style="display=none"></a>
	<div class="fotter">
		<p>©2016 中软电影 icss.com 京ICP证166666号 京ICP备1666666号-1 京公网安备 1101号
			网络文化经营许可证</p>
	</div>
	<script src="js/jquery-1.11.0.min.js" type="text/javascript"
		charset="utf-8"></script>
	<script type="text/javascript">
		
			var row; //行
			var col;
			var seat_row = 0; //行
			var seat_col = 0;
			var seats_count ;
			var state_arr = new Array();
			var data_length ;
			
			var movie_name = document.getElementById("movie_name");
			var movie_language = document.getElementById("movie_language");
			var cinema = document.getElementById("cinema");
			var screens_name = document.getElementsByClassName("screens_name");
			var movie_optime = document.getElementById("movie_optime");
			var price_original = document.getElementById("price_original");
			var price_sale = document.getElementById("price_sale");
			var user_tel = document.getElementById("user_tel");
			var movie_pic = document.getElementById("movie_pic");
			var movie_time = document.getElementById("movie_time");


			var shafty = document.getElementById("y_shaft");
			var seats = document.getElementById("seats");
			var ticket_num = 0;
			var create_shafty = function(ul, count) {
				var fragment = document.createDocumentFragment();
				var li;

				for(var i = 0; i < count; i++) {
					li = document.createElement('li');
					li.innerHTML = (i + 1);
					fragment.appendChild(li);
				}
				return fragment;
			};

			var create_seats = function(ul, count, arr) {
				var fragment = document.createDocumentFragment();
				var li;

				for(var i = 0; i < count; i++) {
					li = document.createElement('li');
					if(arr[i] == 1) {
						li.className = 'seat can_select';
					} else if(arr[i] == 0) {
						li.className = 'seat SeatNone';
					} else if(arr[i] == 2) {
						li.className = 'seat cant_select';
					} else if(arr[i] == 3) {
						li.className = 'seat SeatOfDie';
					} else {
						console.log("第" + (i + 1) + "号座位的状态码出错,快去查")
						li.className = 'seat cant_select';
					}
					fragment.appendChild(li);
				}
				return fragment;
			};

			
			var url_arr = window.location.href.split('?');
			//alert(url_arr);
			//var aurl = "<%=basePath%>selectSeatMovie.do?" + url_arr[1];
			var aurl = "<%=basePath%>selectSeatMovie.do";
			$.ajax({
				type: "post",
				url: aurl,
				success: function(msg) {
					alert("sdfdsf");
					//data处理代码
					//var data = eval("(" + msg + ")");
					var data = msg;
					console.log(data);
					//movie_pic.src =  "<%=basePath%>SelectMoviePicSvl?isbn=" + data.mid;
					movie_name.innerHTML = data.movie_name;
					movie_language.innerHTML = data.movie_language;
					cinema.innerHTML = data.cinema;
					screens_name[0].innerHTML = data.screens_name;
					screens_name[1].innerHTML = data.screens_name;
					movie_optime.innerHTML = data.movie_optime;
					price_original.innerHTML = data.price_sale * 1.5;
					price_sale.innerHTML = data.price_sale;
					user_tel.innerHTML = data.user_tel;
					movie_time.innerHTML = data.movie_time;
					
					row = data.row;
					col = data.col;
					seats_count = row * col;
					data_length  =  data.states.length;
					for(var i = 0; i < data_length; i++) {
						state_arr[i] = data.states[i].state;
					}
					seats.insertBefore(create_seats(seats, data_length, state_arr), seats.childNodes[0]);
					shafty.insertBefore(create_shafty(shafty, row), shafty.childNodes[0]);
					seats.style.width = col * 26 + "px";
					
					var select_seat = document.getElementById("select_seat");
					var create_rowcol = function(ul, seat_row, sear_col, ticket_num,seatno) {
						var fragment = document.createDocumentFragment();
						var span;
		
						span = document.createElement('span');
						span.innerHTML = seat_row + "排" + sear_col + "列 ";
						span.id = seatno;
						span.className = "ticket_num" + ticket_num;
						fragment.appendChild(span);
						return fragment;
					};
		
					var shafty_li = shafty.getElementsByTagName("li");
					var seats_li = seats.getElementsByTagName("li");
					var seat = seats.getElementsByClassName("seat");
					for(var i = 0; i < seat.length; i++) {
						seat[i].onclick = (function(i) {
							return function() {
								if(seat[i].className == "seat can_select") {
									var nowi = i + 1;
									ticket_num = ticket_num + 1;
									seat[i].className = "seat can_select selected seat_ticket_num" + ticket_num;
									seat_row = Math.ceil(nowi / col);
									seat_col = nowi % col;
									if(seat_col == 0) {
										seat_col = col;
									}
									select_seat.insertBefore(create_rowcol(select_seat, seat_row, seat_col, ticket_num ,nowi), select_seat.childNodes[0]);
									calculate_prices();
								} else {
									var now_ticket_num = "ticket_num" + seat[i].className.substring(40);
									var ticket_remove = document.getElementsByClassName(now_ticket_num)[0];
									ticket_remove.parentNode.removeChild(ticket_remove);
		
									seat[i].className = "seat can_select";
									ticket_num = ticket_num - 1;
									calculate_prices();
								}
		
							}
						})(i);
					}
		
					var price_all = document.getElementById("price_all");
					var calculate_prices = function() {
						var prices = price_sale.innerHTML * ticket_num;
						price_all.innerHTML = price_sale.innerHTML + "×" + ticket_num + "=" + prices;
					}
		
					//确认下单
					var payment = document.getElementById("payment");
					payment.onclick = function() {
						var seat_info = select_seat.getElementsByTagName("span");
						var price_arr = price_all.innerHTML.split('=');
						if(price_arr[1] != undefined){
							var now_time = getNowFormatDate();
							var buy_url =  "<%=basePath%>user/OrderSvl?" + url_arr[1] + "&allmoney=" + price_arr[1] + "&ordertime=" + now_time;
							for(var i = 0; i < seat_info.length ; i++) {
								buy_url = buy_url + "&seatno" + i + "=" + seat_info[i].id + "&seatinfo" + i + "=" + seat_info[i].innerHTML +""; 
							}
							console.log(buy_url);
							var To_Select_Seat = document.getElementById("To_Select_Seat");
							To_Select_Seat.href = buy_url;
							To_Select_Seat.click();
						}else{
							alert("请先选择座位");
						}
					}
					function getNowFormatDate() {
					    var date = new Date();
					    var seperator1 = "-";
					    var seperator2 = ":";
					    var month = date.getMonth() + 1;
					    var strDate = date.getDate();
					    if (month >= 1 && month <= 9) {
					        month = "0" + month;
					    }
					    if (strDate >= 0 && strDate <= 9) {
					        strDate = "0" + strDate;
					    }
					    var year = date.getFullYear().toString();
					    var currentdate = year + month  + strDate
					             + date.getHours() + date.getMinutes()
					            + date.getSeconds();
					    return currentdate;
					}
					
				},
				// XMLHttpRequest 对象、错误信息、（可选）捕获的异常对象
				error: function(XMLHttpRequest, type, errorThrown) {
					//异常处理;
					console.log(type);
					alert("加载失败,请检查网络设置")
				}
			 });
			
			

		</script>
</html>