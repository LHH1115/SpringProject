<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<c:if test="${re == 1 }">
		<c:if test="${re2 == 1 }">
			<c:redirect url="/mainPage.html?AddInfo=true"></c:redirect>
		</c:if>
		<c:if test="${re2 != 1 }">
			<c:redirect url="/order/oldOrderLogin.jsp?AddInfo=false"></c:redirect>
		</c:if>
	</c:if>
	<c:if test="${re !=1 }">
		<c:redirect url="/order/oldOrderLogin.jsp?AddInfo=false"></c:redirect>
	</c:if>
	<hr>
</body>
</html>