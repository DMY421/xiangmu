<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
 <%@ page contentType="text/html;charset=gb2312" %>
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
<link rel="icon" type="image/png" href="http://duruthemes.com/demo/html/addo/blackvideo/images/favicon.png">
    <link rel="stylesheet" href="css/animate.css">
    <link rel="stylesheet" href="css/et-lineicons.css">
    <link rel="stylesheet" href="css/themify-icons.css">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/flexslider.css">
    <link rel="stylesheet" href="css/style1.css">
  </head>
  
  <body data-spy="scroll" data-target=".navbar" data-offset="50">
    <div id="addo-page"> <a href="#" class="js-addo-nav-toggle addo-nav-toggle"><i></i></a>
        <!-- Sidebar Section -->
        <aside id="addo-aside">
            <!-- Logo -->
            <div id="addo-logo"> <a href="#">酒店后台管理系统<span>Welcome</span></a> </div>
            <!-- Menu -->
            <nav id="addo-main-menu">
                <ul>
                    <li>Welcome</li>
                    <li><a href="index1.html">首页</a></li>
                </ul>
            </nav>
            <!-- Sidebar Footer -->
            <div class="addo-footer">
                <ul>
                    <li><a href="#"><i class="ti-facebook font-14px white-icon"></i></a></li>
                    <li><a href="#"><i class="ti-twitter-alt font-14px white-icon"></i></a></li>
                    <li><a href="#"><i class="ti-instagram font-14px white-icon"></i></a></li>
                    <li><a href="#"><i class="ti-linkedin font-14px white-icon"></i></a></li>
                </ul>
                <p><small>© 2019 ADDO by <a href="#">DuruThemes</a></small></p>
            </div>
        </aside>
        <!-- Main Section -->
        <div id="addo-main">
            <div id="about" class="section">
                <div class="addo-about">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-12"> <span class="heading-meta">Information</span>
                                <h2 class="addo-heading animate-box" data-animate-effect="fadeInLeft">请输入需要修改的房间号：</h2> </div>
                         <form action="x5.jsp" >
     <table border="1" >
     <tr><th width=200>请输入需要修改的房间号：</th><th width=720><input type="text" name="fh"></th></tr>
       <tr><th width=200>输入修改后的房间类型：</th><th width=720><input type="text" name="lx"></th></tr>
        
         <tr><th width=200>输入修改后的价格：</th><th width=720><input type="text" name="jg"></th></tr>
     <tr><th><input type="submit"/></th><th><input type="reset"/></th></tr>
     </table>  
    </form>
    
     <form action="tianjia1.jsp" method="post">
<center><h2>如需添加信息，请输入要添加的信息</h2></center></br>
<hr>

      <table border ="0">

      <tr>
      <td width=250>房号</td>
      <td width=750><input type ="text" name="fh"></td>
      </tr>
      
      <tr>
      <td>房型</td>
      <td><input type="text" name= "lx"/></td>
      </tr>
      
      <tr>
      <td>价格</td>
      <td><input type="text" name="jg"></td>
      </tr>
      
      <tr>
      <td>
      <input name="sure" type="submit" value="提交">
      </td>

      <td>
      <input name="clear" type="reset" value="重置">
      </td>
      </tr>
      
      </table>
</form>
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
                            <div class="col-md-12"> <span class="heading-meta">Abilities</span>
                               
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
