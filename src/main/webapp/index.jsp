

<!DOCTYPE html>
<html lang="en">
   <head>
      <!-- basic -->
      <meta charset="utf-8">
      <!-- mobile metas -->
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta name="viewport" content="initial-scale=1, maximum-scale=1">
      <!-- site metas -->
      <title>Web Dev Tool</title>
       <link rel="shortcut icon" type="image/png" href="user/images/logo.png" />
      <meta name="keywords" content="">
      <meta name="description" content="">
      <meta name="author" content="">
      <!-- bootstrap css -->
      <link rel="stylesheet" href="user/css/bootstrap.min.css">
      <!-- style css -->
      <link rel="stylesheet" href="user/css/style.css">
      <!-- Responsive-->
      <link rel="stylesheet" href="user/css/responsive.css">
      <!-- fevicon -->
      <link rel="icon" href="user/images/fevicon.png" type="image/gif" />
      <!-- Scrollbar Custom CSS -->
      <link rel="stylesheet" href="user/css/jquery.mCustomScrollbar.min.css">
      <!-- Tweaks for older IEs-->
      <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
      <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
       <style>
        body {
      font-family: 'Padauk', sans-serif;
   }
        /* Custom styles for the layout */
        .header-container {
        margin-top:100px;
            width:80%;
            height:auto;
            margin-left:10%;
            display:flex;
            flex-direction: row;
        }
        .header-container1{
        width:50%;
        padding-left:10%;
        
        }
        .header-container1 h1{
        font-size:50px;
        font-weight:700;
        margin-top:50px
        }
        .header-container2{
        width:50%;
        }
         .header-container2 .img{
         width:100%;
         }
         .p{
         font-size:20px
         }
         .button{
         width:200px;
         height:50px;
         padding-top:10px}

         @media (max-width: 768px) {
            /* Adjust styles for smaller screens */
            .header-container {
                flex-direction: column;
            }

            .header-container1 {
                width: 100%;
                padding-left: 0;
            }

            .header-container1 h1 {
                margin-top: 20px;
            }

            .header-container2 {
                width: 100%;
            }
        }
    </style>
   </head>
   <!-- body -->
   <body class="main-layout">
      <!-- loader  -->
      <div class="loader_bg">
         <div class="loader"><img src="user/images/loading.gif" alt="#" /></div>
      </div>
      <!-- end loader --> 
      <!-- header -->
      <jsp:include page="header.jsp"/>
      
      
      <!-- end header -->
      <section class="header-container">
        <div class="header-container1">
            <h1>KNOWLEDGE <br> <strong class="black_bold">FOR </strong><br>
                <strong class="yellow_bold">WEB DEV </strong></h1>
            <p class="p">Welcome to our knowledge-sharing blog</p><br>
            <a href="blog" class="btn btn-primary button">See more Blogs</a>
        </div>
        <div class="header-container2">
            <img class="img" src="user/images/photo.jpg" alt="First slide">
        </div>
      </section>



<!-- CHOOSE  -->
      <div class="whyschose">
         <div class="container">

            <div class="row">
               <div class="col-md-7 offset-md-3">
                  <div class="title">
                     <h2>What <strong class="black">is your target!</strong></h2>
                     <span>For Beginner Web Developers </span>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <div class="choose_bg">
         <div class="container">
            <div class="white_bg">
            <div class="row justify-content-center">
               <dir class="col-xl-3 col-lg-3 col-md-6 col-sm-12">
                  <div class="for_box">
                     <i><img style="height:150px"  src="user/images/frontend.jpg"/></i>
                     <h3>Frontend</h3>
                     <p>Step by step guide to becoming a modern frontend developer in 2024</p>
                     <div class="col-md-12">
                  <a href="Frontend.jsp" class="read-more">Read More</a>
               </div>
                  </div>
               </dir>
               <dir class="col-xl-3 col-lg-3 col-md-6 col-sm-12">
                  <div class="for_box">
                     <i><img style="height:150px;width:100%;" src="user/images/backend.jpg"/></i>
                     
                     <h3>Backend</h3>
                     <p>Step by step guide to becoming a modern backend developer in 2024</p>
                     <div class="col-md-12">
                  <a href="Backend.jsp" class="read-more">Read More</a>
               </div>
                  </div>
               </dir>
               <dir class="col-xl-3 col-lg-3 col-md-6 col-sm-12">
                  <div class="for_box">
                     <i><img style="height:150px" src="user/images/fullstack.jpg"/></i>
                     <h3>Full Stack</h3>
                     <p>Step by step guide to becoming a modern full stack developer in 2024</p>
                     <div class="col-md-12">
                  <a href="Fullstack.jsp" class="read-more">Read More</a>
               </div>
                  </div>
               </dir>
                              
            </div>
         </div>
       </div>
      </div>
<!-- end CHOOSE -->

      <!-- service --> 
      <div class="service">
         <div class="container">
            <div class="row">
               <div class="col-md-8 offset-md-2">
                  <div class="title">
                     <h2>Our  <strong class="black">Contributions</strong></h2>
                     <p>မြန်မာလို ရေးမရဘူး</p>
                  </div>
               </div>
            </div>
            <div class="row">
               <div class="col-xl-4 col-lg-4 col-md-4 col-sm-12">
                  <div class="service-box">
                     
                     <h3>General</h3>
                     <p>Exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea </p>
                  </div>
               </div>
               <div class="col-xl-4 col-lg-4 col-md-4 col-sm-12">
                  <div class="service-box">
                     
                     <h3>Server</h3>
                     <p>Exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea </p>
                  </div>
               </div>
               <div class="col-xl-4 col-lg-4 col-md-4 col-sm-12">
                  <div class="service-box">
                    
                     <h3>OOP</h3>
                     <p>Exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea </p>
                  </div>
               </div>
               <div class="col-xl-4 col-lg-4 col-md-4 col-sm-12">
                  <div class="service-box">
                     
                     <h3>Design Pattern</h3>
                     <p>Exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea </p>
                  </div>
               </div>
               
            </div>
            <div class="btn btn-primary " >
                  <li><a style="color:white" href="blog">See all blogs</a></li>
               </div>
         </div>
      </div>
       <br><br>
      <!-- end service -->

      
    
      <!--  footer --> 

	<jsp:include page="footer.jsp"/>


      
      <!-- end footer -->
      <!-- Javascript files--> 
      <script src="user/js/jquery.min.js"></script> 
      <script src="user/js/popper.min.js"></script> 
      <script src="user/js/bootstrap.bundle.min.js"></script> 
      <script src="user/js/jquery-3.0.0.min.js"></script> 
      <script src="user/js/plugin.js"></script> 
      <!-- sidebar --> 
      <script src="user/js/jquery.mCustomScrollbar.concat.min.js"></script> 
      <script src="user/js/custom.js"></script>
      <script src="https:cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.js"></script>
      <script>
         $(document).ready(function(){
         $(".fancybox").fancybox({
         openEffect: "none",
         closeEffect: "none"
         });
         
         $(".zoom").hover(function(){
         
         $(this).addClass('transition');
         }, function(){
         
         $(this).removeClass('transition');
         });
         });
         
      </script> 
   </body>
</html>