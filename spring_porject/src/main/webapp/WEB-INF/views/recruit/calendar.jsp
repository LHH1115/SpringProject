<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" media="screen" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-datetimepicker/2.5.20/jquery.datetimepicker.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-datetimepicker/2.5.20/jquery.datetimepicker.full.min.js"></script>
<style type="text/css">
.test01 {
    z-index: 9999 !important;
}
</style>
<script type="text/javascript">
	$(function() {
	    /*$( "#testDatepicker" ).datepicker({
	    	changeMonth: true, 
	        dayNames: ['월요일', '화요일', '수요일', '목요일', '금요일', '토요일', '일요일'],
	        dayNamesMin: ['월', '화', '수', '목', '금', '토', '일'], 
	        monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12'],
	        monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
	        beforeShowDay: function(date){
				var day = date.getDay();
				return [(day != 5 && day != 6)];
			},
	        onSelect: function(selectedDate){
	       		$("#time").removeClass("timeHidden");
	        	$("#time").addClass("timeShow");
	         },
	         timeFormat:'HH:mm:ss',
		        controlType:'select',
				oneLine:true,
	    });*/
	    $.datetimepicker.setLocale('kr');
	    $(".datetimepicker").datetimepicker({ 
	    	lang:"ko",
	    	format: "Y-m-d H:i",
			changeMonth: true,
			allowTimes: [
				'12:00','13:00'
			],
	        beforeShowDay: function(date){
				var day = date.getDay();
				return [(day != 5 && day != 6)];
			},
	        onSelect: function(selectedDate){
	       		$("#time").removeClass("timeHidden");
	        	$("#time").addClass("timeShow");
	         },
		});
	    
	    $("#testDatepicker").click(function(){
	    	 $("#time").removeClass("timeShow");
        	 $("#time").addClass("timeHidden");
	    });
	    
	    $("#btn_add").click(function(e){
	    	e.preventDefault();
	    	var date = "";
	    	date += $("#testDatepicker").val();
	    	console.log(date);
	    	$("#date").val(date);
	    	$("#f").trigger("submit");
	    });
	    
	    $("#f").submit(function(e){
	    	
	    	var data =$(this).serializeArray();
	    	$.ajax({
	    		url:"/TeamProject02/DateTest",
	    		data,data,
	    		success:function(re){
	    			if(re>0){
	    				alert("전송 성공");
	    				window.close();
	    			}else{
	    				alert("전송 실패");
	    			}
	    		}
	    	})
	    });
	    <%int aNo = Integer.parseInt(request.getParameter("aNo"));%>
	});
</script>
</head>
<body> 
<div class="test01">
	<form action="/TeamProject02/DateTest" id="f">
	<input type="button" class="datetimepicker" id="testDatepicker" name="date" autocomplete="off" value="날짜조희"><br><br>
	Date: <input type="text" name="finalDate" id="date" style="border:0 solid black"><br><br>
	<button class="btn btn-primary" id="btn_add" style="background-color: #9400d3; border-color: #9400d3;">스케줄 선택하기</button>
	<input type="hidden" name="aNo" value="<%=aNo%>" id="aNo"><br>
	</form>
</div>	
</body>
</html>