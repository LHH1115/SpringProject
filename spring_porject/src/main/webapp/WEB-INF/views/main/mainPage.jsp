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
<style type="text/css">

	body{
	  margin: 0px;
	  font-family: 'Jua', sans-serif;
	  color: black;
	  width:100%;
	  font-size: 18px;
	}

	a{
	  color: black;
	  text-decoration: none;
	}
	
	a:hover{
	      color: #9400d3;
	}
	
  .wrap
    {
      width:100%;
     
      font-weight:700px;
      height: 100px;
	  background-color: white;
	  display: flex;
	  justify-content: space-around;
	  align-items: center;
    }

    .menubar
    {
        width:1024px;
        margin: 0 auto;
        border:none;
        background: white;
        overflow: hidden;
        
    }

    .menuLogo
    {	padding-top:35px;
    	margin:50px;
        width:100px;
        float:left;
    }
    
   .menuItem{
	    padding-bottom: 15px;
	    padding-top: 15px;
	    
	    font-weight:600;
	    float:right;
        padding: 20px 17px;
        margin-top: 70px;
	    
   }

    .menubar ul
    {
        background: white;
        height:50px;
        list-style:none;
       
    }

    .menubar li
    {
        float:left;
    }

    .menubar a
    {
        color:black;
        display:block;
        font-weight: 700;
        line-height:49px;
        padding:1px 30px;
        text-align:center;
    }

    .menubar li:hover ul
    {
        display:block;
    }
	
    .menubar li:hover li a
    {
        background:none;
    }

    .menubar li ul
    {
        background-color:white;
		
        display:none;
        height:auto;
        position:absolute;
        z-index:999;
    }

    .menubar li li a ,
    .menubar li li
    {
        background: white;
        display:block;
        float:none;
        min-width:90px;
       
           
    }

    .menubar li ul a
    {
        display:block;
        height:50px;
        font-weight: 400px;
        padding:0px 15px 0px 15px;
        text-align:left;
        font-weight: 700;
        font-size: 15px;
        color: black;
    }

	.menubar li a:hover {
        background: white;
        color:#9400d3;
    }

main{
    height: 1100px;
    background-color: white;
    align-items: center;
    justify-content: center;
 }
 
.photoSize{
	height: 575.42px;	
}

.mainphoto{
	padding-top:0px;
	align-items: center;
}
 
.mainSentence{
	text-align: center;
}
 
.mainFirst{
	margin-top:30px;
	align-items: center;
}
 
 .mainFirstSentence{
 	padding-bottom: 12px;
 	font-weight: 550;
 }
 
.button-area{
	margin: 10px;
}

.button-style{
  	padding: 5px 20px;
    background-color: white;
  	border: none;
  	font-size: inherit;
    color: #9400d3;
    font-weight: 700;
    font-size: 25px;
  	/*border-radius: 500px;*/
  	cursor: pointer;
  
}
.button-style:hover{
    transform: scale(1.2);
    color: #9400d3;

} 
 
.mainSecondPart{
	align-items: center;
	margin:5px;
}

.button-area-recruit{
	margin: 5px;
	display: flex;
  	justify-content: center;
}

.button-style-recruit{
 	padding: 10px 25px;
    background-color: #F3F3F3;
  	border: none;
  	font-size: 18px;
    color: black;
    font-weight: 600;
  	border-radius: 500px;
}

.button-style-recruit:hover{
	transform: scale(1.1);
  }

.mainicon{
    background-color: white;
    border-radius: 50%;
    margin-right: 15px;
    display: flex;
    justify-content: center;
    align-items: center;
    font-size: 70px;
    margin:30px;
}

.mainSecondPartSentence{
	margin-top: 120px;
	font-size: 40px;
	font-weight: 500;
	display: flex;
	justify-content: center;
	
}

.photoSize2{
	height: 200px;
	padding: 80px;
}
 

 footer{
	  height: 480px;
	  background-color: white;
	  display: flex;
	  justify-content: center;
	}


 .footer-first-space{
    max-width: 1170px;
    width: 100%;
    padding-top: 80px;
    padding-bottom: 30px;
 }
 
 .footer-seceond-space{
    display: flex;
    justify-content: space-between;
    height: 250px;
 }

.first-bigbox{
    width: 70%;
    display: flex;
    justify-content: space-between;
}

 .footer-subtitle{
    color: #919496;
    font-weight: 900;
    margin: 20px 0px;
}

.footer-menu-item{
    padding-bottom: 15px;
    padding-top: 3px;
    font-size: 16px;
    font-weight:600;
}

.footer-standard{
  display: flex;
    flex-direction: column;
    padding: 0 15px;
}

.character{
    width: 50%;
    display: flex;
    justify-content: flex-end;
}

.icon-box{
    width: 80px;
    height: 54px;
    background-color: white;
    border-radius: 50%;
    margin-right: 15px;
    display: flex;
    justify-content: center;
    align-items: center;
}

.icon {
  font-size: 24px;
}

.icon:hover {
  color: #9400d3;
}

.last-line{
   color: black;
   margin-top: 12px;
}

.last-space{
    margin-right: 24px;
    color: black;
 }
 
