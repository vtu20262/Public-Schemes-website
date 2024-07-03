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
            <div class="tm-site-name-container tm-bg-color-9">
                                <h2 class="tm-text-white" align="center">PUBLIC SERVICE IN RURAL AREA</h2>
            </div>
            <div class="tm-nav-container tm-bg-color-8">
                <nav class="tm-nav" id="tm-nav">
                    <ul>
                        <li class="tm-nav-item current">
                            <a href="AdminHome.jsp" class="tm-nav-link">
                            
                                <span>Home</span>
                            </a>
                        </li>
                        <li class="tm-nav-item">
                            <a href="Add.jsp" class="tm-nav-link">
                             
                                <span>Add</span>
                            </a>
                        </li>
                        <li class="tm-nav-item">
                            <a href="viewspec.jsp" class="tm-nav-link">
                             
                                <span>View</span>
                            </a>
                        </li>
                        <li class="tm-nav-item">
                            <a href="status.jsp" class="tm-nav-link">
                             
                                <span class="tm-nav-text">View Status</span>
                            </a>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
        <section class="tm-mb-1" id="about">
            <div class="tm-row tm-about-row">
                <article class="" style="width: 1300px; background-color:lightyellow;">
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
  <%
  String id=request.getParameter("id");
  String name=request.getParameter("name");
  %>
    <h2 style="color:darkslateblue;font-family: cambria;font-weight: bold; font-size: 30px;">Scheme Details: <%=name%></h2><br>
    
	            <%
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/optical","root","root");
                        PreparedStatement query=con.prepareStatement("select * from addoptical where id='"+id+"' ");
                        ResultSet rs=query.executeQuery();
	            	while(rs.next())
	            	{
                    %>
                        <table align="center">
                            <tr align="center"><img src="profile/<%=rs.getString("image")%> " style="margin-left:380px; border-radius:20px; height: 200px;width: 350px;"></td></tr><br><br>
                        <tr align="center"><td style="color:black">ID </td><td><%=rs.getString("id")%></td></tr>
                        <tr align="center"><td style="color:black">Scheme Name </td><td><%=rs.getString("gname")%></td></tr>
                        <tr align="center"><td style="color:black">Document required</td><td><%=rs.getString("shape")%></td></tr>
                        <tr align="center"><td style="color:black">Scheme category</td><td><%=rs.getString("size")%></td></tr>
                        <tr align="center"><td style="color:black">Scheme Vacancy</td><td><%=rs.getString("type")%></td></tr>
                        <tr align="center"><td style="color:black">Scheme Type</td><td><%=rs.getString("color")%></td></tr>
                        <tr align="center"><td style="color:black">Scheme Color</td><td><%=rs.getString("cost")%></td></tr>
                        
                        <%
                        }
                        %>
                        </table>	
                        <a href="viewspec.jsp">Click Back</a>
	        </table>
    
    
     
                    
                </article>
            </div>
        </section>
       
        
        
</body>
</html>