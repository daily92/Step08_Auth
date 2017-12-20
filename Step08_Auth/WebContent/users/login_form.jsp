<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>users/login_form.jsp</title>
</head>
<body>
	<%
		// 로그인 후 redirect 이동할 url 주소를 읽어온다.
		String url= request.getParameter("url");
		if(url==null){	// 만일 없으면 인덱스 페이지로 이동될 수 있도록
			url= request.getContextPath();
		}
	%>

	<h3>로그인 페이지 입니다.</h3>
		<!-- 위에서 얻은 url 을 login.jsp 로 get 방식으로  전달 -->
	<form action="login.jsp?url=<%=url %>" method="post">
		<label for="id">아이디</label>
		<input type="text" name="id" id="id"/>
		<label for="pwd">비밀번호</label>
		<input type="password" name="pwd" id="pwd"/>
		<!-- SELECT * FROM users WHERE id=? and pwd=?
		이렇게 셀렉트 함
		그런데 이렇게 셀렉트 했을 때, 셀렉트 된 row 가 있을 수도 없을 수도
		유효한지 아닌지 확인 하면 되는 데, 
		어케 하냐면? 셀렉트 해서 row(resultset) 가 있는 지 없는지만 확인하면 돼
				  rs.next 가 true 인지
		-->
		<button type="submit">로그인</button>
	</form>
</body>
</html>