.country{
    color: black;
    display: flex;
    justify-content: center;
    font-size: 13px;
    font-weight: 600;
}
</style>
<script src="https://kit.fontawesome.com/bb9544ccb9.js" crossorigin="anonymous"></script>
<script type="text/javascript">
	function OrderSent(){
		  var queryString = document.location.search.replace('?','');
          var parameters = queryString.split('&');
          for (i=0; i<parameters.length; i++)
          {
              if (parameters[i].substring(0,6) == 'Order=')
              {
                  if(parameters[i].replace('Order=','') == 'true')
                  {
                      alert('문의 등록 완료');
                      return;
                  }
              }
          }
	}
	
	function AddInfoSent(){
		  var queryString = document.location.search.replace('?','');
          var parameters = queryString.split('&');
          for (i=0; i<parameters.length; i++)
          {
              if (parameters[i].substring(0,8) == 'AddInfo=')
              {
                  if(parameters[i].replace('AddInfo=','') == 'true')
                  {
                      alert('추가 문의 등록 완료');
                      return;
                  }
              }
          }
	}
	
	function onload() {
		OrderSent();
		AddInfoSent();
	}
</script>
</head>
<body onload="onload()">

    <div class="wrap">
        <div class="menubar">
            <div class="menuLogo">
                <a href="mainPage.html"><img src="./image/grape1.png" width="170px"></a>
            </div>
            <ul class="menuItem">
                 <li>
                    <a href="">Introduction</a>
                    <ul>
                        <li><a href="companyInfo.jsp">회사소개</a></li>
                     
                    </ul>
                 </li>
                
                 <li>
                    <a href="">Portfolio</a>
                    <ul>
                        <li><a href="portfolio.jsp">포트폴리오</a></li>
                    </ul>
                 </li>
                
                  <li>
                    <a href="">Connect</a>
                    <ul>
                        <li><a href="/TeamProject02/order/newOrder.jsp">신규문의</a></li>
                        <li><a href="/TeamProject02/order/oldOrderLogin.jsp">기존문의</a></li>
                    </ul>
                  </li>
                
                   <li>
                    <a href="">Recruitment</a>
                    <ul>
                        <li><a href="/TeamProject02/recruit/newRecruitBoard.jsp"> 신규채용</a></li>
                        <li><a href="/TeamProject02/recruit/myRecruitLogin.jsp">나의 지원서</a></li>
                    </ul>
                  </li>
            </ul>
            
            
        </div>
    </div>
       
  
<main>
<div class="mainphoto">
	<img src="./image/rocket.png" width="100%" class="photoSize">
    <div class="mainSentence">
		<div class="mainFirst">
			<div class="button-area">
				<button type="button" onclick="location.href='/TeamProject02/order/newOrder.jsp'" class="button-style button-style:hover">Join Us</button>
		    </div>
			<div class="mainFirstSentence">다양한 생각을 나누며 놀라운 세상을 만들어요.</div>
			<div class="mainFirstSentence">그 길을 저희 Grape가 함께 걷고 싶습니다.</div>
	    </div>
    </div>
</div>


<div class="mainSecondPart">

	<div class="mainSecondPartSentence"><img src="./image/speaker.png" width="80px">&nbsp;Find Your Interest</div>
	
	<div class="button-area-recruit">
		<span class="button-area"><button type="button" onclick="location.href='/TeamProject02/companyInfo.jsp'" class="button-style-recruit button-style-recruit:hover">#회사소개</button></span>
		<span class="button-area"><button type="button" onclick="location.href='/TeamProject02/portfolio.jsp'" class="button-style-recruit button-style-recruit:hover">#포트폴리오</button></span>
		<span class="button-area"><button type="button" onclick="location.href='/TeamProject02/order/newOrder.jsp'" class="button-style-recruit button-style-recruit:hover">#신규문의</button></span>
		<span class="button-area"><button type="button" onclick="location.href='/TeamProject02/recruit/newRecruitBoard.jsp'" class="button-style-recruit button-style-recruit:hover">#신규채용</button></span>
	</div>	
</div>

</main>


  
<footer>
 
 <div class="footer-first-space">
   <div class="footer-seceond-space">
    
   <div class="first-bigbox">
    
   <div class="footer-standard">
     <img src="" width="132px">
   </div>
      
    <div class="footer-standard">
	  <div class="footer-subtitle">Company</div>
		  <a href="companyInfo.jsp"class="footer-menu-item">About Us</a>  
		  <a href="portfolio.jsp"class="footer-menu-item">History</a>
    </div>
      
    <div class="footer-standard">
      <div class="footer-subtitle">Communicates</div>
		  <a href="/TeamProject02/order/newOrder.jsp" class="footer-menu-item">Question</a>
		  <a href="https://www.instagram.com"class="footer-menu-item">Instagram</a>
    </div>
    
    <div class="footer-standard">
      <div class="footer-subtitle">Recruitment</div>
		  <a href="/TeamProject02/recruit/myRecruitLogin.jsp"class="footer-menu-item">My application</a>
    </div>
 </div>
    
  <div class="character">
   	  <div class="icon-box">
 		 <a href="mainPage.html">
     	 <i class="fa-solid fa-house icon"></i></a>
      </div>  

      <div class="icon-box">
      	 <a href="#">
     	 <i class="fa-solid fa-square-phone icon"></i></a>
      </div>
      
      <div class="icon-box">
     	 <a href="https://www.instagram.com">
     	 <i class="fab fa-instagram icon"></i></a>
      </div>
      
  </div>
 </div>
 
<div class="country">
  <div class="last-line"> 
   <div>
     <span class="last-space">Phone : 031-000-0000</span>
 	 <span class="last-space">Address : 서울특별시 마포구 서교동 447-5 풍성빌딩 F2,3,4</span>
   </div>
  </div>
</div>

 </div>

</footer>
</body>
</html>