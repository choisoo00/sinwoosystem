<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.DriverManager" %>
<%@ page import = "java.sql.PreparedStatement" %>
<%@ page import = "java.sql.ResultSet" %>
<%@ page import = "java.sql.SQLException" %>
<%@ page import = "board.DBManager" %>
<%
    HttpSession session1 = request.getSession(false);
    String memberID = (session != null) ? (String) session.getAttribute("memberID") : null;
%>
<%
	String seq = request.getParameter("seq");
	/* 
	 * DB에서 수정할 게시글의 정보를 가져옴.
	 */
	String writer = null;
	String title = null;
	String content = null;
	
	//DB접속 객체 가져오기
	Connection conn = DBManager.getDBConnection();

	//DB조회쿼리 실행하여 DB에 있는 데이터 값 가져오기
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	try {
		String selectSql = "SELECT * FROM board WHERE SEQ = " + seq;
		
		pstmt = conn.prepareStatement(selectSql);
		rs = pstmt.executeQuery(); // sql실행
		
		if (rs.next()) {
			writer = rs.getString("WRITER");
			title = rs.getString("TITLE");
			content = rs.getString("CONTENT");
		}
	} catch (SQLException se) {
		System.out.println("게시판 조회 쿼리 실행 오류: " + se.getMessage());
	} finally {
		DBManager.dbClose(conn, pstmt, rs);
	}
