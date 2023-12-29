<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
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
      .frontend-container{
      width:80%;
      margin-left:10%;
      margin-top:100px;
      }
       .h1{
      	font-size:50px;
      	font-weight:700;
      	color:#222;
      	font-family:
      }
       .p{
      	font-size:20px;
      }
      .h2{
      font-size:30px;
      color:#222;
      }
      </style>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

	<div class="frontend-container">
	<h1 class="h1">What is front end development?</h1>
	<p class="p">Front end development (sometimes written "frontend development") is like designing the face 
	of a website or app. It's all about how things look and feel when you use them. While back end 
	developers make sure everything works behind the scenes, front end developers focus on what you 
	see and interact with, making sure it's easy to use and looks good on any device. 
	In short, front end developers turn designs into live websites and apps that people can use.</p><br>
	<p class="p">At its core, frontend development revolves around three main technologies: HTML, CSS, 
	and JavaScript. We will explain more about these technologies in a bit, but for now just know
	 that almost everything in frontend development revolves around them. As a frontend developer,
	  your role is pivotal in ensuring that the website's design translates well 
	to various devices, is user-friendly, and aligns with the client's vision.</p>
	</div>
	
	<div class="frontend-container">
	<h1 class="h1">How long does it take to become a Frontend Developer?</h1>
	<p class="p">The journey to becoming a frontend developer is unique for everyone. For complete beginners, it might take anywhere between 6 to 12 months of dedicated learning and practice to land an entry-level position. For those with some prior knowledge, the timeline might be shorter. The key is consistent practice, engagement with the developer community, and continuous learning.</p>
	</div>
	<div class="frontend-container">
	<h1 class="h1">Should you learn everything covered in this learning path?</h1>
	<p class="p">This frontend learning path covers a lot of important tools and technologies. Not every item on this roadmap is essential for entry into the field. Every job is unique and most of the jobs will require a subset of the technologies on the roadmap. The most important things to know are HTML, CSS, and JavaScript. But remember, the tech world is ever-evolving, and staying updated is crucial. This roadmap will help you identify areas you might need to explore further.</p>
	</div>
	


<div class="frontend-container">
<h1 class="h1">Essential Technologies for Frontend Development</h1>
<p class="p">So here are the essential technologies you need to learn. You can watch a full comprehensive course on each of these technologies, right on the freeCodeCamp.org YouTube channel as part of this front end learning path.</p>
</div>

<div class="frontend-container">
	<h2 class="h2">Internet Basics</h2>
	<p class="p">The internet is a vast interconnected network that has revolutionized the way we communicate, work, and live. Before diving further into frontend development, it's essential to grasp the foundational concepts of how the internet functions.</p><br>
	<p class="p">This foundational knowledge encompasses understanding domains, the Domain Name System (DNS), servers, and protocols like HTTP/HTTPS. Additionally, a basic comprehension of web browsers, their role, and how they render web pages is crucial for anyone looking to venture into web development.</p>
</div>
<div class="frontend-container">
      <h2 class="h2">
            HTML
      </h2>
      <p class="p">HTML, or HyperText Markup Language, is the cornerstone of web content. It's akin to the skeleton of a website, providing the essential structure upon which everything else is built.</p><br>
      <p class="p">As the standard markup language for web pages, HTML uses tags to define elements and structure the content. From headings to paragraphs, links, and images, everything visible on a webpage is typically structured using HTML.</p>
</div>
<div class="frontend-container">
      <h2 class="h2">CSS</h2>
      <p class="p">If HTML is the skeleton of a website, CSS, or Cascading Style Sheets, is its skin. It's responsible for the visual appeal of a website, dictating everything from colors and fonts to layouts.</p><br>
      <p class="p">CSS allows developers to create responsive designs that adapt to different screen sizes and devices. It ensures that websites are not only functional but also aesthetically pleasing and user-friendly.</p>
</div>
<div class="frontend-container">
      <h2 class="h2">JavaScript</h2>
      <p class="p">JavaScript breathes life into static web pages. It's a dynamic programming language that introduces interactivity, making websites more engaging and user-centric.</p><br>
      <p class="p">From simple animations to complex functionalities like form validations and asynchronous data fetching, JavaScript plays a pivotal role. It's the magic behind the dynamic behavior of web applications.</p>
