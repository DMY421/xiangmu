<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<%@ include file="convert1.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta http-equiv="content-type" content="text/html; charset=UTF-8">
		<title>insert</title>
	</head>

	<body>

		<%
			String s2 = Bytes(request.getParameter("hm1"));

			Connection conn = null;
			try {
				Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
				String strConn = "jdbc:sqlserver://127.0.0.1:1433;DatabaseName=test";
				String strUser = "sa";
				String strPassword = "12345678";
				conn = DriverManager.getConnection(strConn, strUser,
						strPassword);
				Statement stmt = conn.createStatement();
				String strSql = "delete from yh where yhm='" + s2 + "'";
				int intTemp = stmt.executeUpdate(strSql);
				if (intTemp != 0) {
					out.println("<script language='javascript'>"
							+ "alert('信息删除成功');"
							+ "window.location.href='index1.html';</script>");

				} else {
					out.println("<script language='javascript'>"
							+ "alert('信息删除失败');"
							+ "window.location.href='shanchu4.jsp';</script>");
				}

			} catch (SQLException e) {
				out.println(e.toString());
			} finally {
				try {
					if (conn != null)
						conn.close();
				} catch (Exception e) {
				}
			}
		%>
	</body>
</html>
