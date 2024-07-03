<%-- 
    Document   : log
    Created on : Jul 10, 2017, 5:01:51 PM
    Author     : DLK 1
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
String name,pass;
name=request.getParameter("user");
pass=request.getParameter("pass");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/optical","root","root");
PreparedStatement ps=con.prepareStatement("select * From reg where user='"+name+"' and pass='"+pass+"' ");
System.out.println(ps);
ResultSet rs=ps.executeQuery();
if(rs.next()){
    String mail=rs.getString("mail");
    String id=rs.getString("id");
    String profile=rs.getString("profile");
System.out.println(ps);
session.setAttribute("name",name);
session.setAttribute("id",id);
session.setAttribute("mail",mail);
session.setAttribute("profile",profile);
out.println("<script>"
                            +"alert('Welcome Customer')"
                            +"</script>");
                    RequestDispatcher rd=request.getRequestDispatcher("/AUser.jsp");
                    rd.include(request, response);
}
else
{
out.println("<script>"
                            +"alert('Please Enter Valid Username and Password')"
                            +"</script>");
                    RequestDispatcher rd=request.getRequestDispatcher("/UserLogin.jsp");
                    rd.include(request, response);
}
%>
