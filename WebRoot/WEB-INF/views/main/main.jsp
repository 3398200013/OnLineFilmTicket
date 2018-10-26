<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>欢迎来到海天盛宴</title>
<link rel="stylesheet" type="text/css" href="css/style.css" />
<link rel="stylesheet" type="text/css" href="fonts/iconfont.css" />
<link rel="stylesheet" type="text/css" href="css/picstyle.css" />
</head>

</head>

<body>
 <jsp:include page="head.jsp"></jsp:include>
	
	<!-- main首页主体部分 -->
	<div class="main">
		<!--图片画廊 -->
		<div class="picGrally">
			<div class='o-sliderContainer' id="pbSliderWrap0" 
				style="margin-top:0; height: 400px;">
				<div class='o-slider' id='pbSlider0'>
				<c:forEach var="TGrally" items="${grallys}">
					<div class="o-slider--item" data-image="${TGrally.banner}">
						<div class="o-slider-textWrap">
							<h1 class="o-slider-title">${TGrally.title}</h1>
							<span class="a-divider"></span>
							<h2 class="o-slider-subTitle">${TGrally.subtxt}</h2>
							<span class="a-divider"></span>
							<p class="o-slider-paragraph">${TGrally.detailstxt}</p>
						</div>
					</div>
				</c:forEach>
				
</div>
			</div>
		</div>
		<div class="mainBox">
			<!--最新上映-->
			<div class="hotNews">
				<div class="hotNewsTitle">
					<h1>最新上映</h1>
					<a>MORE&nbsp;&nbsp;>></a>
				</div>
				<ul class="hotNewsUl">
				<c:forEach var="movie" items="${movies}">
					<li><a href="/DeatailSvl?mid=${movie.mid}"> <img src="${movie.cover}" />
							<p>${movie.mname}</p>
							<p>
								<i class="spanOne">${movie.score}</i>
							</p>
					</a></li>
				</c:forEach>
				</ul>
			</div>
			<!--票房榜-->
			<div class="topNo">
				<div class="hotNewsTitle">
					<h1>票房飙升榜</h1>
					<a>MORE&nbsp;&nbsp;>></a>
				</div>
				<ul>
					<div class="topOne">
						<a href="/DeatailSvl?mid=${pfmovie.mid}"> <span></span>
							<div class="topOneImg">
								<img src="${pfmovie.cover}" />
							</div>
							<div class="topTitle">
								<p>${pfmovie.mname}</p>
								<span>${pfmovie.sealnumber}</span>
							</div>
						</a>
					</div>
					<li><a href="/DeatailSvl?mid=${pfmovie.mid}"> <i
							class="topTwo">1111</i>
							<h4>111</h4> <span>222</span>
					</a></li>
					<li><a href="/DeatailSvl?mid=${pfmovie.mid}"> <i>111</i>
							<h4>$222</h4> <span>333</span>
					</a></li>

				</ul>
			</div>
			<!--即将上映-->
			<div class="hotMovie">
				<div class="hotNewsTitle">
					<h1>即将上映</h1>
					<a>MORE&nbsp;&nbsp;>></a>
				</div>
				<ul class="hotMovieUl">
					<c:forEach var="symovie" items="${symovies}">
					<li><a href="/DeatailSvl?mid=${symovie.mid}">
							<div class="hotMovieBox">
								<div class="hotMovieImg">
									<img src="${symovie.cover}" />
									<div class="introduction">
										<h4>${symovie.mname}</h4>
									</div>
								</div>
								<div class="hotMovieTitle">
									<span class="hotMovieSee">123人想看</span>
									<div class="yg">
										<a href="#" class="yugao">预告片</a> <a href="#" class="yugou">预购</a>
									</div>
								</div>
							</div>
					</a>
						<p>20.14上映</p></li>
					</c:forEach>
				</ul>
			</div>
			<!--最受期待-->
			<div class="mostAwait">
				<div class="hotNewsTitle">
					<h1>最受期待</h1>
					<a>查看完整榜单</a>
				</div>
				<ul>
					<div class="awaitTopOne">
						<a href="/DeatailSvl?mid=${xqmovie.mid}">
							<div class="awaitTopOneImg">
								<img src="img/actor5.png" />
							</div>
							<div class="awaitTopOneTitle">
								<h3>ss</h3>
								<p>上映时间: 123</p>
								<span>1231人想看</span>
							</div>
						</a>
					</div>

				</ul>
			</div>
		</div>
	</div>
	</div>

	<script type="text/javascript" src="js/hammer.min.js"></script>
	<script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
	<script type="text/javascript" src="js/slider.js"></script>
	<script>
		$('#pbSlider0').pbTouchSlider({
			slider_Wrap : '#pbSliderWrap0',
			slider_Threshold : 10,
			slider_Speed : 600,
			slider_Ease : 'ease-out',
			slider_Drag : true,
			slider_Arrows : {
				enabled : true
			},
			slider_Dots : {
				class : '.o-slider-pagination',
				enabled : true,
				preview : false
			},
			slider_Breakpoints : {
				default : {
					height : 400
				},
				tablet : {
					height : 350,
					media : 1024
				},
				smartphone : {
					height : 250,
					media : 768
				}
			}
		});
	</script>
</body>
</html>
