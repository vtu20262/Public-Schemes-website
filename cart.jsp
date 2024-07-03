<%@page import="java.sql.*"%>
<%
String id=request.getParameter("id");
String gname=request.getParameter("gname");
String shape=request.getParameter("shape");
String size=request.getParameter("size");
String type=request.getParameter("type");
String color=request.getParameter("color");
String cost=request.getParameter("cost");
String uname=session.getAttribute("name").toString();
String uid=session.getAttribute("id").toString();  
String accountno=request.getParameter("ano");
String ifscno=request.getParameter("ifsc");
String cvvno=request.getParameter("cvv");
try 
		{
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/optical","root","root");
		    PreparedStatement query=con.prepareStatement("insert into orders(id,gname,shape,size,typ,color,cost,uname,uid,accountno,ifscno,cvvno)values ('"+id+"','"+gname+"','"+shape+"','"+size+"','"+type+"','"+color+"','"+cost+"','"+uname+"','"+uid+"','"+accountno+"','"+ifscno+"','"+cvvno+"')");
                    System.out.println(query);
                    query.executeUpdate();
                    System.out.println(query);
                    out.println("<script>"); 			
                    out.println("alert(\"Ordered Successfully\")");
                    out.println("</script>");

                    RequestDispatcher rd=request.getRequestDispatcher("Viewspec1.jsp");
                    rd.include(request,response);		
		}
                catch(Exception e){
                    out.println("<script>"); 			
                    out.println("alert(\"Please Try Again..\")");
                    out.println("</script>");

                    RequestDispatcher rd=request.getRequestDispatcher("AUser.jsp");
                    rd.include(request,response);
                }

       
                                   
























%>