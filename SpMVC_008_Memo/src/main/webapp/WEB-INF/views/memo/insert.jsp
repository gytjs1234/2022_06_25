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
</style>
<body>
	<form:form modelAttribute="MemoVO"  enctype="multipart/forn-data">
		<h1>메모작성하기</h1>
		<form:input path="m_author" />
		<form:input path="m_date" />
		<form:input path="m_time" />

		<form:textarea path="m_memo" cols="50" rows="10" />
		<input type="file" name="img">
		<br>
		<button>메모저장</button>
		<br>
	</form:form>

</body>
</html>