<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400" rel="stylesheet" />
    <link href="fontawesome/css/all.min.css" rel="stylesheet" />
    <link href="css/templatemo-comparto.css" rel="stylesheet" />
    <title>Scheme</title>
<!--

Comparto TemplateMo

https://templatemo.com/tm-544-comparto

-->
</head>

<body>
    <!-- Back to top button -->
    <a id="button"><i class="fas fa-angle-up fa-2x"></i></a>
    <div class="container-fluid">
        <div class="tm-site-header tm-mb-1">
            <div class="tm-site-name-container tm-bg-color-8">
                                <h2 class="tm-text-white" align="center">Fusion-based Methods for result diversification in web search</h2>
            </div>
            <div class="tm-nav-container tm-bg-color-8">
                <nav class="tm-nav" id="tm-nav">
                    <ul>
                        <li class="tm-nav-item current">
                            <a href="AUser.jsp" class="tm-nav-link">
                             
                                <span>Home</span>
                            </a>
                        </li>
                        <li class="tm-nav-item">
                            <a href="Viewspec1.jsp" class="tm-nav-link">
                     
                                <span>Materials</span>
                            </a>
                        </li>
                        <li class="tm-nav-item">
                            <a href="status1.jsp" class="tm-nav-link">
                             
                                <span>Status</span>
                            </a>
                        </li>
                        <li class="tm-nav-item">
                            <a href="index.html" class="tm-nav-link">
                             
                                <span class="tm-nav-text">Logout</span>
                            </a>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
        <section class="tm-mb-1" id="about">
            <div class="tm-row tm-about-row">
                <article class="" style="width: 1300px; background-color: lightyellow;">
                    <%
                     String brand=request.getParameter("brand");
                    %>
                    <style>
      table{
          font-family: cambria;
          width: 50%;
          color: #007bff;
          margin-left: 25%;
          font-size: 20px;
          
      }
      table,tr,td{
          padding-bottom: 10px;
          border: #0056b3 2px solid;
          border-collapse: collapse;
      }
      
     
  </style>
    <h2 style="color:darkslateblue;font-family: cambria;font-weight: bold; font-size: 30px;">View All <%=brand%> Brand Materials</h2><br>
    <table align="center" border="1" style="width: 90% !important; margin-left: 3px;line-height: 1.7;background: aliceblue;border-radius: 12px;text-align: left;color: black;text-transform: capitalize;">
	        	<tr style="color: navy;font-weight: bold">
	        		<td>Id</td>                                
                                <td>Product</td>
	        		<td>Eligibility</td>
	        		<td>Scheme Name</td>
	        		<td>Document required</td>
	        		<td>Scheme Category</td>
	        		<td>Scheme Vacancy</td>
	        		<td>Scheme Type</td>
	        		<td>Scheme Color</td>
	        	</tr>
	            <%
                       
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/optical","root","root");
                        PreparedStatement query=con.prepareStatement("select * from addoptical where brand='"+brand+"' ");
                        ResultSet rs=query.executeQuery();
	            	while(rs.next())
	            	{
                            
	            %>
	            			<tr>
	            				<td><%=rs.getString("id") %></td>       
                                                <td><img src="profile/<%=rs.getString("image") %>" style="width: 250px; height: 150px; border-radius: 10px;"></td>	            			
                                                <td><u><a href="view2.jsp?id=<%=rs.getString("id")%>&&name=<%=rs.getString("gname")%>"><%=rs.getString("brand") %></a></u></td>
	            				<td><%=rs.getString("gname") %></td>
	            				<td><%=rs.getString("shape") %></td>
                                                <td><%=rs.getString("size") %></td>
                                                <td><%=rs.getString("type") %></td>
                                                <td><%=rs.getString("color") %></td>
                                                <td><%=rs.getString("cost") %></td>
                                        </tr>		
	            <%	
	            	}	
	            %>
	        </table>
                </article>
                <a href="Viewspec1.jsp">Click Back</a>
            </div>
        </section>
       
        
        
</body>
</html>