<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index.jsp</title>
</head>
	<%
		// 세션 영역에 "id" 라는 키값으로 저장된 값이 있는지 확인하기(불러오기)
			//만약 저장된 값이 없으면 null, 즉 로그인 안 한 거! (null 이 아니면 로그인 한 거!)
		String id= (String)session.getAttribute("id");
		String cPath= request.getContextPath();
	%>
<body>
	<h3>인덱스 페이지 입니다.</h3>
	<%if(id!=null){ %>
		<p><a href="users/private/info.jsp"><%=id %></a>님 로그인 중...</p>
		<!-- 
		<p><a href="<%=cPath %>/users/private/info.jsp"><%=id %></a>님 로그인 중...</p>
		<p><a href="${pageContext.request.contextPath}/users/private/info.jsp"><%=id %></a>님 로그인 중...</p>
		-->
		<a href="users/logout.jsp">로그 아웃</a>
	<%}else{ %>
	<ul>
		<li><a href="users/signup_form.jsp">회원 가입</a></li>
		<li><a href="users/login_form.jsp?url=${pageContext.request.contextPath}">로그인</a></li>
		<li><a href="users/private/info.jsp">로그인 하지 않으면 갈 수 없는 곳(private 이므로 필터 동작함)</a></li>
		<li><a href="member/play1.jsp">놀러가기1</a></li>
		<li><a href="member/play2.jsp">놀러가기2</a></li>
	</ul>
	<%} %>
</body>
</html>