<%@ page language="java" import="java.sql.*"
	contentType="text/html;charset=utf-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>


</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		String users = request.getParameter("username");
		String pass = request.getParameter("pwd");
		
		
	%>

	<%
		boolean flag = false;
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		String url = "jdbc:sqlserver://127.0.0.1:1433;DatabaseName=test";
		String user = "sa";
		String password = "12345678";
		Connection conn = DriverManager.getConnection(url, user, password);
		PreparedStatement sql = conn.prepareStatement("select * from userInfo where username=? and password=?");
		sql.setString(1, users);
		sql.setString(2, pass);
		ResultSet rs = sql.executeQuery();
		if (rs.next()) {
			flag = true;
		}
		rs.close();
		sql.close();
		conn.close();
	%>
	<!-- 判断是否是正确的登录用户 -->

	<%
		if (flag == true) {
	%>
	<jsp:forward page="index.html" />
	<%
		} else if (flag == false) {
	%>
	<jsp:forward page="index1.html" />
	<%
		}
	%>
	

</body>
</html>