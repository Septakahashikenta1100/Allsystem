<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>更新画面</title>
</head>
<body>
	<h1>会員情報の更新</h1>
		<form:form modelAttribute="Addlisname">
		<c:forEach items="${oooo}" var="obj">
			名前：<c:out value="${obj.name}"/>
			住所：<c:out value="${obj.address}"/>
			電話番号：<c:out value="${obj.tel}"/><br>
		</c:forEach>
		</form:form>

				<form:form modelAttribute="Addup">
						<input type="submit" value="更新">
			<input type="reset" value="リセット"/>
			<input type="button" value="一覧表示" onclick= "location.href =' http://localhost:8080/Address/addlis'">
		</form:form>
	</body>
</html>