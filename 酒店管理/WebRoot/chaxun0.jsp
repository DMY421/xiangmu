<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page contentType="text/html;charset=gb2312"%>
<%@ page import="mybean.connDB"%>
<%@ page import="java.sql.*"%>
<%@ include file="convert1.jsp"%>
<jsp:useBean id="c" class="mybean.connDB" />

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>My JSP 'shanchu0.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
    <link rel="stylesheet" type="text/css" href="styles.css">
    -->
		<link rel="icon" type="image/png"
			href="http://duruthemes.com/demo/html/addo/blackvideo/images/favicon.png">
		<link rel="stylesheet" href="css/animate.css">
		<link rel="stylesheet" href="css/et-lineicons.css">
		<link rel="stylesheet" href="css/themify-icons.css">
		<link rel="stylesheet" href="css/bootstrap.css">
		<link rel="stylesheet" href="css/flexslider.css">
		<link rel="stylesheet" href="css/style1.css">
	</head>

	<body data-spy="scroll" data-target=".navbar" data-offset="50">
		<div id="addo-page">
			<a href="#" class="js-addo-nav-toggle addo-nav-toggle"><i></i>
			</a>
			<!-- Sidebar Section -->
			<aside id="addo-aside">
			<!-- Logo -->
			<div id="addo-logo">
				<a href="#">酒店后台管理系统<span>Welcome</span>
				</a>
			</div>
			<!-- Menu -->
			<nav id="addo-main-menu">
			<ul>
				<li>
					Welcome
				</li>
				<li>
					<a href="index1.html">首页</a>
				</li>
			</ul>
			</nav>
			<!-- Sidebar Footer -->
			<div class="addo-footer">
				<ul>
					<li>
						<a href="#"><i class="ti-facebook font-14px white-icon"></i>
						</a>
					</li>
					<li>
						<a href="#"><i class="ti-twitter-alt font-14px white-icon"></i>
						</a>
					</li>
					
					<li>
						-
					</li>
				</ul>
				<p>
					<small>© 2019 ADDO by <a href="#">DuruThemes</a>
					</small>
				</p>
			</div>
			</aside>
			<!-- Main Section -->
			<div id="addo-main">
				<div id="about" class="section">
					<div class="addo-about">
						<div class="container-fluid">
							<div class="row">
								<div class="col-md-12">
									<span class="heading-meta">Information</span>
									<h2 class="addo-heading animate-box"
										data-animate-effect="fadeInLeft">
										查询信息显示：
									</h2>
								</div>




								<%
    Connection conn=null;
    try{
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        String strConn="jdbc:sqlserver://127.0.0.1:1433;DatabaseName=test";
        String strUser="sa";
        String strPassword="12345678";
        conn=DriverManager.getConnection(strConn,strUser,strPassword);
        
        Statement stmt=conn.createStatement();
        
        
        String strSql="select * from userInfo";
        
        ResultSet rs=stmt.executeQuery(strSql); 
    %>
								<center>
									<h2>
										全部员工信息
									</h2>
								</center>
								<table border="0" align="center">
									<tr>
										<th width=300>
											姓名
										</th>
										<th width=300>
											联系电话
										</th>
										<th width=300>
											薪资
										</th>
									</tr>
									<% while(rs.next()) { %>
									<tr>
										<td><%=rs.getString("username") %>&nbsp;&nbsp;
										</td>
										<td><%=rs.getString("lxdh") %>&nbsp;&nbsp;
										</td>
										<td><%=rs.getString("xz") %>&nbsp;&nbsp;
										</td>
									</tr>
									<%} %>
								</table>


								<form action="cha.jsp">
									<center>
										<h2>
											查询某个员工信息
										</h2>
									</center>
									<table border="0" align="center">
										<tr>
											<th width=400>
												请输入员工姓名
											</th>
											<th width=500>
												<input type="text" name="name"></input>
											</th>
											<th width=100>
												<input type="submit" value="查询"></input>
											</th>
										</tr>
									</table>
								</form>
								<%
     }//链接数据库出现的异常
     catch(ClassNotFoundException e)
        {   out.println("a"+e.getMessage());}
        catch(SQLException e)
        {   out.println(e.getMessage());}
        finally
        {
            try
            {
                if(conn!=null)
                    conn.close();
            }
            catch(Exception e){}
        }
     %>






							</div>

							<div id="prompt" class="prompt"></div>

						</div>
					</div>

				</div>
			</div>
		</div>

		<!-- Skills Section -->
		<div id="skills" class="section">
			<div class="addo-skills">
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-12">

						</div>

					</div>
				</div>
			</div>
		</div>
		<!-- Services Section -->



		<!-- Js -->
		<script src="js/jquery.min.js"></script>
		<script src="js/modernizr-2.6.2.min.js"></script>
		<script src="js/jquery.easing.1.3.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="js/jquery.waypoints.min.js"></script>
		<script src="js/jquery.flexslider-min.js"></script>
		<script src="js/animated.headline.js"></script>
		<script src="js/sticky-kit.min.js"></script>
		<script src="js/main.js"></script>


	</body>
</html>
