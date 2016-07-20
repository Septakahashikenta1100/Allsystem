<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>削除確認画面</title>
</head>
	<body>
		<h1>本当に削除してもいいですか?</h1>
			<c:forEach items="${weeee}" var="obj">
				名前：<c:out value="${obj.name}"/>
				住所：<c:out value="${obj.address}"/>
				電話番号：<c:out value="${obj.tel}"/><br>
			</c:forEach>
			<form:form modelAttribute="Adddelete" action="/Address/addsakusaku">
			<input type="hidden" name="wayai" value="${sawara}">
			<input type="submit" value="削除">
			<input type="button" value="一覧画面へ"
			onclick="location.href =' http://localhost:8080/Address/addlis'" />
		</form:form>
	</body>
</html>