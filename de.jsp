<%@page import="java.sql.*" %>
<%try {
    
String de=request.getParameter("sno");
Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/optical","root","root");
                        PreparedStatement query=con.prepareStatement("update orders set status='Accept' where sno='"+de+"' ");
                        System.out.println(query);
                        query.executeUpdate();
                        
                    out.println("<script>"); 			
                    out.println("alert(\"Delivered\")");
                    out.println("</script>");

                    RequestDispatcher rd=request.getRequestDispatcher("status.jsp");
                    rd.include(request,response);		
		}
                catch(Exception e){
                    out.println("<script>"); 			
                    out.println("alert(\"Please Try Again..\")");
                    out.println("</script>");

                    RequestDispatcher rd=request.getRequestDispatcher("status.jsp");
                    rd.include(request,response);
                }

       
                                   



























%>