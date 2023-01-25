<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link href="../infobar.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="https://kit.fontawesome.com/bb9544ccb9.js" crossorigin="anonymous"></script>

</head>
<body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<!-- 메뉴바 시작 -->
 <jsp:include page="../menu_header.jsp" flush="false"/>
<!-- 메뉴바 끝 -->	


<!-- 메인창 시작  -->
<div style="margin:100px 100px 100px 100px;">
<div class="container">
	<div class="text center">
		<img src="/TeamProject02/image/grape.png" width="100%" height="180px;">
	</div>
	<br>
	<br>
	<div>
		<h2><strong>${title } (2022년 지원)</strong></h2>				
		<h4>[결과 및 코딩테스트 진행 안내]</h4>
	</div>
	
	<div>
		<p>안녕하세요.  ${name }님 <br>grape 인재영입담당자입니다.</p>
		<br>
		
		<h4><strong>${title} 최종합격을 진심으로 축하드립니다!</strong></h4>
		<br>
			
		<p>필요한 서류나 기타사항은 따로 메일로 보내드리겠습니다.</p>
	</div>
	</div>
</div>



<!-- 메인창 끝 -->

<!-- 하단바 시작 -->
	<jsp:include page="../menu_footer.jsp" flush="false"/>
<!-- 하단바 끝 -->	

</body>
</html>