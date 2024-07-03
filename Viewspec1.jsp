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
                        
                                <span> Materials</span>
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
          width: 50%;
          color: darkmagenta;
          font-size: 20px;
          margin-top: 150px;
      }
      tr,td{
          padding-bottom: 10px;
          border-radius: 20px;
          font-family: initial;
          width: 350px;
      }
      h3{
          color: lightpink;
          margin-left: 300px;
      }
  </style>
                    <%
                    String name=session.getAttribute("name").toString();
                    String id=session.getAttribute("id").toString();     
                    String profile=session.getAttribute("profile").toString();                   
                    %>
                    <h2 align="center">Choose Our Brand</h2>
                    <form action="searchaction.jsp">
                    <table align="center">
                        <tr><td><strong>Search By Materials: </strong></td><td>
                            <select name="brand" style="border-radius: 10px; height: 20px; width: 250px; height: 30px" required>
                                <option>Choose one</option>
                                <option>Proprietorship Firm</option>
                      <option>Private Limited Company incorporated under the Companies</option>
                      <option>Public Limited Company incorporated under the Companies</option>
                      <option>Registered Partnership Firm incorporated under the Indian Partnership</option>
                      <option>The bank accounts of the unit and/or its partner</option>
                            </select>
                            </td></tr>
                        <tr><td align="center" colspan="2"><button type="submit" style="border-radius: 20px; height: 40px; width:120px;background-color: darkslateblue; margin-left: 100px;">Search</button></td></tr>
                    </table>
                    </form>
                </article>
            </div>
        </section>
       
        
        
</body>
</html>