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
		
		// 현재 날짜 가져오기
		var today = new Date();
		var year = today.getFullYear();
		var month = ('0'+(today.getMonth()+1)).slice(-2);
		var day = ('0'+today.getDate()).slice(-2);
		var todayDate = year+"/"+ month+"/"+day;
		
		// 채용게시판 가져오기
		$.ajax({
			url:"/TeamProject02/RecruitBoardList",
			success:function(arr){	
				$.each(arr,function(){
					var tr = $("<tr></tr>"); 
					var rbNo = $("<td></td>").html(this.rbNo);
					var rEndDate = $("<td></td>").html(this.rEndDate);
					if(this.rEndDate < todayDate){
						var rTitle = $("<td></td>").html("<a>"+this.rTitle+"</a>");	
						$(rEndDate).css("color","red");
					}else{
						var f = this.rTitle.charAt(0);
						if(f == "백"){
							var rTitle = $("<td></td>").html("<a href='newRecruitDetail1.jsp?rbNo="+this.rbNo+"'>"+this.rTitle+"</a>");	
						}else if(f == "네"){
							var rTitle = $("<td></td>").html("<a href='newRecruitDetail2.jsp?rbNo="+this.rbNo+"'>"+this.rTitle+"</a>");
						}
					}
					
					
					$(tr).append(rbNo,rTitle,rEndDate);
					$("#list").append(tr);
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
		<h1>채용공고</h1>
			<div id="RecruitBoard" class="table table-hover text-center">
				<table class="table">
					<thead>
	        			<tr class="table-dark">
	            			<th width="20%">번호</th>
	            			<th>제목</th>
	            			<th>마감일</th>
	        			</tr>
	      	 	 	</thead>
	        	<tbody id="list"></tbody>
	    	</table>
		</div>
	</div>
</div>

<!-- 메인창 끝 -->

<!-- 하단바 시작 -->
	<jsp:include page="../menu_footer.jsp" flush="false"/>
<!-- 하단바 끝 -->	
</body>
</html>