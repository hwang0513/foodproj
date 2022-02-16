<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>1000개의 레시피</title>  
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
      crossorigin="anonymous"
    />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="css/style.css">
    <script src="js/script.js"></script>
    <script src="./jquery-3.4.1.min.js"></script>
    <link rel="stylesheet" href="css/main.css" />
  </head>
  <body>
    <!-- Header -->
    <header>
      <div class="container-fluid">
        <div class="row">
          <div class="col-sm-3">
            <!-- 메인페이지 로고 -->
            <div id="logo">
              <img
                src="img/free-icon-dish-1404970.png"
                class="rounded float-left"
                alt=""
                style="width: 100px; height: 100px"
              />
              <span style="font-size: x-large; font-style: oblique" class="ml-3"
                >1000개의 레시피</span
              >
            </div>
          </div>
          <div class="col-sm-6">
            <!-- 메인 페이지 검색창 -->
            <div id="search" class="input-group mt-3 mb-3 float-left">
              <div class="container h-100 mb-3">
                <div class="d-flex justify-content-center h-100">
                  <div class="searchbar">
                    <input
                      class="search_input"
                      type="text"
                      name=""
                      placeholder="검색"
                    />
                    <!-- 통합검색 링크 구현 -->
                    <a href="#" class="search_icon"
                      ><i class="fas fa-search"></i
                    ></a>
                  </div>
                </div>
              </div>
            </div>
            <!-- 검색창 밑 내비게이션 메뉴 - 링크 걸어줘야함 -->
            <nav id="nav">
              <button
                class="btn btn-outline-secondary mb-3"
                type="button"
                id="button-addon2"
                onclick="location.href='#'"
              >
                한식
              </button>
              <button
                class="btn btn-outline-secondary mb-3"
                type="button"
                id="button-addon2"
                onclick="location.href='#'"
              >
                중식
              </button>
              <button
                class="btn btn-outline-secondary mb-3"
                type="button"
                id="button-addon2"
                onclick="location.href='#'"
              >
                양식
              </button>
              <button
                class="btn btn-outline-secondary mb-3"
                type="button"
                id="button-addon2"
                onclick="location.href='#'"
              >
                일식
              </button>
              <button
                class="btn btn-outline-secondary mb-3"
                type="button"
                id="button-addon2"
                onclick="location.href='#'"
              >
                자유게시판
              </button>
              <button
                class="btn btn-outline-secondary mb-3"
                type="button"
                id="button-addon2"
                onclick="location.href='#'"
              >
                공지사항
              </button>
            </nav>
          </div>
          <!-- 회원관리 모달 -->
          <div class="col-sm-3">
          	<img src="img/name.png" alt="" style= "width: 30%;
    												margin-top: 30px;
    												margin-left: 70px;">
            <button type="submit" id="searchUser" class="btn btn-primary mt-5 me-auto mypage" data-toggle="modal" 
            data-target="#manageUser" style="color:black; height:62px; font-size:20px;">
              회원관리
            </button>
        </div>
      </div>
    </header>
		  <!-- 유저검색 모달--> 
    <div class="modal fade" id="manageUser" role="dialog">
        <div class="modal-dialog modal-sm">      
			<div class="modal-content" style="top: 200px">
 				 <form action="" id ="searchUser" method="get">	  
		              <div class="modal-body">
		                <img src="img/name.png" alt=""><input type="text" class="modal-text" name="user_nicname" placeholder="닉네임">
		              </div>
		              <div class="modal-footer">
		              	<button type="submit" class="modal-btn" data-toggle="modal" data-target="#sub-resign-user" data-dismiss="modal" value="전송">유저 검색</button>
		             </div>		             
	            </form>
          </div>
        </div>
      </div>  
    <!-- 회원탈퇴 --> 
       <div class="modal fade" id="sub-resign-user" role="dialog">
        <div class="modal-dialog modal-sm">      
			<div class="modal-content" style="top: 200px">
 				 <form action="main.jsp" id ="resign" method="post">
     	     		  <div class="modal-body">
	                	<img src="img/people1.png" alt=""><input type="text" class="modal-text" name="user_id" placeholder="아이디">
		              </div>
		              <div class="modal-body">
		                <img src="img/people5.png" alt=""><input type="text" class="modal-text" name="user_nicname" placeholder="닉네임">
		              </div>
		              <div class="modal-body">
		                <img src="img/name.png" alt=""><input type="text" class="modal-text" name="user_name" placeholder="이름">
		              </div>
		              <div class="modal-body">
		                <img src="img/phone.png" alt=""><input type="text" class="modal-text" name="user_phone" placeholder="전화번호">
		              </div>
		              <div class="modal-footer">
		              	<button type="submit" class="modal-btn" value="전송">회원탈퇴</button>
		             </div>
	            </form>
          </div>
        </div>
      </div>
    <!-- 메인페이지 캐로셀 -->
    <div class="container-fluid">
      <div class="row">
        <div class="col" style="margin: 0; padding: 0">
          <div
            id="carouselExampleSlidesOnly"
            class="carousel slide"
            data-bs-ride="carousel"
          >
            <div class="carousel-inner">
              <div class="carousel-item active">
                <img src="img/갈비찜.jpg" class="d-block w-100" alt="..." />
              </div>
              <div class="carousel-item">
                <img src="img/초밥.jpg" class="d-block w-100" alt="..." />
              </div>
              <div class="carousel-item">
                <img src="img/탕수육.jpg" class="d-block w-100" alt="..." />
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="container-fluid">
      <div class="row">
        <div id="leftHead" class="col-2" style="margin: 0; padding: 0">
          BEST 요리 레시피
        </div>
        <div class="col-8">
          <div class="container">
            <div class="row">
              <div id="allBoard" class="mt-2">
                <!-- 공지사항 게시판 - 제목 날짜는 jsp로 데이터 받아오기 -->
                <table id="notice" class="col-sm-5 mb-2" style="float: left">
                  <tr>
                    <th>공지사항</th>
                    <th>더보기</th>
                  </tr>
                  <tr>
                    <td>제목</td>
                    <td>날짜</td>
                  </tr>
                  <tr>
                    <td>제목</td>
                    <td>날짜</td>
                  </tr>
                </table>
                <!-- 자유게시판 - 제목 날짜는 jsp로 데이터 받아오기 -->
                <table id="freeBoard" class="col-sm-5 mb-2" style="float: left">
                  <tr>
                    <th>자유게시판</th>
                    <th>더보기</th>
                  </tr>
                  <tr>
                    <td>제목</td>
                    <td>날짜</td>
                  </tr>
                  <tr>
                    <td>제목</td>
                    <td>날짜</td>
                  </tr>
                </table>
              </div>
            </div>
            <div class="row">
                <table class="table table-borderless" id="bestRecipe">
                    <thead>
                      <tr>
                        <td scope="col"><img src="img/요리1.jpg" alt="" /></td>
                        <td scope="col"><img src="img/요리2.jpg" alt="" /></td>
                        <td scope="col"><img src="img/요리3.jpg" alt="" /></td>
                        <td scope="col"><img src="img/요리4.jpg" alt="" /></td>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <th scope="row">타코야끼</th>
                        <td>삼겹살</td>
                        <td>비빔밥</td>
                        <td>피자</td>
                      </tr>
                      <tr>
                        <th scope="row">요리설명</th>
                        <td>요리설명</td>
                        <td>요리설명</td>
                        <td>요리설명</td>
                      </tr>
                      <tr>
                          <td scope="col"><img src="img/요리1.jpg" alt="" /></td>
                          <td scope="col"><img src="img/요리2.jpg" alt="" /></td>
                          <td scope="col"><img src="img/요리3.jpg" alt="" /></td>
                          <td scope="col"><img src="img/요리4.jpg" alt="" /></td>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <th>타코야끼</th>
                          <td>삼겹살</td>
                          <td>비빔밥</td>
                          <td>피자</td>
                        </tr>
                        <tr>
                          <th>요리설명</th>
                          <td>요리설명</td>
                          <td>요리설명</td>
                          <td>요리설명</td>
                        </tr>
                    </tbody>
                  </table>
            </div>
          </div>
        </div>
        <!-- 광고 -->
        <div class="col-2" style="padding: 0">
          <div id="advertise">
            <img src="img/광고.png" alt="" />
          </div>
        </div>
    </div>
    <!-- Footer -->
    <footer class="footer font-small black p-3">
      <img src="img/free-icon-dish-1404970.png" alt="" />
      <div class="left me-auto">
        &nbsp;&nbsp;대표 : 2 Team (김병철, 나경원, 이경호, 이혜민, 황성진,
        황현식) / E : 사이트 / F : 02) XXX - XXXX
      </div>
      <div class="right">Copyright &copy;Busan IT Inc. All Rights Reserved</div>
    </footer>

    <script
      src="https://code.jquery.com/jquery-3.6.0.min.js"
      integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
      crossorigin="anonymous"
    ></script>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
      crossorigin="anonymous"
    ></script>
    <script src="js/script.js"></script>
  </body>
</html>
