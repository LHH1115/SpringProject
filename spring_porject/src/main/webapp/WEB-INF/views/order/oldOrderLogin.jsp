<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
 <link href="../infobar.css" rel="stylesheet" type="text/css">



<script src="https://kit.fontawesome.com/bb9544ccb9.js" crossorigin="anonymous"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script type="text/javascript">
	$(function(){
		$("#oldOrderLogin").submit(function(e){
			e.preventDefault();
			var data = $(this).serializeArray();
			//console.log(data);
			$.ajax({
				url:"/TeamProject02/OldOrderLoginCheck",
				data:data,
				type: "post",
				success:function(cNo){
					//console.log(cNo);
					if(cNo > 0){
						alert("로그인 성공");
						//액션 통해서 페이지 옮겨도 됩니다.
						//$(location).attr('href', "oldOrderDetail.jsp?cNo="+cno);
						$("#cNo").val(cNo)
						$("#logForm").trigger("submit");
					}else{
						alert("로그인 실패");
						$("#cPhone").empty();
					}
				}
			})
		})
	});
	
	function AddInfoFailed() {
		var queryString = document.location.search.replace('?','');
        var parameters = queryString.split('&');
        for (i=0; i<parameters.length; i++)
        {
            if (parameters[i].substring(0,8) == 'AddInfo=')
            {
                if(parameters[i].replace('AddInfo=','') == 'false')
                {
                    alert('문의 내용을 다시 확인해주세요');
                    return;
                }
            }
        }
	}
	
	function onload() {
		AddInfoFailed();
	}
</script>
</head>
<body onload="onload()">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<!-- 메뉴바 -->
	  <jsp:include page="../menu_header.jsp" flush="false"/>
<!-- 메뉴바 -->
	<form action="" method="post" id="oldOrderLogin" style="margin:100px 100px 100px 100px;" >
	<div class="container">
		<h1>문의 업체 확인 절차</h1>
		<div class="col-md-6" >
		    <label for="cCode" class="form-label">회사 상호명</label>
		    <input type="text" class="form-control" id="cName" placeholder="회사 상호명을 영문으로 입력해주세요" name="cName" >
	 	</div>
		<hr>
		<div class="col-md-6">
		    <label for="cCode" class="form-label">담당자분 전화 번호</label>
		    <input type="password" class="form-control" id="cCode" placeholder="담당자분 전화 번호 '-'을 제외한 숫자를 입력해주세요" name="cPhone">
	 	</div>
	 	<hr>
		<div class="col-auto">	
   			<button type="submit" class="btn btn-primary mb-3" value="로그인" style="background-color: #9400d3; border-color: #9400d3;">로그인</button>
 		</div>
 		<br>	
 			</div>		
	</form>

	<form action="oldOrderDetail.do" method="post" id="logForm">
		<input type="hidden" name="cNo" id="cNo">
	</form>
<!-- 하단바 -->
	<jsp:include page="../menu_footer.jsp" flush="false"/>
<!-- 하단바  -->	
</body>
</html>