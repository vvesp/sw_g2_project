<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>

<link rel='stylesheet' href='/resources/PageAnimation/style.css'>
    
</head>
<body>
    
    <header>
        <nav>
            <h3 id="home_logo">SW4-G02-Library</h3>
            <img class="glogo" src="/resources/PageAnimation/img/back.png" alt="glogo" />

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

</body>
</html>