%>    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 1. 탭 타이틀 세팅 -->
    <title>신우 시스템</title>
    <!-- 2. favicon(favorite icon) 세팅 -->
    <link rel="shortcut icon" href="./favicon.ico" />
    <link rel="icon" href="./favicon.png" />
    <!-- 3. reset.css 세팅(cdn) -->
    <link href="https://cdn.jsdelivr.net/npm/reset-css@5.0.2/reset.min.css" rel="stylesheet">
    <!-- 4. 커스템 css파일 세팅(local) -->
    <link href="./css/board.css" rel="stylesheet">
    <link href="./css/header.css" rel="stylesheet" />
    <link rel="shortcut icon" href="./그림1.png" />
    <link rel="icon" href="./그림1.png" />
    <link href="./css/footer.css" rel="stylesheet">
    <link rel="shortcut icon" href="./그림1.png" />
    <link rel="icon" href="./그림1.png" />
    <!-- 5. 폰트 설정 -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">
    <!-- 6. 아이콘 설정 --> 
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    <!-- 7. 오픈 그래프 설정(더 많은 속성을 보고 싶으면 https://ogp.me) -->
    <meta property="og:image" content="https://www.youtube.com/img/desktop/yt_1200.png">
    <meta property="fb:app_id" content="87741124305">
    <meta name="theme-color" content="rgba(255, 255, 255, 0.98)">
    <!-- 8. 자바 스크립트 설정 -->
    <!-- <script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script> -->
    
    <!-- gsap js -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/lodash.js/4.17.21/lodash.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.5.1/gsap.min.js" integrity="sha512-IQLehpLoVS4fNzl7IfH8Iowfm5+RiMGtHykgZJl9AWMgqx0AmJ6cRWcB+GaGVtIsnC4voMfm8f2vwtY+6oPjpQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.5.1/ScrollToPlugin.min.js" integrity="sha512-nTHzMQK7lwWt8nL4KF6DhwLHluv6dVq/hNnj2PBN0xMl2KaMm1PM02csx57mmToPAodHmPsipoERRNn4pG7f+Q==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/ScrollMagic/2.0.8/ScrollMagic.min.js" integrity="sha512-8E3KZoPoZCD+1dgfqhPbejQBnQfBXe8FuwL4z/c8sTrgeDMFEnoyTlH3obB4/fV+6Sg0a0XF+L/6xS4Xx1fUEg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <!-- swiper 6.8.4 -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/6.8.4/swiper-bundle.min.js" integrity="sha512-BABFxitBmYt44N6n1NIJkGOsNaVaCs/GpaJwDktrfkWIBFnMD6p5l9m+Kc/4SLJSJ4mYf+cstX98NYrsG/M9ag==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/6.8.4/swiper-bundle.min.css" integrity="sha512-aMup4I6BUl0dG4IBb0/f32270a5XP7H1xplAJ80uVKP6ejYCgZWcBudljdsointfHxn5o302Jbnq1FXsBaMuoQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
    <!-- 로컬 jQuery 파일을 불러오기 -->
    
    <!--  아이콘 불러오기 -->
    <script src="https://kit.fontawesome.com/12d13cde63.js" crossorigin="anonymous"></script>
    <!-- <script defer src="./js/jquery-3.7.1.js"></script> -->
    <script src="./js/board_write.js"></script>
</head>
<body>
	<header>
      <div class="sub-menu">
        <ul class="menu">
          <li><a href="#">Home</a></li>
          <li><a href="#">Login</a></li>
        </ul>
      </div>

      <div class="wrapper">
        <div class="max-width-wrapper">
          <a href="#">
            <img src="./images/new_logo3.png" alt="신우시스템" />
          </a>

          <div class="main-menu">
            <nav>
              <ul>
                <li>
                  <a href="#">신우시스템</a>
                  <ul>
                    <li><a href="#">CEO인사말</a></li>
                    <li><a href="#">회사개요</a></li>
                    <li><a href="#">연혁</a></li>
                    <li><a href="#">오시는 길</a></li>
                  </ul>
                </li>
                <li>
                  <a href="#">사업분야</a>
                  <ul>
                    <li><a href="#">기계가공</a></li>
                    <li><a href="#">항공우주</a></li>
                  </ul>
                </li>
                <li>
                  <a href="#">생산공정</a>
                  <ul>
                    <li><a href="#">설비현황</a></li>
                  </ul>
                </li>
                <li>
                  <a href="#">제품소개</a>
                  <ul>
                    <li><a href="#">정밀부품가공</a></li>
                    <li><a href="#">디자인 및 설계</a></li>
                  </ul>
                </li>
                <li>
                  <a href="#">고객센터</a>
                  <ul>
                    <li><a href="#">공지사항</a></li>
                    <li><a href="#">의뢰방법</a></li>
                  </ul>
                </li>
              </ul>
            </nav>
            <div></div>
          </div>
        </div>
      </div>
    </header>
	<div class="card_wrap">
		<div class="card-title">
			<br>
			<h1>게시글 수정</h1>
			<br><br>	
			<p>아름다운 게시판 글쓰기 문화</p>
		</div>
		<br><br>
		<form action="./board_update.jsp" method="post" id="form1">
    		<div class="board_write_wrap">
        		<div class="card_write">
           			<div class="title">
               			<dt>제목</dt>
               			<input type="text" name="title" value="<%= title %>" />
           			</div>
            		<div class="writer">
                		<dt>글쓴이</dt>
               			<input type="text" name="writer" value="<%= writer %>" />
            		</div>
           			<div class="content">
               			<textarea name="content"><%= content %></textarea>
           			</div>
         			<input type="hidden" name="seq" value="<%= seq %>" />
        		</div>
        		<br>
       			<div class="card-bottom-btns">
           			<a href="javascript: updateSubmit();" class="btn">수정</a>
           			<a href="<%= request.getContextPath() %>/board.jsp" class="btn">취소</a>
        		</div>
    		</div>
		</form>
	</div>
	<footer>
        <div class="inner">
            <div class="logo">
                <img src="./images/그림2.png" alt="신우시스템">
            </div>

            <div class="content">
                <p class="but"><a href="#">오시는길</a></p>
                <p>(주)신우시스템 &nbsp; | &nbsp; 경기도 용인시 처인구 남사면 원암로 341</p>
                <p>Tel. +82-31-334-8417 &nbsp; | &nbsp;  Mobile. +82-10-3164-4486 &nbsp; | &nbsp; Fax. +82-31-624-3721</p>
                <p>Email. sinwoosystem@daum.net</p>
                <p class="highlight">Design Engineer of SHINWOO SYSTEM Co., Ltd.</p>
            </div>
        </div>
    </footer>
</body>
</html>