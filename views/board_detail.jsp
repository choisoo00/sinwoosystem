<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.DriverManager" %>
<%@ page import = "java.sql.PreparedStatement" %>
<%@ page import = "java.sql.ResultSet" %>
<%@ page import = "java.sql.SQLException" %>
<%@ page import = "board.DBManager" %>
<%
	String noticeSeq = request.getParameter("seq"); // seq키의 값을 가져온다
	String noticeTitle = request.getParameter("title"); // title키의 값을 가져온다
%>

<%
    HttpSession session1 = request.getSession(false);
    String memberID = (session != null) ? (String) session.getAttribute("memberID") : null;
%>
<% 
	HttpSession session2 = request.getSession(true);
	String seq = request.getParameter("seq");
	session.setAttribute("currentSeq", seq);
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 1. 탭 타이틀 세팅 -->
    <title>신우시스템</title>
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
</head>
<body>
   	<!------MAIN------>
	<div class="board_update_btn">
    	<a href="<%= request.getContextPath() %>/board_update_form.jsp?seq=<%= seq %>" class="board-update-btn">수정</a>
    	<% 
    		/*
       		// 현재 세션을 가져옵니다.
        	HttpSession session3 = request.getSession(true);

        	// 파라미터로 전달된 'seq' 값을 가져옵니다.
        	String seq1 = request.getParameter("seq");

        	// 'seq' 값을 세션에 저장합니다.
        	session.setAttribute("currentSeq", seq);
        	*/
    	%>
    	<%
    		/*
    		HttpSession session4 = request.getSession(false);
    		if (session != null) {
        		String currentSeq = (String) session.getAttribute("currentSeq");
        		// currentSeq를 사용하여 필요한 작업을 수행합니다.
    		}
    		*/
		%>
	</div>
		
    <%
 		// 선택한 글 조회수 1 올리기
		//System.out.println("공지사항 상세페이지 상단");
	%>
	
   	<%-- <section style="margin-top:120px;">
   	공지사항 상세페이지1 -> <%= noticeSeq %>: <%= noticeTitle %>
   	</section> --%>
    
	<%
		//DB접속 객체 가져오기
		Connection conn = DBConfig.getDBConnection();

		//DB조회쿼리 실행하여 DB에 있는 데이터 값 가져오기
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			// 상세조회 및 이전글 다음글 가져오는 쿼리
			String selectSql = "SELECT * " + 
				" FROM( " +
		    	" SELECT  LAG(SEQ) OVER (ORDER BY SEQ) prevSeq, " +
	       		" LAG(TITLE) OVER (ORDER BY SEQ) prevTitle, " +
		       	" LAG(TITLE) OVER (ORDER BY SEQ) prevWRITER, " +
	          	" LEAD(SEQ) OVER (ORDER BY SEQ) nextSeq, " +
           		" LEAD(TITLE) OVER (ORDER BY SEQ) nextTitle, " +
        		" b.* " +
			    " FROM    BOARD b " +
	    		" ORDER BY SEQ " +
		    	" ) " +
				" WHERE 1 = 1 " +
				" AND SEQ = ? ";
			pstmt = conn.prepareStatement(selectSql);
			pstmt.setInt(1, Integer.parseInt(noticeSeq));
			rs = pstmt.executeQuery(); // sql실행
			
			if (rs.next()) {
	%>   
    			<!-- notice detail main -->
    			<section class="">
					<div class="inner board__detail">
						<div class="board_detail_header">
							<div class="board_detail_title"><%= rs.getString("TITLE") %></div>
						</div>
						<div class="board_detail_header">
							<div class="board_detail_writer">글쓴이:<%= rs.getString("WRITER") %></div>
						</div>
						<div class="board_detail_content">
							<%= rs.getString("CONTENT") %>
						</div>
						<br>
						<div class="board_detail_list_btn">
							<a href="<%= request.getContextPath() %>/board.jsp" class="board-list-btn">목록</a>
						</div>
					</div>
	
    				<!-- notice detail bottom -->
    				<section class="board_detail_bottom">
						<div class="inner sub_detail_btm">
							<div class="bottom__prev">
								<div class="nd_btm_left">윗글</div>
	  							<div class="nd_btm_right"><%= rs.getString("nextTitle") %></div>
							</div>
							<div class="bottom__next">
								<div class="nd_btm_left">아랫글</div>
	  							<div class="nd_btm_right"><%= rs.getString("prevTitle") %></div>
							</div>
						</div>
    				</section>
				<%
			}
		} catch (SQLException se) {
			System.out.println("게시판 조회 쿼리 실행 오류: " + se.getMessage());
		} finally {
			DBConfig.dbClose(conn, pstmt, rs);
		}
	%>
    
	<%
		//System.out.println("공지사항 상세페이지 하단");
	%>
</body>
</html>