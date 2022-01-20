<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//boolean 사용가능=true;//(boolean)request.getAttribute("usable");
Boolean 사용가능=(Boolean)request.getAttribute("usable");//null값이 들어올 수 있게 boolean타입이 아닌 Boolean클래스로 강제변환
String id=(String)request.getAttribute("id");
%>
<!DOCTYPE html>
<html>                                                                                                                                                                                                                                                                           
<head>
<script>
function id사용하다(){
	var id=document.querySelector("#id").value;
	opener.id를받다(id);//나를 연 jsp파일의 id를받다 함수를 불러들임?
	close();
	
}
</script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>아이디 중복 검사</h1>
<form action="/id" method="post"> 
ID<input type="text" name="id" id="id" value="<%=(id ==null)?"":id%>"/><!-- id가  null이면 공백을 넣고 그렇지 않다면 id값을 넣겠다-->
<input type="submit" value="검사"/><br>

</form>
<%if(사용가능  != null){ 
if(사용가능){ %>
	사용 가능한 id입니다.<input type="button" onclick="id사용하다()" value="사용"/><br>
<%}else{%>	
	이미 사용중인 id입니다.<br>
<%	}
}%>

<input type="button" value="취소"/><br>

</body>
</html>