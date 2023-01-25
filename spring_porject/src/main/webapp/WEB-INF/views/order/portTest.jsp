<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript">
	$(function(){
		$(document).on("click","#port",function(){
			$("#selected").val("");
			window.open("newOrderPortfolio.jsp","selectport","width=470, height=500");
		})
		
		$(document).on("click","#addr",function(){
			$("#addrSelected").val("");
			new daum.Postcode({
		        oncomplete: function(data) {
		        	console.log("검색완료"+data.address);
		            $("#addrSelected").val(data.address);
		        }
		    }).open();
		})		
	});
</script>
</head>
<body>
	<button id="port">포트폴리오 선택</button><br>
	선택된 포트폴리오: <input type="text" id="selected"><br>
	
	<button id="addr">주소검색</button><br>
	주소: <input type="text" id="addrSelected">
</body>
</html>