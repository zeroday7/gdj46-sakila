<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%@ page import = "dao.*" %>
<%@ page import = "vo.*" %>
<%
	CategoryDao categoryDao = new CategoryDao();
	List<Category> categoryList = categoryDao.selectCategoryList();	
	FilmDao filmDao = new FilmDao();
	List<Double> priceList = filmDao.selectfilmPriceList();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>filmSearchForm</title>
</head>
<body>
	<h1>필름 리스트 뷰 검색</h1>
	<form action="<%=request.getContextPath()%>/filmSearchAction.jsp" method="post">
		<table border="1">
			<tr>
				<td>카테고리</td>
				<td>
					<select name="categoryName">
						<option value="">카테고리선택</option>
						<%
							for(Category c : categoryList) {
						%>
								<option value="<%=c.getName()%>"><%=c.getName()%></option>
						<%		
							}
						%>
					</select>				
				</td>
			</tr>
			<tr>
				<td>등급</td>
				<td>
					<select name="rating">
						<option value="">등급선택</option>
						<option value="G">G</option>
						<option value="PG">PG</option>
						<option value="PG-13">PG-13</option>
						<option value="R">R</option>
						<option value="NC-17">NC-17</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>대여료</td>
				<td>
					<%
						for(Double p : priceList) {
					%>
							<div><input type="radio" name="price" value="<%=p%>"><%=p%></div>
					<%		
						}
					%>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>