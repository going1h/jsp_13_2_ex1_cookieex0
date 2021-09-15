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
		Cookie[] ck = request.getCookies();
	
		for(int i=0; i<ck.length; i++){
			String id = ck[i].getValue();
			
			if(id.equals("abcde")) {
				ck[i].setMaxAge(0); //쿠키삭제  
				response.addCookie(ck[i]); // response 객체에 유효기간 0으로 셋팅된 cookie 탑재
				out.println(id+ "님 로그아웃 하셨습니다.");
			}
		}
	%>
</body>
</html>