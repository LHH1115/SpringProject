<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
 <link href="infobar.css" rel="stylesheet" type="text/css">
 
<script src="https://kit.fontawesome.com/bb9544ccb9.js" crossorigin="anonymous"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script type="text/javascript">

</script>
</head>
<body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<!-- 메뉴바 -->
	  <jsp:include page="menu_header.jsp" flush="false"/>
<!-- 메뉴바 -->	



<!-- 메인창 -->




<div class="container">

  <div class="row my-5">
	<div class="col-7">
		<br>
		<br>
		<br>
		<br>
		<h2>우리가 추구하는 길</h2>
		<p>새로운 '도전'을 두려워 하지 않겠습니다.<br> 처음 가보는 길은 낯섦에서 오는 두려움이 가득하지만 처음이기에 다가오는 설렘으로<br> 그 도전을 가치있게 받아드리겠습니다. <br>혁신으로 가는 길을 우리 Grape와 함께 하겠습니다.</p>
	</div>
	<div class="col-5">
		<img alt="" src="https://aramobile.com/assets/img/app_innov.gif" class="w-100" />
		<!-- 사진 출처: https://aramobile.com/ -->
	</div>
 </div>
 
  <div class="row my-5">
	<div class="col-5">
		<img alt="" src="https://aramobile.com/assets/img/prototyping.gif" class="w-100" />
		<!-- 사진 출처: https://aramobile.com/ -->
	</div>
	<div class="col-7">
		<br>
		<br>
		<br>
		<h2>팀원</h2>
		<p> "재능은 게임을 이기게 한다. 그러나 팀워크는 우승을 가져온다." <br>성장을 위한 가장 확실한 방법은 뛰어난 동료와 함께 있는 것입니다. <br>동료와 함께라면 성공의 기쁨은 두배가 되고 실패를 두려워 하지 않고 <br> 위험을 감수 할 수 있는 용기가 생깁니다. 신뢰를 바탕으로 동료와 함께 완성해 나가겠습니다.</p>
	</div>
	</div>
	
  <div class="row my-5 mb-">
	<div class="col-7">
		<br>
		<br>
		<br>
		<h2>복지혜택</h2>
		<h4>1.복지대출지원</h4>
		<p>직원들의 복리증진과 생활안정을 목적으로 주택구입 및 임차, 생활안정을 위해 최대 1억까지 대출금 지원</p>
		<h4>2.경조사지원</h4>
		<p>직원 및 직원 가족의 경조사 발생 시 축하와 조의의 마음을 전하고자 경조휴가와 함께 <br>경조사비/화환/용품을 제공</p>
		<h4>3.어린이집</h4>
		<p>"아이와 함께하는 출퇴근이 어색하지 않아요" Grape만의 특성화된 프로그램으로 운영</p>
	</div>
	<div class="col-5">
		<img alt="" src="https://aramobile.com/assets/img/web_developing.gif" class="w-100" />
			<!-- 사진 출처: https://aramobile.com/ -->
	</div>
  </div>
  
</div>

<main>
<div class="text-center mt-5 mb-5"> 
<br>
<br>
<h3>부서소개</h3>
<button type="button" onclick="location.href='recruit/newRecruitBoard.jsp'" class="button-style-recruit button-style-recruit:hover">채용 페이지로 이동</button>
</div>
<div class="container mb-5">
<div class="row">
	<div class="col-md-4 col-sm-12 wrapper">
		<div class="card">
			<img src="https://aramobile.com/assets/img/icons/development.png" class="card-img-top" alt="...">
			<!-- img 출처: https://aramobile.com/ -->
		<div class="card-body text-center">
   			<h5 class="card-title">개발</h5>
   			<p class="card-text">Front-end : Back-end</p>
   			<div>1.웹 기술 언어 활용하여 다양한 플랫폼과의 웹 호환이 가능한 어플리케이션을 개발
				<br>2.저장된 데이터를 활용하거나 비즈니스 로직을 처리하여 적절한 응답을 전달하는 서버개발</div>
		</div>
		</div>
	</div>
	
	<div class="col-md-4 col-sm-12 wrapper">
		<div class="card text-center">
			<img src="https://aramobile.com/assets/img/icons/compass.png" class="card-img-top" alt="...">
			<!-- img 출처: https://aramobile.com/ -->
		<div class="card-body mb-2">
   			<h5 class="card-title text-center">UX</h5>
   			<br>
   			<p class="card-text">사용자들이 좀 더 쉽고 편리하게 서비스를 이용할 수 <br>있도록 실질적인 디자인 해결책 구상<br>
								더 나은 사용자 경험을 위해 기획/디자인/개발 파트와 긴밀하게 협업</p>
		</div>
		</div>
	</div>
	
	<div class="col-md-4 col-sm-12 wrapper">
		<div class="card text-center">
			<img src="https://aramobile.com/assets/img/icons/strategy.png" class="card-img-top" alt="...">
			<!-- img 출처: https://aramobile.com/ -->
		<div class="card-body mb-4">
   			<h5 class="card-title text-center">네트워크</h5>
   			<br>
   			<p class="card-text">데이터센터 네트워크를 적시에 설계, 구축, 운영하며 <br>대용량 트래픽 분산처리를 트래픽을 안정적으로 <br>업무 처리 .</p>
		</div>
		</div>
	</div>

</div>
</div>
</main>

<!-- 메인창 -->




<!-- 하단바 -->
	<jsp:include page="menu_footer.jsp" flush="false"/>
<!-- 하단바  -->	

</body>
</html>