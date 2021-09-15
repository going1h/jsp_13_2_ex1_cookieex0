<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%!
	String id,pw;
	%>
	
   <%
      request.setCharacterEncoding("EUC-KR");
      id = request.getParameter("id");
      pw = request.getParameter("pw");
      //아이디와 비밀번호가 맞으면 실행
      if(id.equals("abcde") && pw.equals("12345")){
         //id 값을 쿠키로 저장
         Cookie ck = new Cookie("id",id);
         //로그인하고 시간이 지나면 쿠키 없어짐
         ck.setMaxAge(60*60);
         response.addCookie(ck);
         //로그인 되면 넘어가는 페이지
         response.sendRedirect("welcome.jsp");
      }   
   %>

</body>
</html>