<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="board.DBManger" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>

<%
    String searchKeyword = request.getParameter("search");
    String pageParam = request.getParameter("page");
    int currentPage = pageParam != null ? Integer.parseInt(pageParam) : 1;
    int recordsPerPage = 10;
    int start = (currentPage - 1) * recordsPerPage;
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>신우시스템</title>
    <link rel="shortcut icon" href="./favicon.ico" />
    <link rel="icon" href="./favicon.png" />
    <link href="https://cdn.jsdelivr.net/npm/reset-css@5.0.2/reset.min.css" rel="stylesheet">
    <link href="./css/board.css" rel="stylesheet">
    <link href="./css/header.css" rel="stylesheet" />
    <link rel="shortcut icon" href="./그림1.png" />
    <link rel="icon" href="./그림1.png" />
    <link href="./css/footer.css" rel="stylesheet">
    <link rel="shortcut icon" href="./그림1.png" />
    <link rel="icon" href="./그림1.png" />
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900&display=swap" rel="stylesheet">
    <link href="./css/footer.css" rel="stylesheet">
    <link rel="shortcut icon" href="./그림1.png" />
    <link rel="icon" href="./그림1.png" />
    <meta property="fb:app_id" content="87741124305">
    <meta name="theme-color" content="rgba(255, 255, 255, 0.98)">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/lodash.js/4.17.21/lodash.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
    <script src="./js/board.js"></script>

</head>
<body>
    <!------MAIN------>
	<div class="YtBody">
   		<section style="margin-bottom: 180px;">
        	<div class="inner board__list">
            	<div class="board_header">
                	<div class="board_no">NO</div>
                    <div class="board_title">제목</div>
                    <div class="board_title">글쓴이</div>
                    <div class="board_hit">날짜</div>
                </div>

                <!-- 공지사항 게시글 제목 리스트 -->
                <%
                    Connection conn = DBManager.getDBConnection();
                    PreparedStatement pstmt = null;
                    ResultSet rs = null;
                    int totalRecords = 0;
                    try {
                        String totalSql = "SELECT COUNT(*) FROM board";
                        if (searchKeyword != null && !searchKeyword.isEmpty()) {
                            totalSql += " WHERE TITLE LIKE ?";
                            pstmt = conn.prepareStatement(totalSql);
                            pstmt.setString(1, "%" + searchKeyword + "%");
                        } else {
                            pstmt = conn.prepareStatement(totalSql);
                        }
                        ResultSet totalRs = pstmt.executeQuery();
                        if (totalRs.next()) {
                            totalRecords = totalRs.getInt(1);
                        }

                        String selectSql = "SELECT * FROM board";
                        if (searchKeyword != null && !searchKeyword.isEmpty()) {
                            selectSql += " WHERE TITLE LIKE ?";
                        }
                        selectSql += " ORDER BY seq DESC LIMIT ? OFFSET ?";

                        pstmt = conn.prepareStatement(selectSql);
                        int paramIndex = 1;
                        if (searchKeyword != null && !searchKeyword.isEmpty()) {
                            pstmt.setString(paramIndex++, "%" + searchKeyword + "%");
                        }
                        pstmt.setInt(paramIndex++, recordsPerPage);
                        pstmt.setInt(paramIndex, start);

                        rs = pstmt.executeQuery();
                        while (rs.next()) {
                %>
                <div class="board__list__items">
                    <ul>
                        <li><%= rs.getString("SEQ") %></li>
                        <li><a href="<%= request.getContextPath() %>/board_detail.jsp?seq=<%= rs.getString("SEQ") %>"><%= rs.getString("TITLE") %></a></li>
                        <li><%= rs.getString("WRITER") %></li>
                        <li><%= rs.getDate("CREATE_DATE") %></li>
                    </ul>
                </div>
                <%
                        }
                    } catch (SQLException se) {
                        System.out.println("게시판 조회 쿼리 실행 오류: " + se.getMessage());
                    } finally {

                    }
                    int totalPages = (int) Math.ceil((double) totalRecords / recordsPerPage);
                %>
                <br><br>
          	</div>

            <div class="pagination">
                <% if (currentPage > 1) { %>
                    <a href="?page=<%= currentPage - 1 %>">&laquo; Previous</a>
                <% } %>
                <% for (int i = 1; i <= totalPages; i++) { %>
                    <a href="?page=<%= i %>" class="<%= (i == currentPage) ? "active" : "" %>"><%= i %></a>
                <% } %>
                <% if (currentPage < totalPages) { %>
                    <a href="?page=<%= currentPage + 1 %>">Next &raquo;</a>
                <% } %>
            </div>
       	</section>
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
  	</div>
</body>
</html>