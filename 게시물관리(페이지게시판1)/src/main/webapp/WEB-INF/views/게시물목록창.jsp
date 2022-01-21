<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %> 
<%@ page import="com.stone.springmvc.common.Board" %>    
<% 
List<Board> boards = (List<Board>)request.getAttribute("boards");
int 마지막페이지번호=(int)request.getAttribute("lastPageNo");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 게시물목록 출력 -->
   <h1>게시물 목록창</h1>
   <ul>
   <%
       for(int i=1; i<= boards.size(); i++){
    	   Board board=boards.get(i-1);
   %>
   		<li><%=i%> 
   		    <a href="detail?no=<%= board.getNo()%>">
   		       <%=board.getTitle()%>
   		    </a>
   		</li>	 	   
   <%
       }
   
   %>
   </ul>
  <!-- 페이지번호들 출력 -->
  <%for(int 페이지번호=1; 페이지번호<=마지막페이지번호; 페이지번호++){ %>
  <a href="list?pageno=<%=페이지번호 %>>"><%=페이지번호 %></a>&nbsp;&nbsp;
  <%
  }
  %>
  
</body>
</html>