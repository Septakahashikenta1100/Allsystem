<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
	<head>
		<meta charset="utf-8">
		<title>会員登録</title>
	</head>
	<body>
		<h1>会員情報の登録</h1>
		<form:form modelAttribute="Address">
			<table>
				<tr><td>氏名　　<form:input path="name" /></td></tr>
				<tr><td>住所　　<form:input path="address" /></td></tr>
				<tr><td>電話番号　<form:input path="tel" />
			</table>

			<input type="submit" value="登録">
			<input type="reset" value="リセット"/>
			<input type="button" value="一覧表示" onclick= "location.href =' http://localhost:8080/Address/addlis'">
		</form:form>
	</body>
</html>