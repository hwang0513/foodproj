<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="css/style.css">
  </head>
  <body>
    <div class="modal fade" id="myModal" role="dialog">
        <div class="modal-dialog modal-sm">      
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal">×</button>  
     	    </div>
 				 <form action="insert.jsp" method="post">
     	     		  <div class="modal-body">
	                	<img src="img/people.jpg" alt=""><input type="text" class="modal-text" name="user_id" placeholder="아이디">
		              </div>
		              <div class="modal-body">
		                <img src="img/people.jpg" alt=""><input type="text" class="modal-text" name="user_password" placeholder="비번">
		              </div>
		              <div class="modal-body">
		                <img src="img/people.jpg" alt=""><input type="text" class="modal-text" name="user_nicname" placeholder="닉네임">
		              </div>
		              <div class="modal-body">
		                <img src="img/people.jpg" alt=""><input type="text" class="modal-text" name="user_name" placeholder="이름">
		              </div>
		              <div class="modal-body">
		                <img src="img/people.jpg" alt=""><input type="text" class="modal-text" name="user_address" placeholder="주소">
		              </div>
		              <div class="modal-body">
		                <img src="img/people.jpg" alt=""><input type="text" class="modal-text" name="user_phone" placeholder="전화번호">
		              </div>
		              <div class="modal-footer">
		             </div>
	            </form>
          </div>
        </div>
      </div>
    <br/><br/>
    <button type="button" class="mypage" data-toggle="modal" data-target="#myModal">마이페이지</button><br>    
    <button type="button" class="mypage" data-toggle="modal" data-target="#myModal">마이페이지</button>    
  </body>
</html>
