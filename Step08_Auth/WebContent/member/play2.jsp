<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>member/play2.jsp</title>
</head>
<body>
	<%
		// 로그인 한 회원의 아이디 읽어오기
		String id=(String)session.getAttribute("id");
	%>
	<h3>play2.jsp</h3>
	<p> <strong><%=id %></strong> 님 놀아보아요~~</p>
	<p> 여기는 로그인한 회원의 전용 공간 입니다.</p>
	<a href="${pageContext.request.contextPath }/">인덱스로 돌아가기</a>
</body>
</html>