<%@page import="test.users.dao.UsersDao"%>
<%@page import="test.users.dto.UsersDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>users/private/info.jsp</title>
</head>
<body>
	<%
		/*
			UsersDao 에 메소드를 하나 만들어 보세요.
			
				public UsersDto getData(String id){
		
				}
		*/
		// 1. 세션에 저장된 id 를 읽어온다.	
		String id= (String)session.getAttribute("id");
		
		// 2. id 를 이용해서 DB 에 가입된 회원 정보를 select 해 온다.
		UsersDto dto= UsersDao.getInstance().getData(id);
		
		// 3. 응답한다.
	%>
	
	<h3>회원 가입된 개인 정보 입니다.</h3>
	<table>
		<thead>
			<tr>
				<th>항목</th>
				<th>정보</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<th>아이디</th>
				<td><%=dto.getId() %></td>
			</tr>
			<tr>
				<th>이메일</th>
				<td><%=dto.getEmail() %></td>
			</tr>
			<tr>
				<th>가입일</th>
				<td><%=dto.getRegdate() %></td>
			</tr>
		</tbody>
	</table>
	<!-- 상대경로 => 현재 위치 경로는 /users/private/ => /users/private/updateform.jsp -->
	<a href="updateform.jsp">가입 정보 수정</a>
	<a href="javascript:deleteConfirm()">회원 탈퇴</a><br />
	<a href="../../index.jsp">인덱스 페이지로 돌아가기</a>
	<script>
		function deleteConfirm(){
			var isDelete= confirm("정말 탈퇴할 겨??!");
			if(isDelete){
				location.href= "delete.jsp"
			}
		}
	</script>
</body>
</html>