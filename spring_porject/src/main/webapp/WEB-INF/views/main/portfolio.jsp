<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
<link href="infobar.css" rel="stylesheet" type="text/css">

<style type="text/css">
.portfolioImages{
		
		
	}
	.imgDIV{
		float: left;
		margin-left: 10px;
		margin-bottom: 10px;
	}
	
	.btn:hover{
		color: white;
		transform: scale(1.1);
	}
	button{
		color:white;
		background-color: purple;
	}
	
	
</style>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script src="https://kit.fontawesome.com/bb9544ccb9.js" crossorigin="anonymous"></script>
<script type="text/javascript">
$(function(){
	var totalIMG=10;
	var linkData =[
			'https://www.coovil.net/project_iqforex/',
			'https://www.coovil.net/project_safewifi/',
			'https://www.coovil.net/project_pitta/',
			'https://www.coovil.net/project_watchair/',
			'https://www.coovil.net/project_coolmeet/',
			'https://www.coovil.net/project_tagmarket/',
			'https://www.coovil.net/project_fishingtag/',
			'ttps://www.coovil.net/project_tomato/',
			'https://www.coovil.net/project_ezsync/',
			'https://www.coovil.net/project_coovil/'
	]
		
	for(i=1;i<=totalIMG;i++){
		var no = i;
		var data = linkData[i-1];
		if(i<10){
			no = "0"+i;
		}
		var src = "order/portfolioImages/IMG"+no+".jpg";
		var name = "IMG"+no+"jpg";
		var div = $("<div></div>").addClass("imgDIV");
		var a = $("<a href='"+data+"'></a>").attr("id","IMGlink");
		//var a = $("<a href='#'></a>").attr("id","IMGlink");
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
	
});
</script>
</head>
<body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<!-- 메뉴바 -->
	  <jsp:include page="menu_header.jsp" flush="false"/>
<!-- 메뉴바 -->	

<div class="text-center mt-5 mb-5"> 
<br>
<br>
<h3>포트폴리오</h3>
</div>
<div class="container mt-5 mb-5">
<div class="row">
	<div class="col-md-4 col-sm-12 wrapper">
		<div class="card">
		   <img src="./order/portfolioImages/IMG01.jpg" width="100%">
		<div class="card-body text-center">
   		
 <!-- Button trigger modal -->
 		 <button type="button" class="btn text-white" style="background-color: #9400d3;" data-bs-toggle="modal" data-bs-target="#port1">
 		Coovil-Iqforex
		</button>
		<!-- Modal -->
		<div class="modal fade" id="port1" tabindex="-1" aria-labelledby="label1" aria-hidden="true">
  		<div class="modal-dialog">
   		 <div class="modal-content">
    	  <div class="modal-header">
       	  <h1 class="modal-title fs-5" id="label1">Coovil-Iqforex</h1>
        	<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
     	 </div>
      <div class="modal-body">
      <프로젝트 참여범위><br>
	  1.서비스 기획<br>
	  2.안드로이드 앱 개발 (Java)<br>
	  3.서버 어플리케이션/관리자페이지 개발 (PHP)<br>
	  4.앱 랜딩 페이지 제작
      </div>
      <div class="modal-footer">
        <button type="button" onclick="location.href='https://www.coovil.net/pr	oject_iqforex'" class="btn text-white" style="background-color: #9400d3;">상세 사이트 확인</button>
      </div>
    </div>
  </div>
</div>
<!-- 여기까지 모달 -->
		</div>
		</div>
	</div>
	
	<div class="col-md-4 col-sm-12 wrapper">
		<div class="card">
		  <img src="./order/portfolioImages/IMG02.jpg" width="100%">
		<div class="card-body text-center">
   <!-- Button trigger modal -->
 		 <button type="button" class="btn text-white" style="background-color: #9400d3;" data-bs-toggle="modal" data-bs-target="#port2">
 		Coovil-SafeWifi
		</button>
		<!-- Modal -->
		<div class="modal fade" id="port2" tabindex="-1" aria-labelledby="label2" aria-hidden="true">
  		<div class="modal-dialog">
   		 <div class="modal-content">
    	  <div class="modal-header">
       	  <h1 class="modal-title fs-5" id="label2">Coovil-SafeWifi</h1>
        	<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
     	 </div>
      <div class="modal-body">
      <프로젝트 참여범위><br>
		1.아이폰 앱 개발 (Objective-C, UI 디자인 제외)<br>
		2.윈도우즈 어플리케이션 개발 (C++ Builder)
      </div>
      <div class="modal-footer">
        <button type="button" onclick="location.href='https://www.coovil.net/project_safewifi'" class="btn text-white" style="background-color: #9400d3;">상세 사이트 확인</button>
      </div>
    </div>
  </div>
</div>
<!-- 여기까지 모달 -->
		</div>
		</div>
	</div>
	
	<div class="col-md-4 col-sm-12 wrapper mb-5">
		<div class="card">
		   <img src="./order/portfolioImages/IMG03.jpg" width="100%">
		<div class="card-body text-center">
 <!-- Button trigger modal -->
 		 <button type="button" class="btn text-white" style="background-color: #9400d3;" data-bs-toggle="modal" data-bs-target="#port3">
 		Coovil-Pitta
		</button>
		<!-- Modal -->
		<div class="modal fade" id="port3" tabindex="-1" aria-labelledby="label3" aria-hidden="true">
  		<div class="modal-dialog">
   		 <div class="modal-content">
    	  <div class="modal-header">
       	  <h1 class="modal-title fs-5" id="label3">Coovil-Pitta</h1>
        	<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
     	 </div>
      <div class="modal-body">
      <프로젝트 참여범위><br>
		1.앱 그래픽 디자인<br>
		2.안드로이드 앱 프로토타입 개발 (Native)<br>
		3.서버 어플리케이션/관리자페이지 개발 (PHP)
      </div>
      <div class="modal-footer">
        <button type="button" onclick="location.href='https://www.coovil.net/project_pitta'" class="btn text-white" style="background-color: #9400d3;">상세 사이트 확인</button>
      </div>
    </div>
  </div>
</div>
<!-- 여기까지 모달 -->
		</div>
		</div>
	</div>
	
	<div class="col-md-4 col-sm-12 wrapper">
		<div class="card">
		  <img src="./order/portfolioImages/IMG04.jpg" width="100%">
		<div class="card-body text-center">
    <!-- Button trigger modal -->
 		 <button type="button" class="btn text-white" style="background-color: #9400d3;" data-bs-toggle="modal" data-bs-target="#port4">
 		Coovil-WetChair
		</button>
		<!-- Modal -->
		<div class="modal fade" id="port4" tabindex="-1" aria-labelledby="label4" aria-hidden="true">
  		<div class="modal-dialog">
   		 <div class="modal-content">
    	  <div class="modal-header">
       	  <h1 class="modal-title fs-5" id="label4">Coovil-WetChair</h1>
        	<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
     	 </div>
      <div class="modal-body">
      내용
      </div>
      <div class="modal-footer">
        <button type="button" onclick="location.href='https://www.coovil.net/project_pitta'" class="btn text-white" style="background-color: #9400d3;">상세 사이트 확인</button>
      </div>
    </div>
  </div>
</div>
<!-- 여기까지 모달 -->
		</div>
		</div>
	</div>
	
	<div class="col-md-4 col-sm-12 wrapper">
		<div class="card">
		   <img src="./order/portfolioImages/IMG05.jpg" width="100%">
		<div class="card-body text-center">
	 <!-- Button trigger modal -->
 		 <button type="button" class="btn text-white" style="background-color: #9400d3;" data-bs-toggle="modal" data-bs-target="#port5">
 		Coovil-CoolMeet
		</button>
       <!-- Modal -->
		<div class="modal fade" id="port5" tabindex="-1" aria-labelledby="label5" aria-hidden="true">
  		<div class="modal-dialog">
   		 <div class="modal-content">
    	  <div class="modal-header">
       	  <h1 class="modal-title fs-5" id="label5">Coovil-CoolMeet</h1>
        	<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
     	 </div>
      <div class="modal-body">
      내용
      </div>
      <div class="modal-footer">
        <button type="button" onclick="location.href='https://www.coovil.net/project_pitta'" class="btn text-white" style="background-color: #9400d3;">상세 사이트 확인</button>
      </div>
    </div>
  </div>
</div>
<!-- 여기까지 모달 -->
		</div>
		</div>
	</div>
	
	<div class="col-md-4 col-sm-12 wrapper mb-5">
		<div class="card">
		   <img src="./order/portfolioImages/IMG06.jpg" width="100%">
		<div class="card-body text-center">
 <!-- Button trigger modal -->
 		 <button type="button" class="btn text-white" style="background-color: #9400d3;" data-bs-toggle="modal" data-bs-target="#port6">
 		Coovil-TagMarket
		</button>
       <!-- Modal -->
		<div class="modal fade" id="port6" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  		<div class="modal-dialog">
   		 <div class="modal-content">
    	  <div class="modal-header">
       	  <h1 class="modal-title fs-5" id="exampleModalLabel">Coovil-TagMarket</h1>
        	<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
     	 </div>
      <div class="modal-body">
      내용
      </div>
      <div class="modal-footer">
        <button type="button" onclick="location.href='https://www.coovil.net/project_pitta'" class="btn text-white" style="background-color: #9400d3;">상세 사이트 확인</button>
      </div>
    </div>
  </div>
</div>
<!-- 여기까지 모달 -->
		</div>
		</div>
	</div>
	
	<div class="col-md-4 col-sm-12 wrapper">
		<div class="card">
		   <img src="./order/portfolioImages/IMG07.jpg" width="100%">
		<div class="card-body text-center">
   			 <!-- Button trigger modal -->
 		 <button type="button" class="btn text-white" style="background-color: #9400d3;" data-bs-toggle="modal" data-bs-target="#port7">
 		Coovil-Fishingtag
		</button>
       <!-- Modal -->
		<div class="modal fade" id="port7" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  		<div class="modal-dialog">
   		 <div class="modal-content">
    	  <div class="modal-header">
       	  <h1 class="modal-title fs-5" id="exampleModalLabel">Coovil-Fishingtag</h1>
        	<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
     	 </div>
      <div class="modal-body">
      내용
      </div>
      <div class="modal-footer">
        <button type="button" onclick="location.href='https://www.coovil.net/project_pitta'" class="btn text-white" style="background-color: #9400d3;">상세 사이트 확인</button>
      </div>
    </div>
  </div>
</div>
<!-- 여기까지 모달 -->	
		</div>
		</div>
	</div>
	
	<div class="col-md-4 col-sm-12 wrapper">
		<div class="card">
		   <img src="./order/portfolioImages/IMG08.jpg" width="100%">
		<div class="card-body text-center">
<!-- Button trigger modal -->
 		 <button type="button" class="btn text-white" style="background-color: #9400d3;" data-bs-toggle="modal" data-bs-target="#port8">
 		Coovil-Tomato
		</button>
       <!-- Modal -->
		<div class="modal fade" id="port8" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  		<div class="modal-dialog">
   		 <div class="modal-content">
    	  <div class="modal-header">
       	  <h1 class="modal-title fs-5" id="exampleModalLabel">Coovil-Tomato</h1>
        	<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
     	 </div>
      <div class="modal-body">
      내용
      </div>
      <div class="modal-footer">
        <button type="button" onclick="location.href='https://www.coovil.net/project_pitta'" class="btn text-white" style="background-color: #9400d3;">상세 사이트 확인</button>
      </div>
    </div>
  </div>
</div>
<!-- 여기까지 모달 -->
		</div>
		</div>
	</div>
	
	<div class="col-md-4 col-sm-12 wrapper mb-5">
		<div class="card">
		   <img src="./order/portfolioImages/IMG09.jpg" width="100%">
		<div class="card-body text-center">
 <!-- Button trigger modal -->
 		 <button type="button" class="btn text-white" style="background-color: #9400d3;" data-bs-toggle="modal" data-bs-target="#port">
 		Coovil-Ezsync
		</button>
       <!-- Modal -->
		<div class="modal fade" id="port9" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  		<div class="modal-dialog">
   		 <div class="modal-content">
    	  <div class="modal-header">
       	  <h1 class="modal-title fs-5" id="exampleModalLabel">Coovil-Ezsync</h1>
        	<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
     	 </div>
      <div class="modal-body">
      내용
      </div>
      <div class="modal-footer">
        <button type="button" onclick="location.href='https://www.coovil.net/project_pitta'" class="btn text-white" style="background-color: #9400d3;">상세 사이트 확인</button>
      </div>
    </div>
  </div>
</div>
<!-- 여기까지 모달 -->
		</div>
		</div>
	</div>
	
	
	<div class="col-md-4 col-sm-12 wrapper">
		<div class="card">
		 
		   <img src="./order/portfolioImages/IMG10.jpg" width="100%">
		<div class="card-body text-center">
   			 <!-- Button trigger modal -->
 		 <button type="button" class="btn text-white" style="background-color: #9400d3;" data-bs-toggle="modal" data-bs-target="#port10">
 		Coovil-Coovil
		</button>
 <!-- Modal -->
		<div class="modal fade" id="port10" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  		<div class="modal-dialog">
   		 <div class="modal-content">
    	  <div class="modal-header">
       	  <h1 class="modal-title fs-5" id="exampleModalLabel">Coovil-Coovil</h1>
        	<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
     	 </div>
      <div class="modal-body">
      내용
      </div>
      <div class="modal-footer">
        <button type="button" onclick="location.href='https://www.coovil.net/project_pitta'" class="btn text-white" style="background-color: #9400d3;">상세 사이트 확인</button>
      </div>
    </div>
  </div>
</div>
<!-- 여기까지 모달 -->
		</div>
		</div>
	</div>


</div>
</div>


<!-- 하단바 -->
	<jsp:include page="menu_footer.jsp" flush="false"/>
<!-- 하단바  -->	

</body>
</html>