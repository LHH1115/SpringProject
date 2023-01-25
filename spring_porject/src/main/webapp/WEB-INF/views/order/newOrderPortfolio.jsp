<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

	<!-- 이미지 css -->
	.portfolioImages{
		
		
	}
	.imgDIV{
		float: left;
		margin-left: 10px;
		margin-bottom: 10px;
	}
</style>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script type="text/javascript">
	$(function(){
		var totalIMG=10;
		for(i=1;i<=totalIMG;i++){
			var no = i;
			if(i<10){
				no = "0"+i;
			}
			var src = "portfolioImages/IMG"+no+".jpg";
			var name = "IMG"+no+"jpg";
			var div = $("<div></div>").addClass("imgDIV");
			var a = $("<a href='#'></a>").attr("id","IMGlink");
			var img = $("<img/>").attr({
				src:src,
				name:name,
				id:"IMG",
				height:"100"
			}).addClass("portfolioImages");
			$(a).append(img);
			$(div).append(a);
			$("#container").append(div);
		}
		
		function sendData(){
            opener.document.getElementById("selected").value = document.getElementById("IMG").name
		}
		
		$(document).on("click","#IMGlink",function(){
			$("IMG").attr("name", ($(this).find("#IMG").attr("name")) )
			sendData();
			window.close();
		})
	});
</script>
</head>
<body>
	<h2>원하시는 포트폴리오를 클릭해주세요</h2>
	<div class="container" id="container">
	</div>
</body>
</html>