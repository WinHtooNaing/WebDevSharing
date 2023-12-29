<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import=" java.sql.Timestamp" %>
<!DOCTYPE html>
<html>
<head>
      <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
      <title>Web Dev Tool</title>
       <link rel="shortcut icon" type="image/png" href="user/images/logo.png" />
     
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
</head>
<body>
<jsp:include page="header.jsp"/>

	<%@ page import="form.com.model.*,java.util.*" %>
	 <div class="Lastestnews blog" style="background:none">
	<div class="container">
	 <div class="row">
        <%
        List<Posts> posts = (List<Posts>) session.getAttribute("posts");
        for(Posts post : posts){
        %>
        
                <div class="col-xl-4 col-lg-4 col-md-4 col-sm-12 margin">
                    <div class="news-box">
                        <figure><a href="postDetails.jsp?id=<%= post.getId()%>"><img style="height:200px" src="user/images/project/<%=post.getImage() %>" alt="img" /></a></figure>
                        <h3><%=post.getTitle() %></h3>
                        <% Timestamp timestamp = post.getCreated_at(); %>
                        <% SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd"); %>
                        <span> <%= dateFormat.format(timestamp) %></span>
                        <p><%= post.getDescription().substring(0, 100) %>... </p>
                    </div>
                </div>
          
        <%
        }
        %>
        </div>
        </div>
        </div>

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