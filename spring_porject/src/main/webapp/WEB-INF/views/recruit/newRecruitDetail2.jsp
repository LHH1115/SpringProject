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
<script type="text/javascript">
	$(function(){
		
		<% int rbNo =  Integer.parseInt(request.getParameter("rbNo")); %>
		
		$.ajax({
			url:"/TeamProject02/RecruitBoardDetail",
			data:{"rbNo":<%=rbNo%>},
			success:function(arr){
				var rtitle = arr.rTitle;
				var rEndDate = arr.rEndDate;
				var rStartDate = arr.rStartDate;
				$("#title > h2").append(rtitle);
				$("#title > p").append(rStartDate+"~"+rEndDate);
				
				$(document).on("click","#btn_input",function(){
					location.href="newRecruitInput.jsp?rTitle="+arr.rTitle+"&rWork="+arr.rWork;
				});
				
			}
		});
		
		
				
	});
</script>
</head> 
<body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<!-- 메뉴바 시작 -->
 <jsp:include page="../menu_header.jsp" flush="false"/>
<!-- 메뉴바 끝 -->	


<!-- 메인창 시작 -->
<div style="margin:100px 100px 100px 100px;">
<div class="container">
	<!-- 제목 -->
	<div id="title">
		<h2></h2>
		<p>정규직 &nbsp;&nbsp;&nbsp;&nbsp;</p>
		<button id="btn_input" type="button" class="btn btn-success active" style="background-color: #9400d3">지원하기</button>
		&nbsp;&nbsp;&nbsp;&nbsp;
		<!-- 이력서 양식 다운로드 -->
		<a style="color: black;text-decoration: none" href="./resume.hwp" download>● [ 이력서 다운로드 ]</a>
		<hr>
	</div>
		
	<!-- 본문 -->	
	<div>
		<p><strong>◆ 직원유형</strong><br/>정규직</p>
		<br/>
			
		<p><strong>◆ 영입인원</strong><br/>0 명</p>
		<br>
			
		<p><strong>◆ 모집분야 및 지원자격</strong></p>
		<p><strong>[지원자격]</strong></p>
		<p><span>- 네트워크 관련 5~7년 정도의 경력을 가지고 있으며 네트워크에 열정이 넘치는 미들레벨 엔지니어</span></p>
		<p><span>- CCNP 이상 또는 그에 준하는 네트워크 관련 기술이나 경력 보유</span></p>
		<br>
			
		<p><strong>[우대사항]</strong></p>
		<p><span>- 네트워크 가상화 구축 경험이 있으신 분</span></p>
		<p><span>- 장비 BMT 등 TEST 경험이 많으신 분</span></p>
		<p><span>- bash, python 등을 이용한 인프라 관리 자동화 스크립트 가능하신 분</span></p>
		<p><span>- Linux 사용 경험이 있으신 분</span></p>
		<br>	
		
		<p><strong>◆ 지원프로세스</strong><br>서류전형 &gt; 코딩테스트 &gt; 1차 인터뷰 &gt; 2차 인터뷰</p>
		<br>
		※ 일정은 변경될 수 있으며, 각 전형 결과는 개별적으로 안내드릴 예정입니다.<br>
		※ 지원서 접수 마감 시 접속량이 많아 접수에 어려움이 예상되오니 사전 지원을 권장드립니다.
		<hr>
	
		<p><strong>◆ 필독사항</strong></p>
		※ 영입 포지션 직군 경력 1년 미만일 시 추가 역량 검증을 위해 정직원 최종 합격 전, 최대 3개월간 계약직으로 근무할 수 있습니다.<br>
		(단, 신입공채 전형 합격자의 경우에는 관련 경력 1년 미만이라도 정규직으로 입사하게 됩니다.)		
	</div>
	</div>
</div>

<!-- 메인창 끝 -->

<!-- 하단바 -->
	<jsp:include page="../menu_footer.jsp" flush="false"/>
<!-- 하단바  -->	

</body>
</html>