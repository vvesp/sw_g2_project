<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <title>CSS# Selector Basic Page</title>
    <link rel="stylesheet" href="/resources/css/home_style.css">
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"
     integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    <!-- <script src='main.js'></script> -->
</head>
<body class="new-test">
    <div class="container">
         <div class="menu">
            <ul>
                <li class="logo"><img src="/resources/Logo1.png"> </li>
                <li class="active">Home</li>
                <li>Service</li>                
                <li>Contact</li>
                <li><a href="#" class="board-btn"><span>게시판</span></a></li>
                <li><a href="#" class="signin-btn"><span>Sign in</span></a></li>
                <li><a href="#" class="signup-btn"><span>Sign Up</span></a></li>
            </ul>            
        </div> 
        <div class="banner">
            <div class="app-text">
                <h1>Now the sun is shining <br>
                    Through the tall windows.<br>
                </h1>
                <p>
                    The library is a quiet place. Angels and gods<br>
                     huddled In dark unopened books.<br>
                    The great secret lies<br>
                    On some shelf Miss Jones Passes every day<br>
                     on her rounds.<br>           
                    She’s very tall, so she keeps Her head tipped as if<br>
                     listening.<br>
                    The books are whispering. I hear nothing,<br>
                     but she does.<br>
                </p>
                <div class="play-btn">
                    <div class="play-btn-inner"><i class="fa fa-book">                        
                    </i></div>
                    <small><b>BOOK RENTAL</b></small>
                </div>
            </div>
            <div class="app-picture">
                <img src="/resources/Library-of-Alexandria.jpg">
            </div>
        </div>
        <div class="time-link" >접속시간 : ${serverTime}</div>
        <div class="quick-links">
            <ul>
                <li><i class="fa fa-share-alt"></i><p>공유</p></li>
                <li><i class="fa fa-audio-description"></i><p>최근 소식</p></li>
                <li><i class="fa fa-cog"></i><p>ANALYTICS</p></li>
                <li><i class="fa fa-handshake-o"></i><p>협력</p></li>
            </ul>
        </div>
        <div class="social-icons">
            <ul>
                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                <li><a href="#"><i class="fa fa-instagram"></i></a></li>
            </ul>
        </div>
    </div>
</body>
</html>