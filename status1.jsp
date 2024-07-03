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
                                <h2 class="tm-text-white" align="center">PUBLIC SERVICE IN RURAL AREA</h2>
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
                <article class="" style="width: 1300px; background-color: lightyellow">
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
    <h2 style="color:darkslateblue;font-family: cambria;font-weight: bold; font-size: 30px;">View Overall Materials details</h2><br>
    <table align="center" border="1" style="width: 90% !important; margin-left: 3px;line-height: 1.7;background: aliceblue;border-radius: 12px;text-align: left;color: black;text-transform: capitalize;">
	        	<tr style="color: navy;font-weight: bold">
	        		<td>Id</td>    
	        		<td>Brand</td>
	        		<td>Cement type</td>
	        		<td>Size</td>
	        		<td>Chemical reaction</td>
	        		<td>Color</td>
	        		<td>Cost</td>
                                <td>Account No</td>
	        		<td>IFSC No</td>
	        		<td>CVV No</td>
	        		<td>Status</td>
                                <td>Action</td>
                                
	        	</tr>
	            <%
                    String name=session.getAttribute("name").toString();
                    String id=session.getAttribute("id").toString();     
                    String profile=session.getAttribute("profile").toString();                   
                   
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/optical","root","root");
                        PreparedStatement query=con.prepareStatement("select * from orders where uname='"+name+"' and uid='"+id+"'  ");
                        ResultSet rs=query.executeQuery();
	            	while(rs.next())
	            	{
                            String s=rs.getString("Status");
	            %>
	            			<tr>
	            				<td><%=rs.getString("id") %></td>       
                                                <td><%=rs.getString("gname") %></td>
	            				<td><%=rs.getString("shape") %></td>
                                                <td><%=rs.getString("size") %></td>
                                                <td><%=rs.getString("typ") %></td>
                                                <td><%=rs.getString("color") %></td>
                                                <td><%=rs.getString("cost") %></td>
                                                <td><%=rs.getString("accountno") %></td>
                                                <td><%=rs.getString("ifscno") %></td>
                                                <td><%=rs.getString("cvvno") %></td>
                                                <td><%=s%></td>
                                                <%
                                                if(s.equals("Waiting")){
                                                %>
                                                <td style="color: red;">Waiting Stage</td>
                                                <%} else{%>
                                                <td style="color: darkgreen">Already Assigned</td>
                                                <%}%>
                                        </tr>		
	            <%	
	            	}	
	            %>
	        </table>
    
     
                    
                </article>
            </div>
        </section>
       
        
        
</body>
</html>