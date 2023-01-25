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
		$(document).on("click","#port",function(e){
			e.preventDefault();
			$("#selected").val("");
			window.open("newOrderPortfolio.jsp","selectport","width=470, height=500");
		})
		
		$(document).on("click","#addr",function(e){
			e.preventDefault();
			$("#addrSelected").val("");
			new daum.Postcode({
		        oncomplete: function(data) {
		        	//console.log("검색완료"+data.address);
		            $("#f").find("#addrSelected").val(data.address);
		        }
		    }).open();
		})
	
	});

	function OrderFailed() {
		var queryString = document.location.search.replace('?','');
        var parameters = queryString.split('&');
        for (i=0; i<parameters.length; i++)
        {
            if (parameters[i].substring(0,6) == 'Order=')
            {
                if(parameters[i].replace('Order=','') == 'false')
                {
                    alert('문의 내용을 다시 확인해주세요');
                    return;
                }
            }
        }
	}
	function cServiceFailed() {
		var queryString = document.location.search.replace('?','');
        var parameters = queryString.split('&');
        for (i=0; i<parameters.length; i++)
        {
            if (parameters[i].substring(0,9) == 'cService=')
            {
                if(parameters[i].replace('cService=','') == 'false')
                {
                    alert('올바른 제작구분을 선택해주세요');
                    return;
                }
            }
        }
	}
	
	function onload() {
		OrderFailed();
		cServiceFailed();
	}
</script>
</head>
<body onload="onload()">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>	
	
<!-- 메뉴바 -->
	  <jsp:include page="../menu_header.jsp" flush="false"/>
<!-- 메뉴바 -->	
	
	
	<form  action="newOrderOK.do" id="f" class="row g-3" style="margin:100px 100px 100px 100px;">
		<h1>신규 문의 신청</h1>
		
		<div class="col-md-6">
		  <label for="exampleFormControlInput1" class="form-label">회사명</label>
		  <input type="text" class="form-control" name="cName" placeholder="회사 상호명 입력 부탁드립니다." required="required" autocomplete="off">
		</div>
		
		<div class="col-md-6">
		  <label for="exampleFormControlInput1" class="form-label">연락처</label>
		  <input type="text" class="form-control" name="cPhone" placeholder="담당자분 번호 '-'을 제외한 숫자 입력 부탁드립니다." required="required" autocomplete="off">
		</div>
		
		<div class="col-md-6">
		  <label for="exampleFormControlInput1" class="form-label">담당자</label>
		  <input type="text" class="form-control" name="cManager" placeholder="대표 담당자분 성함 입력 부탁드립니다." required="required" autocomplete="off">
		</div>
		
		<div class="col-md-6">
		  <label for="exampleFormControlInput1" class="form-label">E-mail</label>
		  <input type="email" class="form-control" name="cEmail" placeholder="담당자분 E-mail 입력 부탁드립니다." required="required" autocomplete="off">
		</div>
	
		
		
		
		<div class="col-md-6">
		  <label for="exampleFormControlInput1" class="form-label">주소</label>
		  <input name="cAddr" type="text" class="form-control" id="addrSelected" placeholder="주소 검색후 상세주소 입력부탁드립니다." required="required" autocomplete="off">
		</div>
		
		<div class="col-12">
		<button id="addr" class="btn btn-primary mb-3" style="background-color: #9400d3; border-color: #9400d3;">주소검색</button><br>
		</div>
		<hr>
		
		<div class="col-md-6">
		제작구분<br>
		<select name="cService" class="form-select" aria-label="Default select example" style="margin: 8px 0px 10px 0px;">
		  <option value="8">제작 구분을 선택하여 주세요</option>
		  <option value="1">쇼핑몰</option>
		  <option value="2">홈페이지</option>
		  <option value="3">네이티브 앱</option>
		  <option value="4">서비스 개발</option>
		  <option value="5">마케팅</option>
		  <option value="6">유지보수</option>
		  <option value="7">기타 (◆ 문의내용에 제작 구분을 적어주세요)</option>
		</select>
		</div>
		
		
		<hr>
			
		
		
		
		
		<div class="col-md-6">
		  <label for="exampleFormControlInput1" class="form-label">예상제작비용</label>
		  <input type="text" class="form-control" name="cPrice" placeholder="예상제작비용을 만(원) 단위 숫자로 입력 바랍니다." required="required" autocomplete="off">
		</div>
		<br>
		
		<div class="col-md-6">
		  <label for="exampleFormControlInput1" class="form-label">선택된 포트폴리오</label>
		  <input type="text" class="form-control" id="selected" name="cPortfolio" placeholder="포트폴리오 선택을 클릭해주세요." required="required" autocomplete="off">
			<div class="col-12">
			<button id="port" class="btn btn-primary mb-3" style="background-color: #9400d3; border-color: #9400d3; margin:10px 0px 0px 5px;">포트폴리오 선택</button>
			</div>
		</div>
		<hr>
		
		
		<div class="mb-3">
		  <label for="cInfo" class="form-label">문의 내용</label>
		  <textarea class="form-control" id="cInfo" rows="3" placeholder="문의 내용 입력바랍니다." required="required" autocomplete="off"></textarea>
		</div>
		<br>
		<div class="col-12">
		<input type="submit" value="등록" class="btn btn-primary mb-3" style="background-color: #9400d3; border-color: #9400d3;">
		</div>
	</form>
	
<!-- 하단바 -->
	<jsp:include page="../menu_footer.jsp" flush="false"/>
<!-- 하단바  -->	
	
</body>
</html>