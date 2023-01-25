<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
 	
 	.afile{
 		display: none;
 	}
</style>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link href="../infobar.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="https://kit.fontawesome.com/bb9544ccb9.js" crossorigin="anonymous"></script>
<script type="text/javascript">
	$(function(){
		$("#btnadd").click(function(){
			$("#link").append($('<input type="text" class="mylink form-control" id="links" name="links"><br class="linkbr">'));
		});
		$("#btnremove").click(function(){
			$('.mylink').last().remove(); 
			$('.linkbr').last().remove(); 
		});
		
		$.ajax({
			url:"/TeamProject02/getMyResume",
			data:{"name":"${name}","type":${type},"info":"${info}"},
			success:function(data){
	
				var info = JSON.parse(data.info);
				var links = JSON.parse(data.links);
				var file = JSON.parse(data.file);
			
				console.log(info.aTitle);
				$("#title").html(info.aTitle);
					
				$("#aname").val(info.aName);
				$("#aphone").val(info.aPhone);
				$("#aemail").val(info.aEmail);
				
				$("#markn").val(info.aName);
				$("#markp").val(info.aPhone);
				
				
				$.each(links,function(key,value){
					var linkInput = $('<input type="text" class="mylink form-control" id="links" name="links"><br class="linkbr">').val(value.links);
					$("#link").append(linkInput);
					console.log(value);
				});
				
				$("#oldfilename").html(file.aFilepath);
			}
		});
		$("#btnuploadfile").click(function(){
			$("#afile").click();
		})
		
		$('#afile').change(function(ev) {
			$(".uploadbtn").addClass("afile");
			$(".files").removeClass("afile");
		   
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
<h2 id="title"></h2>
<br>
<div class="insert">
	<form action="updateResumeOK.do" method="post" enctype="multipart/form-data">
		<div class="form-group">
		<label for="aname">이름</label>
		<input type="text" id="aname" name="aname" class="form-control"><br>
		</div>
		<div class="form-group">
		<label for="aphone">전화번호</label>
		<input type="text" id="aphone" name="aphone" class="form-control"><br>
		</div>
		<div class="form-group">
		<label for="aemail">이메일</label>
		<input type="text" id="aemail" name="aemail" class="form-control"><br>
		</div>
		<div class="form-group" id ="link">
		<lable for ="links">블로그 및 GITHUB링크</lable>
		<button type="button" class="btn btn-dark" id="btnadd" style="background-color: #9400d3">+</button>
		<button type="button" class="btn btn-dark" id="btnremove" style="background-color: #9400d3">-</button>
		<br>
		<!--<input type="text" class="mylink form-control" id="links" name="links"><br class="linkbr"> -->
		</div>
		<div class="uploadbtn">
		<input type="hidden" name="oldFname" id="oldFile">
		<button type="button" id="btnuploadfile">파일선택</button><label id="oldfilename"></label>
		</div>
		<div class="files afile">
		<input type="file" id="afile" name="afile" multiple="multiple"/><br>
		</div>
		<input type="submit" class="btn btn-dark" id="submit"value="제출" style="background-color: #9400d3">
		<input type="hidden" name="markn" id="markn">
		<input type="hidden" name="markp" id="markp">
	</form>
</div>
</div>
</div>

<!-- 메인창 시작 -->

<!-- 하단바 시작 -->
	<jsp:include page="../menu_footer.jsp" flush="false"/>
<!-- 하단바 끝 -->	
</body>


</html>