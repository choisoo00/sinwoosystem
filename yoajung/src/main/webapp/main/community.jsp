<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="com.DBManager.DBManager" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/reset-css@5.0.2/reset.min.css" rel="stylesheet">
    <link href="../css/community.css" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    <title>Document</title>
</head>
<body>
	<%@ include file="../include/header.jsp" %>
    <div class="COMMUNITY">
        <div class="community-wrap">
            <img src="../image/yoajung-community/e_01.jpg" alt="이미지" class="yogurt"/>
            <div class="community-center">
                <div class="community-title">
                        <div class="community">
                            <img src="../image/yoajung-community/d_02.png" alt="핑크아랫작대기" />
                            <span class="gongji">COMMUNITY</span>
                            <p>커뮤니티</p>
                        </div>
                </div>
                <div class="community-contents">
                    <div class="community-menu">
                        <div class="comu">
                            <p>공지사항</p>
                        </div>
                        <div class="event">
                            <p>이벤트</p>
                        </div>
                        <div class="FAQ">
                            <p>FAQ</p>
                        </div>
                        <div class="sound-of-customer">
                            <p>고객의소리</p>
                        </div>
                    </div>
                    <div class="community-comu">
                        <div class="logo">
                            <img src="../image/yoajung-community/e_03.png" alt="진홍색 로고">
                        </div>
                        <h1>공지사항</h1>
                    </div>
                    <div class="community-content">
                        <div class="top">
                            <div class="number">
                                번호
                            </div>
                            <div class="writer">
                                작성자
                            </div>
                            <div class="title">
                                제목
                            </div>
                        </div>
                        <%
                        	Connection conn = DBManager.getDBConnection();
                        	PreparedStatement pstmt = null;
                        	ResultSet rs = null;
                        	
                        	try{
                        		String sql = "SELECT * FROM yoajung";
                        		
                        		pstmt = conn.prepareStatement(sql);
                        		
                        		rs = pstmt.executeQuery();
                        	while(rs.next()) {
                        %>
                        <div class="bottom">
                            <div class="first">
                                <p><%= rs.getInt("seq") %></p>
                            </div>
                            <div class="second">
                                <p><%= rs.getString("writer") %></p>
                            </div>
                            <div class="third">
                                <p><%= rs.getString("title") %></p>
                            </div>
                        </div>
                        <%
                        	}
                        	}catch(Exception e){
                        		e.printStackTrace();
                        	}finally {
                        		DBManager.dbClose(conn, pstmt, rs);
                        	}
                        %>
                    </div>
                </div>
            </div>
        </div>
    </div>
	<%@ include file="../include/footer.jsp" %>
</body>
</html>