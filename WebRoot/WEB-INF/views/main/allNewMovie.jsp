<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>全部上映影片</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="stylesheet" type="text/css" href="css/styleshowlist.css" />
<link rel="stylesheet" type="text/css" href="fonts/iconfont.css" />
<link rel="stylesheet" type="text/css" href="css/picstyle.css" />
</head>
<body>
	<jsp:include page="head.jsp"></jsp:include>
	<div class="mainBox">
		<!--最新上映-->
		<div class="hotNews">
			<div class="hotNewsTitle">
				<h1>最新上映</h1>
			</div>
			<ul class="hotNewsUl">
				<c:forEach items="${allnewmovie}" var="newmovies">
					<li><a href="movie.do?mid=${newmovies.mid}"> <img
							src="${newmovies.cover }" />
							<p>${newmovies.mname}</p>
							<p>
								<i class="spanOne">${newmovies.score}</i>
							</p>
					</a></li>
				</c:forEach>

			</ul>
		</div>
	</div>
	</body>
</html>
