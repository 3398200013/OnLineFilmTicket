<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'showList.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="css/styleshowlist.css" />
<link rel="stylesheet" type="text/css"
	href="fonts/iconfont.css" />
<link rel="stylesheet" type="text/css"
	href="css/picstyle.css" />
	
  </head>
  <jsp:include page="head.jsp"></jsp:include>
  <body>
    <div class="mainBox">
			<!--最新上映-->
			<div class="hotNews">
				<div class="hotNewsTitle">
					<h1>最新上映</h1>
					<a>更多&nbsp;&nbsp;>></a>
				</div>
				<ul class="hotNewsUl">
						<c:forEach items="${newlist}" var="newmovies">
							<li><a href="/DeatailSvl?mid=${newmovies.mid}">
								<img
								src="img/wushuang.png" />
								<p>${newmovies.mname}</p>
								<p>
									<i class="spanOne">${newmovies.score}/1.</i><i class="spanTwo">${newmovies.score}%1</i>
								</p>
						</a></li>
						</c:forEach>
						
						
						<li><a href="/DeatailSvl?mid=${symovie.mid}">
								<img
								src="img/jiandie.png" />
								<p>我的间谍前男友</p>
								<p>
									<i class="spanOne">8.</i><i class="spanTwo">1</i>
								</p>
						</a></li>
						<li><a href="/DeatailSvl?mid=${symovie.mid}">
								<img
								src="img/zhaodaoni.png" />
								<p>找到你</p>
								<p>
									<i class="spanOne">8.</i><i class="spanTwo">7</i>
								</p>
						</a></li>
						<li><a href="/DeatailSvl?mid=${symovie.mid}">
								<img
								src="img/ying.png" />
								<p>影</p>
								<p>
									<i class="spanOne">8.</i><i class="spanTwo">2</i>
								</p>
						</a></li>
						<li><a href="/DeatailSvl?mid=${symovie.mid}">
								<img
								src="img/baobei.png" />
								<p>宝贝儿</p>
								<p>
									<i class="spanOne">6.</i><i class="spanTwo">6</i>
								</p>
						</a></li>
				</ul>
			</div>
			<!-- 即将上映 -->
			<div class="hotMovie">
				<div class="hotNewsTitle">
					<h1>即将上映</h1>
					<a>更多&nbsp;&nbsp;>></a>
				</div>
				<ul class="hotMovieUl">
						<li><a href="/DeatailSvl?mid=${wsmovie.mid}">
								<div class="hotMovieBox">
									<div class="hotMovieImg">
										<img
											src="img/muguangbali.png" />
										<div class="introduction">
											<h4>暮光巴黎</h4>
											<p>导演：万沥方</p>
											<p>主演：赛摩儿</p>
											<p class="inTxt">片长：91</p>
										</div>
									</div>
									<div class="hotMovieTitle">
										<span class="hotMovieSee">15643人想看</span>
										<div class="yg">
											<a href="#" class="yugao">预告片</a> <a href="#" class="yugou">预购</a>
										</div>
									</div>
								</div>
						</a>
							<p>2018-10-26上映</p></li>
							<li><a href="/DeatailSvl?mid=${wsmovie.mid}">
								<div class="hotMovieBox">
									<div class="hotMovieImg">
										<img
											src="img/gongfulianmeng.png" />
										<div class="introduction">
											<h4>功夫联盟</h4>
											<p>导演：刘镇伟</p>
											<p>主演：赵文卓</p>
											<p class="inTxt">片长：102</p>
										</div>
									</div>
									<div class="hotMovieTitle">
										<span class="hotMovieSee">26416人想看</span>
										<div class="yg">
											<a href="#" class="yugao">预告片</a> <a href="#" class="yugou">预购</a>
										</div>
									</div>
								</div>
						</a>
							<p>2018-10-26上映</p></li>
							<li><a href="/DeatailSvl?mid=${wsmovie.mid}">
								<div class="hotMovieBox">
									<div class="hotMovieImg">
										<img
											src="img/weinixieshi.png" />
										<div class="introduction">
											<h4>为你写诗</h4>
											<p>导演：吴克群</p>
											<p>主演：吴克群，周冬雨</p>
											<p class="inTxt">片长：100</p>
										</div>
									</div>
									<div class="hotMovieTitle">
										<span class="hotMovieSee">356434人想看</span>
										<div class="yg">
											<a href="#" class="yugao">预告片</a> <a href="#" class="yugou">预购</a>
										</div>
									</div>
								</div>
						</a>
							<p>2018-10-26上映</p></li>
				</ul>
			</div>
		</div>
  </body>
</html>
