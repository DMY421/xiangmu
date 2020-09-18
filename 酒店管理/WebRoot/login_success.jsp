<%@ page language="java" import="java.util.*"
	contentType="text/html;charset=utf-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>登录成功</title>

		<link rel="stylesheet" type="text/css" href="css/style.css">

		<script type="text/javascript" src="js/jquery.min.js"></script>
		<script type="text/javascript" src="js/vector.js"></script>
	</head>
	<body>

		<div id="container">
			<div id="output">
				<div class="containerT">
					<h1 id="entry_name">
						您已登录成功！！
					</h1>
					</br>
					<h1>
						5秒回自动跳转至首页！！
					</h1>
				</div>
			</div>
		</div>

		<script type="text/javascript">
	$(function() {
		Victor("container", "output"); //登陆背景函数
		$("#entry_name").focus();
		$(document).keydown(function(event) {
			if (event.keyCode == 13) {
				$("#entry_btn").click();
			}
		});
	});
</script>
		<%
			response.setHeader("refresh", "5;url=yuangongxiugai.jsp");
		%>
	</body>

</html>