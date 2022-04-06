<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>INDEX</h1>
	<h3>테이블 리스트</h3>
	<ol>
		<li><a href="<%=request.getContextPath()%>/storeList.jsp">storeList</a></li>
		<li><a href="<%=request.getContextPath()%>/staffList.jsp">staffList</a></li>
	</ol>
	
	<h3>뷰 리스트</h3>
	<ol>
		<li><a href="<%=request.getContextPath()%>/actorInfoList.jsp">actorInfoList(view)</a></li>
		<li><a href="<%=request.getContextPath()%>/customerList.jsp">customerList(view)</a></li>
		<li><a href="<%=request.getContextPath()%>/filmList.jsp">filmList(view)</a></li>
		<li><a href="<%=request.getContextPath()%>/nicerButSlowerFilmList.jsp">nicerButSlowerFilmList(view)</a></li>
		<li><a href="<%=request.getContextPath()%>/salesByFilmCategory.jsp">salesByFilmCategory(view)</a></li>
		<li><a href="<%=request.getContextPath()%>/salesByStore.jsp">salesByStore(view)</a></li>
		<li><a href="<%=request.getContextPath()%>/staffListView.jsp">staffList(view)</a></li>
	</ol>
	
	<h3>프로시저</h3>
	
	<h3>상세검색</h3>
	<ol>
		<li><a href="<%=request.getContextPath()%>/filmSearchForm.jsp">필름 상세검색</a></li>
	</ol>
</body>
</html>