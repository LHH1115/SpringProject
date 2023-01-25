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
		$("#btnadd").click(function(){
			$("#link").append($('<input type="text" class="mylink form-control" id="links" name="links"><br class="linkbr">'));
		});
		$("#btnremove").click(function(){
			$('.mylink').last().remove(); 
			$('.linkbr').last().remove();
		});
		

		<% String aTitle = request.getParameter("rTitle");%>

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
<h2><%=aTitle %></h2>
<br>
<div class="insert">
	<form action="submitResumeOK.do" method="post" enctype="multipart/form-data">
		<input type="hidden" value="<%=aTitle %>" name="atitle">
		<div class="form-group">
		<label for="aname">이름</label>
		<input type="text" id="aname" name="aname" class="form-control" placeholder="이름을 입력해주세요" required="required"><br>
		</div>
		<div class="form-group">
		<label for="aphone">전화번호</label>
		<input type="text" id="aphone" name="aphone" class="form-control" placeholder="전화번호를 '-'을 제외한 숫자로 입력해주세요" required="required"><br>
		</div>
		<div class="form-group">
		<label for="aemail">이메일</label>
		<input type="email" id="aemail" name="aemail" class="form-control" placeholder="이메일을 입력해주세요" required="required"><br>
		</div>
		<div class="form-group" id ="link">
		<lable for ="links">블로그 및 GITHUB링크</lable>
		<button style="background-color: #9400d3" type="button" class="btn btn-dark" id="btnadd">+</button>
		<button style="background-color: #9400d3" type="button" class="btn btn-dark" id="btnremove">-</button>
		<br>
		<input type="text" class="mylink form-control" id="links" name="links" class="linkbr" placeholder="블로그 및 링크를 추가해주세요" required="required"><br>
		</div>
		<div>
		<label for="afile">첨부서류</label>
		<input type="file" class="form-control" id="afile" name="afile" aria-describedby="fileHelp"/><br>
		<small id="fileHelp" class="form-text text-muted">첨부파일이 여러개일 경우 압축파일로 업로드해주세요.</small>
		</div>
		<input type="submit" class="btn btn-dark" id="submit"value="제출" style="background-color: #9400d3">
		<input type="hidden" name="awork" value="1">
	</form>
	</div>
</div>
</div>

<!-- 메인창 끝 -->

<!-- 하단바 시작 -->
	<jsp:include page="../menu_footer.jsp" flush="false"/>
<!-- 하단바 끝 -->	
</body>
</html>