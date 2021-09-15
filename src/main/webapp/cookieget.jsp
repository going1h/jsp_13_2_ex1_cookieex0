<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		Cookie[] cookies = request.getCookies();
	
		// out.println("쿠키name : " + cookies[0].getName() + "<br/>");
		// out.println("쿠키value : " + cookies[0].getValue() + "<br/>");
		
		for(int i=0; i<cookies.length; i++) {
			String name = cookies[i].getName();
			String value = cookies[i].getValue();
			if(name.equals("naver")){
				out.println("cookies[" + i + "] name : " + name + "<br/>");
				out.println("cookies[" + i + "] name : " + value + "<br/>");
				out.println("--------------------<br/>");
			}
		}
	%>
	<a href="cookiedel.jsp">원하는 cookie를 삭제하는 페이지로 입니다</a>
</body>
</html>