<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
 <link href="../infobar.css" rel="stylesheet" type="text/css">

<meta charset="UTF-8">
<title>oldOrderDetail</title>
<script src="https://kit.fontawesome.com/bb9544ccb9.js" crossorigin="anonymous"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script type="text/javascript">
	$( document ).ready( function() {
	    $( '#level' ).removeClass( 'row g-3' );
	   	if(${cProgress } >10 ){
	   		console.log("10보다큼");
	   		$("#cPhoto").attr("src","oldOrderImages/kakao.png");
	   	}else{
	   		$("#cPhoto").attr("src","https://cdn.dribbble.com/users/418188/screenshots/3102257/media/3e505857302cdd6a3c142deff7355826.gif");
	   		$("#text").append( $("<h3></h3>").html("작업이 진행중입니다.") );
	   	}
	   	
	  });
</script>
</head>
<body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>


<!-- 메뉴바 -->
	  <jsp:include page="../menu_header.jsp" flush="false"/>
<!-- 메뉴바 -->
	
<form id="f" style="margin:100px 100px 100px 100px;" method="post" action="oldOrderOK.do" enctype="multipart/form-data">
	
	<h1 id="cName">${cName } 진행상황</h1>
	<img src="" style="width:800px; height:500px;" id="cPhoto"><br>
	<div id="text">
	</div>
	
	<label class="form-label">진행도</label><br>
	<div class="progress" style="height:30px;">
	  <div class="progress-bar" role="progressbar" aria-label="Example with label" style="height:30px; width: ${cProgress }%; background-color: #9400d3; border-color: #9400d3;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">${cProgress }%</div>
	</div>
	<br>
	<hr>
	<div class="mb-3">
		  <label for="cAdd" class="form-label">추가 문의 내용</label>
		  <textarea name="content" id="content" class="form-control" id="addInfoNo" rows="3" placeholder="추가 문의 내용 입력바랍니다." required="required" autocomplete="off"></textarea>
	</div>
		<input type="hidden" name="cNo" value="${cNo }">
	
	<div class="input-group" style="width:500px;">
 	 <input type="file" class="form-control" id="inputGroupFile04" aria-describedby="inputGroupFileAddon04" aria-label="Upload" name="uploadFile" >
 	</div>
 	
 	<br>
 	<hr>
	<div class="col-12">
		<input type="submit" value="등록" class="btn btn-primary mb-3" style="background-color: #9400d3; border-color: #9400d3;">
	</div>
	
	
</form>	

<!-- 하단바 -->
	<jsp:include page="../menu_footer.jsp" flush="false"/>
<!-- 하단바  -->

</body>
</html>



















