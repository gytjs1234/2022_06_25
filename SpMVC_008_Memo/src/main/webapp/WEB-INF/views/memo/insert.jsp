<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set value="${pageContext.request.contextPath}" var="rootPath" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
body {
	background-color: pink;
}

textarea {
	width: 70%;
	height: 10em;
	border: 2px solid black;
	resize: none;
	margin: 20px;
	justify-content: center;
}

h1 {
	text-align: center;
	margin-top: 50px;
}

input {
	padding: 10px;
	text-align: center;
}

.f {
	padding: 10px;
}

div {
	margin: 20px auto;
	text-align: center;
}
button{
font-size: 15px;
}


</style>
<body>
	<div class="div">
		<form:form modelAttribute="MemoVO" enctype="multipart/form-data">
			<h1>메모작성하기</h1>
			<form:input path="m_author" />
			<form:input path="m_date" />
			<form:input path="m_time" />

			<form:textarea path="m_memo" cols="50" rows="10" />
			<br>
			<div>
				<input class="f" type="file" name="img">
				<button>메모저장</button>
			</div>
		</form:form>

	</div>

</body>
</html>