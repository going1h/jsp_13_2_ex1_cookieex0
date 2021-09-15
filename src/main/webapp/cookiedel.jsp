<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>cookiedel.jsp</title>
</head>
<body>
	<% 
		Cookie[] cookies = request.getCookies();
				
		for(int i=0 ; i<cookies.length ; i++) {
			String name = cookies[i].getName();
			String value = cookies[i].getValue();
			if(name.equals("naver")){
				out.println("cookies[" + i + "] name : " + name + "<br/>");
				out.println("cookies[" + i + "] value : " + value + "<br/>");
				cookies[i].setMaxAge(0);
				response.addCookie(cookies[i]);//response 객체 cookie 탑재		
				out.println(name + "쿠키가 삭제되었습니다.<br/>");
			}
		}	
	
	%>
	
	<a href = "cookietest.jsp">cookie 삭제 확인 페이지로 이동</a>
</body>
</html>