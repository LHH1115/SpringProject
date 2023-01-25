<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript">
	
</script>
</head>
<body>
	<c:if test="${re2 == -1 }">
		<c:redirect url="/order/newOrder.jsp?cService=false"></c:redirect>
	</c:if>
	
	<c:if test="${re == 1 }">
		<c:redirect url="/mainPage.html?Order=true"></c:redirect>
	</c:if>
	
	<c:if test="${re !=1 }">
		<c:redirect url="/order/newOrder.jsp?Order=false"></c:redirect>
		<!-- <c:redirect url="javascript:window.history.back();"></c:redirect> -->
	</c:if>
	<hr>
</body>
</html>