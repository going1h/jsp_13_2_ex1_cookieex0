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
				ck[i].setMaxAge(0); //��Ű����  
				response.addCookie(ck[i]); // response ��ü�� ��ȿ�Ⱓ 0���� ���õ� cookie ž��
				out.println(id+ "�� �α׾ƿ� �ϼ̽��ϴ�.");
			}
		}
	%>
</body>
</html>