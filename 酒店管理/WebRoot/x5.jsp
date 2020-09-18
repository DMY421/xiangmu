<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>insert</title>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  </head>
  
  <body>
      <%@ include file="convert1.jsp" %>
    <%
    Connection conn=null;
    try{
    Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
    String strConn="jdbc:sqlserver://127.0.0.1:1433;DatabaseName=test";
    String strUser="sa";
    String strPassword="12345678";
    conn=DriverManager.getConnection(strConn,strUser,strPassword);
    Statement stmt=conn.createStatement();

    
    String s1=Bytes(request.getParameter("fh"));
    String s2=Bytes(request.getParameter("lx"));
    String s3=Bytes(request.getParameter("jg"));

    String strSql="update fj set fh='"+s1+"',lx='"+s2+"',jg='"+s3+"' WHERE fh = '"+s1+"'";

    PreparedStatement pstmt=conn.prepareStatement(strSql);
    //pstmt.setString(1,s1);
    //pstmt.setString(2,s2);
   // pstmt.setString(3,s3);
    //pstmt.setString(4,s4);
    //pstmt.setString(5,s5);
    //pstmt.setString(6,s6);

       
    int intTemp=stmt.executeUpdate(strSql); 
    
    if(intTemp!=0)
    {
        out.println
        ("<script language='javascript'>"+"alert('管理员信息修改成功');"+
        "window.location.href='x4.jsp';</script>");
    }
    else
    {
        out.println
        ("<script language='javascript'>"+"alert('管理员信息修改失败');"+
        "window.location.href='x4.jsp';</script>");

    }
   }
        catch(SQLException e)
        {   out.println(e.toString());}
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
  </body>
</html>
