<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function checkValue() {
	inputForm = eval("document.loginInfo");
	
	if(!inputForm.id.value){
		//alert("아이디 없음");
		inputForm.id.focus();
		return false;
	}
	if(!inputForm.password.value){
		//alert("패스워드 없음");
		inputForm.password.focus();
		return false;
	}
}

function goJoinForm() {
	location.href="../joinus/join.jsp";
}

</script>
</head>
<body>
<h3>loginForm</h3>
<form action="loginProc.jsp" name="loginInfo" method="post" onsubmit="return checkValue()">
	<img src="../img/welcome.jpg" alt="wel_img" />
	<br /><br />
	<table>
		<tr>
			<td bgcolor="skyblue">아이디</td>
			<td><input type="text" name="id" maxlength="50" /></td>
		</tr>
		<tr>
			<td bgcolor="skyblue">비밀번호</td>
			<td><input type="text" name="password" maxlength="50" /></td>
		</tr>
	</table>
	<input type="submit" value="login" />
	<input type="button" value="join" onclick="goJoinForm()" />



</form>
<%
String msg = request.getParameter("msg");
if(msg!=null && msg.equals("0")){
	out.println("<br>");
	out.println("<font color='red' size='5'>비밀번호 확인</font>");
}else if(msg!=null && msg.equals("-1")){
	out.println("<br>");
	out.println("<font color='red' size='5'>아이디 확인</font>");
}
%>

</body>
</html>