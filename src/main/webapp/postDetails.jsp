<%@ page import="form.com.model.Posts" %>
<%@ page import="form.com.daos.PostDaos" %>
<%   String postId = request.getParameter("id"); %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import=" java.sql.Timestamp" %>
<!DOCTYPE html>

<html>
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
      	.page-container{
      	width:80%;
      	margin-left:10%;
      	margin-top: 50px;
      	}
      	.image{
      	width:80%;
      	margin-left:10%;
      	height:450px;
      	margin-bottom: 50px;
      	}
      	.title{
      	font-size:30px;
      	font-weight:700
      	}
      	.time{
      	text-align:center;
      	margin-top:-30px;
      	margin-bottom: 50px;
      	}
      	.description{
      	line-height:30px;
      	}
      	 @media (max-width: 1000px) {
      	 	.image{
      	 	height:auto;}
      	 }
      </style>
</head>
<body>
<jsp:include page="header.jsp"/>

<%
   
    if (postId != null && !postId.isEmpty()) {
       
        int id = Integer.parseInt(postId);
        Posts post = PostDaos.getPostById(id); 
        

        
        if (post != null) {
%>

            <!-- Display post details -->
            <div class="page-container">
            	<img class="image" src="user/images/project/<%= post.getImage()%>"/>
                <h2 class="title"><%= post.getTitle() %></h2>
                <% Timestamp timestamp = post.getCreated_at(); %>
                        <% SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd"); %>
                <p class="time"><strong>Date :</strong> <%= dateFormat.format(timestamp) %></p>
                <p class="description"> <%= post.getDescription() %></p>
            </div>

<%
        } else {
          
%>
            <div>
                <p>Post not found.</p>
            </div>
<%
        }
    } else {
      
%>
    <div>
        <p>Invalid request. Post ID is missing.</p>
    </div>
<%
    }
%>

<jsp:include page="footer.jsp"/>



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