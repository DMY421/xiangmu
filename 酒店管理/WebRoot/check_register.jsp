<%@ page language="java" import="java.sql.*"
	contentType="text/html;charset=utf-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>检验注册页面</title>
	</head>

	<body>
		<br>
		<%
			request.setCharacterEncoding("utf-8");
			String users = request.getParameter("username");
			String pass = request.getParameter("pwd");
		%>
		<%
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			String url = "jdbc:sqlserver://127.0.0.1:1433;DatabaseName=test";
			String user = "sa";
			String password = "a2933567a";
			Connection conn = DriverManager.getConnection(url, user, password);
			PreparedStatement sql = conn
					.prepareStatement("insert into user(username,password)values(?,?)");
			sql.setString(1, user);
			sql.setString(2, pass);
			int rtn = sql.executeUpdate();
			if (rtn == 1) {
				out.println("注册成功!!");
				out.println("5秒后返回登录界面");
				response.setHeader("refresh", "5;url=login_fail.jsp");
			}
			sql.close();
			conn.close();
		%>



	</body>
</html>