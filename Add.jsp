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
            <div class="tm-nav-container tm-bg-color-9">
                <nav class="tm-nav" id="tm-nav">
                    <ul>
                        <li class="tm-nav-item current">
                            <a href="AdminHome.jsp" class="tm-nav-link">
                            
                                <span>Home</span>
                            </a>
                        </li>
                        <li class="tm-nav-item">
                            <a href="Add.jsp" class="tm-nav-link">
                             
                                <span>Start</span>
                            </a>
                        </li>
                        <li class="tm-nav-item">
                            <a href="viewspec.jsp" class="tm-nav-link">
                           
                                <span>View</span>
                            </a>
                        </li>
                        <li class="tm-nav-item">
                            <a href="status.jsp" class="tm-nav-link">
                             
                                <span class="tm-nav-text">Status</span>
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
                <div class="tm-section-1-l">
                    <img src="https://i.pinimg.com/564x/8b/3c/dc/8b3cdc7ce66fe20b8d3cbad702832bf5.jpg" style="width:650px; height:500px;" alt="About image" class="tm-img-responsive">
                </div>
                   <article class="tm-section-1-r tm-bg-color-8">
 <style>
      table{
          width: 50%;
          color: darkmagenta;
          font-size: 20px;
      }
      tr,td{
          padding-bottom: 10px;
          border-radius: 20px;
          font-family: initial;
          width: 350px;
      }
     
  </style>
        <h2 align="center" style="margin-top: 20px; color:black; font-family: cursive; font-weight: bold; font-size: 30px;">Add Scheme details!</h2><br>
        <form action="Addaction" method="post" enctype="multipart/form-data">
        <table align="center">
          <tr><td><strong>Scheme Name: </strong></td><td>
                  <select name="user" style="border-radius: 10px; height: 40px; width: 300px;" required>
                      <option>----Choose AnyOne---</option>
                      <option>Agriculture,Rural & Environment</option>
                      <option>Banking,Financial Services and Insurance</option>
                      <option>Business & Entrepreneurship</option>
                      <option>Education & Learning</option>
                      <option>Health & Wellness</option>
                      <option>Housing & Shelter</option>
                      <option>Public Safety,Law & Justice</option>
                      
                  </select>
         </td></tr>
          <tr><td><strong>Eligibility: </strong></td><td>
                  <select name="brand" style="border-radius: 10px; height: 40px;width: 300px;" required>
                      <option>----Choose AnyOne---</option>
                      <option>Proprietorship Firm</option>
                      <option>Private Limited Company incorporated under the Companies</option>
                      <option>Public Limited Company incorporated under the Companies </option>
                      <option>Registered Partnership Firm incorporated under the Indian Partnership </option>
                      <option>The bank accounts of the unit and/or its partner</option>
                      
                  </select>
         </td></tr>
          <tr><td><strong>Document required: </strong></td><td>
                  <select name="shape" style="border-radius: 10px; height: 40px; width: 300px;" required>
                      <option>----Choose---</option>
                      <option>Copy of Incorporation Certificate.</option>
                      <option>Copy of new unit registration document/certificate.</option>
                      <option>Copies of PAN and Aadhaar</option>
                      <option>Memorandum and Articles of Association</option>
                  </select>
         </td></tr>
          <tr><td><strong>Scheme category: </strong></td><td>
                  <select name="size" style="border-radius: 10px; height: 40px; width: 300px;" required>
                      <option>----Choose AnyOne---</option>
                      <option>Agriculture, Rural & Environment - 120scheme</option>
                      <option>Banking, Financial Services, and Insurance - 84 scheme</option>
                      <option>Business & Entrepreneurship - 70 scheme</option>
                  </select>
         </td></tr>
          <tr><td><strong>Scheme Type: </strong></td><td>
                  <select name="type" style="border-radius: 10px; height: 40px; width: 300px;" required>
                      <option>----Choose AnyOne---</option>
                      <option>upon funding & implementing agencies</option>
                      <option>Central Schemes or Central Sector Schemes</option>
                      <option>Central Sponsored Schemes</option>
                  </select>
         </td></tr>
          <tr><td><strong>Color Scheme: </strong></td><td>
                  <select name="color" style="border-radius: 10px; height: 40px;width: 300px;" required>
                      <option>----The seven major color schemes---</option>
                      <option>monochromatic</option>
                      <option>analogous</option>
                      <option>complementary</option>
                      <option>  split complementary </option>
                      <option>  triadic, square</option>
                      <option>rectangle </option>
                      <option>tetradic</option>
                  </select>
         </td></tr>
          <tr><td><strong>Image: </strong></td><td><input type="file" name="file" accept="image/x-png,image/gif,image/jpeg"/></tr>
         <tr><td><strong>Cost: </strong></td><td><input type="text" name="cost" style="border-radius: 10px; height: 40px;width: 300px;" required></tr>
         <tr><td align="center" colspan="2"><button type="submit" style="border-radius: 20px; height: 40px; width:120px;background-color: darkslateblue; ">ADD</button></td></tr>
         </table>
        </form>
                    
                </article>
            </div>
        </section>
       
        
        
</body>
</html>