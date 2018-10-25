<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%> 
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
  <body>
   <jsp:include page="head.jsp"></jsp:include>
    <div class="mainBox">
			<!--最新上映-->
			<div class="hotNews">
				<div class="hotNewsTitle">
					<h1>最新上映</h1>
					<a>更多&nbsp;&nbsp;>></a>
				</div>
				<ul class="hotNewsUl">
						<c:forEach items="${newlist}" var="newmovies">
							<li><a href="movie.do?mid=${newmovies.mid}">
								<img
								src="${newmovies.cover }" />
								<p>${newmovies.mname}</p>
								<p>
									<i class="spanOne">${newmovies.score}</i>
								</p>
						</a></li>
						</c:forEach>

				</ul>
			</div>
			<!-- 即将上映 -->
			<div class="hotMovie">
				<div class="hotNewsTitle">
					<h1>即将上映</h1>
					<a>更多&nbsp;&nbsp;>></a>
				</div>
				<ul class="hotMovieUl">
					<c:forEach items="${futurelist}" var="futuremovies">
						<li><a href="movie.do?mid=${futuremovies.mid}">
								<div class="hotMovieBox">
									<div class="hotMovieImg">
										<img
											src="${futuremovies.cover}" />
										<div class="introduction">
											<h4>${futuremovies.mname}</h4>
											<p>导演：${futuremovies.director}</p>
											<p>主演：${futuremovies.actor}</p>
											<p class="inTxt">片长：${futuremovies.length}</p>
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
							<p><fmt:formatDate value="${futuremovies.bgdate}" pattern="yyyy-MM-dd"/>上映</p></li>
					</c:forEach>
				</ul>
			</div>
		</div>
  </body>
</html>