</div>
<div class="frontend-container">
      <h2 class="h2">Version Control: Git and GitHub</h2>
      <p class="p">In the world of software development, tracking and managing changes is crucial. This is where version control systems, particularly Git, come into play.</p><br>
      <p class="p">Git allows developers to track changes, collaborate seamlessly, and revert to previous versions if needed. GitHub, on the other hand, is a platform that hosts Git repositories, facilitating collaboration, code sharing, and even deployment.</p>
</div>
<div class="frontend-container">
      <h2 class="h2">Package Managers</h2>
      <p class="p">As projects grow and evolve, managing software libraries and dependencies can become a challenge. Package managers are tools designed to address this challenge.</p><br>
      <p class="p">Popular package managers like npm or yarn help developers manage, install, and update software libraries seamlessly. They ensure that projects have the right versions of dependencies, making the development process smoother.</p>
</div>
<div class="frontend-container">
      <h2 class="h2">Bootstrap 5 and SASS</h2>
      <p class="p">Designing responsive and visually appealing websites can be streamlined with the right tools. Bootstrap is one such framework that has revolutionized web design.</p><br>
      <p class="p">Bootstrap offers pre-designed components and a grid system, making responsive design a breeze. SASS, a CSS preprocessor, allows for advanced styling techniques, variables, and nested rules, enhancing the styling process.</p>
</div>
<div class="frontend-container">
      <h2 class="h2">JavaScript Frameworks (React, Vue, Angular, etc)</h2>
      <p class="p">Modern web applications demand efficiency, scalability, and maintainability. JavaScript frameworks and libraries provide pre-written code to support these requirements.</p><br>
      <p class="p">Frameworks like React, Vue, and Angular have their own philosophies and methodologies but aim to simplify complex tasks, promote code reusability, and enhance performance. They play a pivotal role in building single-page applications and dynamic web apps.</p>
</div>
<div class="frontend-container">
      <h2 class="h2">Tailwind CSS</h2>
      <p class="p">Tailwind CSS has emerged as a game-changer in the world of CSS frameworks. It adopts a utility-first approach, allowing for rapid UI development.</p><br>
      <p class="p">Instead of predefined components, Tailwind provides utility classes that can be combined to create custom designs. This approach promotes flexibility and reduces the need for custom CSS, leading to faster development cycles.</p>
</div>
<div class="frontend-container">
      <h2 class="h2">TypeScript</h2>
      <p class="p">While JavaScript is dynamic and flexible, there are scenarios where a more structured approach is beneficial. Enter TypeScript, a superset of JavaScript that introduces static typing.</p><br>
      <p class="p">TypeScript offers type annotations, interfaces, and enhanced tooling, leading to more robust code. It helps catch errors during compile-time, ensuring that potential issues are addressed before runtime.</p>
</div>
<div class="frontend-container">
      <h2 class="h2">Next.js</h2>
      <p class="p">Building server-rendered React applications can be streamlined with the right framework. Next.js is a leading choice, offering features that enhance performance and developer experience.</p><br>
      <p class="p">Next.js provides automatic code splitting, server-side rendering, and a rich set of features that make building scalable React applications a breeze.</p>
</div>
<div class="frontend-container">
      <h2 class="h2">Performance Best Practices</h2>
      <p class="p">A well-designed website is not just about aesthetics; performance plays a crucial role in user experience and search engine rankings.</p><br>
      Adhering to best practices like optimizing images, leveraging browser caching, and minimizing server response times can significantly boost website performance. Regular audits using tools like Google's Lighthouse can provide insights and recommendations.
</div>
<div class="frontend-container">
      <h2 class="h2">Conclusion</h2>
      <p class="p">Front end development is a dynamic and ever-evolving field. As technologies emerge and best practices evolve, staying updated and adaptable is key. This roadmap provides a foundation, but the journey of learning and exploration is endless. Engage with the community, experiment with new tools, and always strive for excellence. The world of front end development offers endless possibilities, and with the right tools and knowledge, you can craft exceptional web experiences.</p>
</div>




<jsp:include page="footer.jsp"/>



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