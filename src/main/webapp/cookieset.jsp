<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<% // 쿠키는 사이트 당 하나만 가능
Cookie cookie = new Cookie("cookieName","cookievalue");
cookie.setMaxAge(60*60*24);//쿠키의 유효시간 60초*60*24 = 24시간.
response.addCookie(cookie);//response 객체 cookie 탑재

%>
<h1>cookie의 name, value, Max_Age를 설정하였습니다.</h1>
<a href="cookieget.jsp">cookie의 설정값을 보여주는 페이지로 이동</a>
</body>
</html>