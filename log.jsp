<%-- 
    Document   : log
    Created on : Jul 10, 2017, 5:01:51 PM
    Author     : DLK 1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
String name,pass;
name=request.getParameter("user");
pass=request.getParameter("pass");
if(name.equals("admin")&&pass.equals("admin"))
{
out.println("<script>"
                            +"alert('Welcome Admin')"
                            +"</script>");
                    RequestDispatcher rd=request.getRequestDispatcher("/AdminHome.jsp");
                    rd.include(request, response);
}
else
{
out.println("<script>"
                            +"alert('Please Enter Valid Username and Password')"
                            +"</script>");
                    RequestDispatcher rd=request.getRequestDispatcher("/AdminLogin.jsp");
                    rd.include(request, response);
}
%>
