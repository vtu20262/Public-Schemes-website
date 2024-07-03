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
        <!-- Back to top button -->
    <a id="button"><i class="fas fa-angle-up fa-2x"></i></a>
    <div class="container-fluid">
        <div class="tm-site-header tm-mb-1">
            <div class="tm-site-name-container tm-bg-color-1">
                <h1 class="tm-text-white" align="center">PUBLIC SERVICE IN RURAL AREA</h1>
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
                             
                                <span>View Specs</span>
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
                <article class="tm-section-1-r tm-bg-color-8" style="width: 1300px;">
                   <style>
      table{
          font-family: cursive;
          width: 50%;
          color: #007bff;
          margin-left: 25%;
          font-size: 20px;
          font-weight: bold;
      }
      table,tr,td{
          padding-bottom: 10px;
      }
      
     
  </style>
  <%
  String id=request.getParameter("id");
  String name=request.getParameter("name");
  %>
    <h2 style="color:darkslateblue;font-family: cambria;font-weight: bold; font-size: 30px;">Product Details: <%=name%></h2><br>
    
	            <%
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/optical","root","root");
                        PreparedStatement query=con.prepareStatement("select * from addoptical where id='"+id+"' ");
                        ResultSet rs=query.executeQuery();
	            	while(rs.next())
	            	{
                    %>
                    
                    <form action="cart.jsp">
                        <table align="center">
                            <tr align="center"><img src="profile/<%=rs.getString("image")%> " style="margin-left:380px; border-radius:20px; height: 200px;width: 350px;"></td></tr><br><br>
                            <tr align="center"><td>Ref NO </td><td style="color:black"> <input type="text" name="id" value="<%=rs.getString("id")%>" readonly=""></td></tr>
                        <tr align="center"><td>Scheme Name</td><td style="color:darkblue"> <input type="text" name="gname" value="<%=rs.getString("gname")%>" readonly="" </td></tr>
                        <tr align="center"><td>Document required </td><td style="color:brown"><input type="text" name="shape" value="<%=rs.getString("shape")%>" readonly=""</td></tr>
                        <tr align="center"><td>Scheme category</td><td style="color:crimson"><input type="text" name="size" value="<%=rs.getString("size")%>" readonly=""</td></tr>
                        <tr align="center"><td>Type </td><td style="color:forestgreen"><input type="text" name="type" value="<%=rs.getString("type")%>" readonly=""</td></tr>
                        <tr align="center"><td>Scheme Type </td><td style="color:lightseagreen"><input type="text" name="color" value="<%=rs.getString("color")%>" readonly=""</td></tr>
                        <tr align="center"><td>Color Scheme </td><td style="color:orange"><input type="text" name="cost" value="<%=rs.getString("cost")%>" readonly=""</td></tr>
                        <tr align="center"><td>Account No </td><td style="color:forestgreen"><input type="text" name="ano" value=""></td></tr>
                        <tr align="center"><td>IFSC No</td><td style="color:lightseagreen"><input type="text" name="ifsc" value=""></td></tr>
                        <tr align="center"><td>CVV No</td><td style="color:orange"><input type="text" name="cvv" value=""></td></tr>
                        
                        <tr><td align="center" colspan="2">
                                <button type="submit" style="border-radius: 20px; height: 40px; width:120px; background-color: lightcoral; ">
                                    Buy Now
                                </button>
                            </td>
                        </tr>
                    
                        <%
                        }
                        %>
                        </table>	
                        <a href="viewspec.jsp">Click Back</a>
	        </table>
                    </form>
    
     
                    
                </article>
            </div>
        </section>
       
        
        
</body>
</html>