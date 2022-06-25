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
	text-align: center;
}

table {
	border-collapse: collapse;
	margin: 30px auto;
}

h1 {
	margin: 20px auto;
	text-align: center;
}

a {
	text-decoration: none;
	color: inherit;
	font-size: 20px;
	background-color: black;
	color: white;
	padding: 10px;
	box-shadow: 2px 2px 2px white;
	text-align: center;
}

a:hover {
	color: black;
	font-size: 20px;
	background-color: white;
}

td:hover {
	cursor: pointer;
}

body {
	background-color: pink;
}

.a {
	margin: 50px auto;
}



th {
	background-color: black;
	color: white;
}

table:hover {
	overflow: visible;
}
</style>
<script>
	const rootPath = '${rootPath}'
</script>
<script src="${rootPath}/static/js/memo.js?ver=2022-06-24-001"></script>
<body>

	<div class="a">
		<h1>나의 memo 페이지</h1>

		<table class="memo">
			<thead>
			<col width="70px">
			<col width="100px">
			<col width="150px">
			<col width="100px">
			<col width="300px">
			<col width="200px">
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
						<td class="img">${Memo.m_image}</td>
					</tr>
				</c:forEach>
			</tbody>

		</table>
		<a href="${rootPath}/memo/insert">메모추가</a>

	</div>
</body>
</html>