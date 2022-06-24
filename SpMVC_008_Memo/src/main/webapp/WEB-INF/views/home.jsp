<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set value="${pageContext.request.contextPath}" var="rootPath" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<style>
th, td {
	border: 1px solid black;
	background-color: white;
	padding: 10px;
}

table {
	border-collapse: collapse;
	margin: 30px auto;
}

h2 {
	margin: 20px auto;
	display: inline-block;
}

a {
	text-decoration: none;
	color: inherit;
}

a:hover {
	color: white;
}

body {
	background-color: gray;
}
</style>
<script>
	const rootPath = '${rootPath}'
</script>
<script src="${rootPath}/static/js/memo.js?ver=2022-06-24-001"></script>
<body>
	<h2>memo</h2>

	<table class="memo">
		<thead>
			<tr>
				<th>일련번호</th>
				<th>작성자</th>
				<th>작성일자</th>
				<th>작성시각</th>
				<th>메모내용</th>
				<th>이미지파일</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${MEMO}" var="Memo" varStatus="INDEX">
				<tr data-m_seq="${Memo.m_seq}">
					<td>${INDEX.count}</td>
					<td>${Memo.m_author}</td>
					<td>${Memo.m_date}</td>
					<td>${Memo.m_time}</td>
					<td>${Memo.m_memo}</td>
					<td>${Memo.m_image}</td>
				</tr>
			</c:forEach>
		</tbody>

	</table>
	<div>
		<a href="${rootPath}/memo/insert">메모추가</a>
	</div>

</body>
</html>