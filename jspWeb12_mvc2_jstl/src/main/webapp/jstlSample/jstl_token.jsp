<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>jstl_token</h3>

<%-- <c:forTokens items="이름1, 이름1, 이름1, 이름1, 이름1" delims=",">
반복 <br />
</c:forTokens> --%>

<%-- <c:forTokens var="name" items="이름1, 이름2, 이름3, 이름4, 이름5" delims=",">
${name } <br />
</c:forTokens> --%>

<%-- <c:forTokens var="name" items="이름1, 이름2, 이름3, 이름4, 이름5" delims="," varStatus="st">
index:${st.index } <br />
current:${st.current } <br />
count:${st.count } <br />
first:${st.first } <br />
last:${st.last } <br />
begin:${st.begin } <br />
end:${st.end } <br />
step:${st.step } <br />
<hr />
</c:forTokens> --%>

<%-- <c:forTokens var="name" items="이름1, 이름2, 이름3, 이름4, 이름5" delims="," 
begin="1" end="3" step="2" varStatus="st">
index:${st.index } <br />
current:${st.current } <br />
count:${st.count } <br />
first:${st.first } <br />
last:${st.last } <br />
begin:${st.begin } <br />
end:${st.end } <br />
step:${st.step } <br />
<hr />
</c:forTokens> --%>

<%-- <c:forTokens var="name" items="이름1/20, 이름2/21, 이름3/22, 이름4/23, 이름5/24" delims=",/" 
 varStatus="st">
index:${st.index } <br />
current:${st.current } <br />
count:${st.count } <br />
first:${st.first } <br />
last:${st.last } <br />
begin:${st.begin } <br />
end:${st.end } <br />
step:${st.step } <br />
<hr />
</c:forTokens> --%>

<c:forTokens var="name" items="이름1/20, 이름2/21, 이름3/22, 이름4/23, 이름5/24" delims=",/" 
 step="2" varStatus="st">
index:${st.index } <br />
current:${st.current } <br />
count:${st.count } <br />
first:${st.first } <br />
last:${st.last } <br />
begin:${st.begin } <br />
end:${st.end } <br />
step:${st.step } <br />
<hr />
</c:forTokens>

</body>
</html>