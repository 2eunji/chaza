<%@page import="controller.ReviewDTO"%>
<%@page import="controller.ReviewDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
		<title>No Sidebar - Helios by HTML5 UP</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
		
		   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
   
    

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
 

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
 

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>


<style>
tr {
    height: 50px;
}

input[type=submit],input[type=button] {
    margin-top: 10px;
    width:100px;
    height:40px;
    line-height: 22px;
    padding: 5px, 10px; /* 상하 우좌 */
    background: #E6E6E6;
    color: #000000;
    font-size: 15px;
    font-weight: normal;
    letter-spacing: 1px;
    border: none;
    cursor: pointer;
    border-radius: 3px;
    -webkit-border-radius: 3px;
    -moz-border-radius: 3px;
}
</style>
</head>
<body class="no-sidebar is-preload">
			<div id="page-wrapper">
			<!-- Header -->
				<div id="header">
					<!-- Inner -->
						<div class="inner">
							<header>
								<h1><a href="#" id="logo">회원가입</a></h1>
							</header>
						</div>
				</div>




<div class="wrapper style1">
<div class="container">

</div>

<div class="container">
    <div class="row">
    <div class="col-sm-12 text-left" >
    <div class="col-sm-3"></div>
    <div class="col-sm-6">
    <br>
    <form action="JoinService" method="post">
        <table class="table table-boardered">
            <tr>
                <th>아이디</th>

                <td><input type="text" class="form-control" name="member_id" placeholder="id를 입력하세요"></td>        
            </tr>
            <tr>
                <th>패스워드</th>
                <td><input type="password" class="form-control" name="member_pw" placeholder="비밀번호를 입력하세요"></td>      
            </tr>
            <tr>
                <th>패스워드확인</th>
                <td><input type="password" class="form-control" name="pass2" placeholder="다시 입력해주세요."></td>        
            </tr>

            <tr>
                <th>주소</th>
                <td><input type="text" class="form-control" name="member_addr"></td>       
            </tr>
             
            <tr>
                <th>연락처</th>
                <td><input type="tel" class="form-control" name="member_tel"></td>       
            </tr>
            <tr>
                <th>성별</th>
                <td>
                <input type="radio"  name="member_gender" value="male">남성 &nbsp;&nbsp;
                <input type="radio"  name="member_gender" value="female">여성 &nbsp;&nbsp;
              
                </td>     
            </tr>
            <tr>
                <th>캠핑목적</th>
                <td>
                <input type="radio"  name="camping_case" value="case_family">가족간의 화합도모 &nbsp;&nbsp;
                <input type="radio"  name="camping_case" value="case_healing">스트레스해소와 힐링 &nbsp;&nbsp;
                <br>
                <input type="radio"  name="camping_case" value="case_friend">지인들과의 친목 &nbsp;&nbsp;
                <input type="radio"  name="camping_case" value="case_nature">자연 체험활동 &nbsp;&nbsp;
                <br>
                <input type="radio"  name="camping_case" value="case_hobby">단순 취미활동 &nbsp;&nbsp;
               
                </td>     
            </tr>
            
            <tr>
                <th>캠핑동행자</th>
                <td>
                <input type="radio"  name="camping_member" value="member_family">가족 &nbsp;&nbsp;
                <input type="radio"  name="camping_member" value="member_friend">친구 및 선후배 &nbsp;&nbsp;
                <input type="radio"  name="camping_member" value="member_ain">애인 &nbsp;&nbsp;
                <br>
                <input type="radio"  name="camping_member" value="member_alone">혼자 &nbsp;&nbsp;
                <input type="radio"  name="camping_member" value="member_chin">친인척 &nbsp;&nbsp;
                <input type="radio"  name="camping_member" value="member_dong">동호회/커뮤니티 &nbsp;&nbsp;
                </td>     
            </tr>
            
            <tr>
                <th>연간 캠핑횟수</th>
                <td>
                <input type="radio"  name="camping_count" value="1">10회이상 &nbsp;&nbsp;
                <input type="radio"  name="camping_count" value="2">10회 &nbsp;&nbsp;
                <input type="radio"  name="camping_count" value="3">5-10회 &nbsp;&nbsp;
                <input type="radio"  name="camping_count" value="4">2-4회 &nbsp;&nbsp;
                <input type="radio"  name="camping_count" value="5">1회 &nbsp;&nbsp;
                
                </td>     
            </tr>
             
            <tr>
                <th>차량유무</th>
                <td>
                <input type="radio"  name="member_car_own" value="y">있음 &nbsp;&nbsp;
                <input type="radio"  name="member_car_own" value="n">없음 &nbsp;&nbsp;
                 <!-- select name="member_car_own" class="form-control">
                    <option value="y">있음</option>
                    <option value="n">없음</option>
                    
                 </select> -->
                </td>     
            </tr>
            
            <tr>
                <th>차종</th>
                <td><input type="text" class="form-control" name="car_name"></td>       
            </tr>
             
             <tr>
             	<td colspan="2" align="center">
            	<input type="submit" value="회원가입">
            	</td>
        	</tr>
        	
        	
            
             
             
        </table>
    </form>
    </div>
     
    </div>
    </div>
</div>

	<hr />

</div>



		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.dropotron.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

</body>	
</html>