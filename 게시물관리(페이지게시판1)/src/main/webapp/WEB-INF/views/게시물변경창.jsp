<%@page import="com.stone.springmvc.common.Board"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    //Board board=(Board) request.getAttribute("board")
    //를 안해도 ${board.title() }만으로 데이터 값을 불러올 수 있음 
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물변경창</title>
</head>
<body>

	<form action="update" method="post">
		<fieldset>
			<legend>게시물 변경</legend>
			<input type="hidden" name="no" value="${board.no }">
			<div>
				제목:<input type="text" name="title" value="${board.title }">
			</div>
			<div>
				내용:<br>
				<textarea rows="5" cols="25" name="contents"></textarea>
			</div>
		</fieldset>
		<input type="submit" value="등록">

	</form>
</body>
</html>