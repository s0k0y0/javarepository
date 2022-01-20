<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript">
function 우편번호조회하다(){
	  new daum.Postcode({
          oncomplete: function(data) {
         		document.querySelector("#post").value=data.zonecode;
         		document.querySelector("#address").value=data.roadAddress;
         		
         		document.querySelector("#detailAddress").focus();
          }
      }).open();
}
function id를중복검사하다(){
	document.querySelector("#id").value="";
	window.open("/id","","width=500,height=300");
}
function id를받다(id){
	document.querySelector("#id").value=id;
}
function 회원등록하다(){
	let 성명=document.querySelector("#name").value;
	if(성명.trim()==""){
		alert("성명은 필수입력입니다.");
		return false;
	}
	let id=document.querySelector("#id").value;
	if(id.trim()==""){
		alert("아이디는 필수입력입니다.");
		return false;
	}
	let password=document.querySelector("#password").value;
	if(password.trim()==""){
		alert("패스워드는 필수입력입니다.");
		return false;
	}
	let password2=document.querySelector("#password2").value;
	if(password2.trim()==""){
		alert("패스워드는 다시 입력되야 합니다.");
		return false;
	}
	if(password!=password2){
		alert("패스워드는 동일해야 합니다.");
		return false;
	}
	let email1 = document.querySelector("#email1").value;
	let email2 = document.querySelector("#email2").value;
	let email = document.querySelector("#email");
	email.value=email1+"@"+email2;
	return true;
}
</script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>회원등록</h1>
<form onsubmit="return 회원등록하다()" action="/member" method="post"> 
성명*<input type="text" name="name" id="name"/><br>
프로필 <img id="profile" src="/img/no_image.jpg"/><br>
     <input type="file" name="profile" id="profilefile"/><br> 
전화번호<input type="text" name="tel" id="tel"/><br>
우편번호<input type="text" name="post" id="post"/>
     <input type="button" onclick="우편번호조회하다()" value="우편조회"/><br>
주 소<input type="text" name="address" id="address" size=30/><br>
상세 주소<input type="text" name="detailAddress" id="detailAddress"/><br>
ID*<input type="text" name="id" id="id"/>
     <input type="button" onclick="id를중복검사하다()" value="중복검사"/><br>
PassWord*<input type="text" name="password" id="password"/><br>
PassWord2*<input type="text" name="password2" id="password2"/><br>
E-mail<input type="text" id="email1"/>@
      <select id="email2">
	    <option value="naver.com">navar.com</option>
	    <option value="daum.net">daum.net</option>
	    <option value="gmail.com">gmail.com</option>
	    <option value="직접">직접입력</option>
	  </select>
	  <input type="hidden" name="email" id="email"/>
      <br>
<input type="submit" value="등록"/>
   
</form>

<!-- web-inf안에 있는 건 url검색으로 바로 창 띄우기 가능 -->
</body>
</html>