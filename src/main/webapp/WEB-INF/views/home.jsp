<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!-- <html>
<head>
	<title>Home</title>

<link rel='stylesheet' href='/resources/PageAnimation/style.css'>
    
</head>
<body>
     -->
     <%@include file="./includes/board-header.jsp" %>
     
    <header>
        <nav>
            <h3 id="home_logo">SW4-G02-Library</h3>            
            	<h2 class="glogo" >현재 시각 : 
	            <time class="#"  id="time">12:02:04 PM</time>			     
				</h2>
        </nav>
        <section>
            <div class="hero">
                <img src="/resources/PageAnimation/img/library-photo.jpeg" alt="" />
                <h1 class="headline">Dream Library</h1>
            </div>
        </section>
    </header>

    <div class="slider"></div>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/2.1.3/TimelineMax.min.js" 
    integrity="sha256-fIkQKQryItPqpaWZbtwG25Jp2p5ujqo/NwJrfqAB+Qk=" 
    crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/2.1.3/TweenMax.min.js" 
    integrity="sha256-lPE3wjN2a7ABWHbGz7+MKBJaykyzqCbU96BJWjio86U="
    crossorigin="anonymous"></script>   
    <script src="/resources/PageAnimation/app.js"></script>
    <script src="/resources/time/time.js"></script>
    
	<!-- jQuery Modal -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js  "></script>
<!-- JQuery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> 
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>  
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
<!-- pagination BootstrapCDN-->
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" ></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>

<%@include file="./includes/footer.jsp" %>
