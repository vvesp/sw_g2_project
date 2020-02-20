<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../includes/header.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!-- CSS 적용 부분 -->
<style>
<!--
 :root {
  --input-padding-x: 1.5rem;
  --input-padding-y: .75rem;
}

body {
  background: #007bff;
  background: linear-gradient(to right, #0062E6, #33AEFF);
}

.card-signin {
  border: 0;
  border-radius: 1rem;
  box-shadow: 0 0.5rem 1rem 0 rgba(0, 0, 0, 0.1);
  overflow: hidden;
}

.card-signin .card-title {
  margin-bottom: 2rem;
  font-weight: 300;
  font-size: 1.5rem;
}

.card-signin .card-img-left {
  width: 45%;
  /* Link to your background image using in the property below! */
  background: scroll center url('https://source.unsplash.com/WEQbe2jBg40/414x512');
  background-size: cover;
}

.card-signin .card-body {
  padding: 2rem;
}

.form-signin {
  width: 100%;
}

.form-signin .btn {
  font-size: 80%;
  border-radius: 5rem;
  letter-spacing: .1rem;
  font-weight: bold;
  padding: 1rem;
  transition: all 0.2s;
}

.form-label-group {
  position: relative;
  margin-bottom: 1rem;
}

.form-label-group input {
  height: auto;
  border-radius: 2rem;
}

.form-label-group>input,
.form-label-group>label {
  padding: var(--input-padding-y) var(--input-padding-x);
}

.form-label-group>label {
  position: absolute;
  top: 0;
  left: 0;
  display: block;
  width: 100%;
  margin-bottom: 0;
  /* Override default `<label>` margin */
  line-height: 1.5;
  color: #495057;
  border: 1px solid transparent;
  border-radius: .25rem;
  transition: all .1s ease-in-out;
}

.form-label-group input::-webkit-input-placeholder {
  color: transparent;
}

.form-label-group input:-ms-input-placeholder {
  color: transparent;
}

.form-label-group input::-ms-input-placeholder {
  color: transparent;
}

.form-label-group input::-moz-placeholder {
  color: transparent;
}

.form-label-group input::placeholder {
  color: transparent;
}

.form-label-group input:not(:placeholder-shown) {
  padding-top: calc(var(--input-padding-y) + var(--input-padding-y) * (2 / 3));
  padding-bottom: calc(var(--input-padding-y) / 3);
}

.form-label-group input:not(:placeholder-shown)~label {
  padding-top: calc(var(--input-padding-y) / 3);
  padding-bottom: calc(var(--input-padding-y) / 3);
  font-size: 12px;
  color: #777;
}

.btn-google {
  color: white;
  background-color: #ea4335;
}

.btn-facebook {
  color: white;
  background-color: #3b5998;
}
-->
</style>

<!-- This snippet uses Font Awesome 5 Free as a dependency. You can download it at fontawesome.io! -->

  <div class="container">
    <div class="row">
      <div class="col-lg-10 col-xl-9 mx-auto">
        <div class="card card-signin flex-row my-5">
          <div class="card-img-left d-none d-md-flex">
             <!-- Background image for card set in CSS! -->
          </div>
          <div class="card-body">
            <h5 class="card-title text-center">Register</h5>
            <form class="form-signin" method="post">
              <div class="form-label-group">
                <input type="text" id="inputID" name="userid" value='<c:out value="${member.userid }"/>' class="form-control" placeholder="ID" required autofocus>
                <label for="inputID">ID</label>
              </div>

              <div class="form-label-group">
                <input type="password" id="inputPassword" name="pass" value='<c:out value="${member.pass }"/>' class="form-control" placeholder="Password" required>
                <label for="inputPassword">Password</label>
              </div>
              
              <hr>
              
              <div class="form-label-group">
                <input type="text" id="inputName" name="mname" value='<c:out value="${member.mname }"/>' class="form-control" placeholder="Name" required>
                <label for="inputName">Name</label>
              </div>

              <div class="form-label-group">
                <input type="text" id="inputSNum" name="snum" value='<c:out value="${member.snum }"/>' class="form-control" placeholder="Social Security Number" required>
                <label for="inputSNum">Social Security Number</label>
              </div>
              
              <div class="form-label-group">
                <input type="tel" id="inputTelNum" name="telnum" value='<c:out value="${member.telnum }"/>' class="form-control" placeholder="Telephone" required>
                <label for="inputTelNum">Telephone</label>
              </div>
              
              <div class="form-label-group">
                <input type="email" id="inputEMail" name="email" value='<c:out value="${member.email }"/>' class="form-control" placeholder="E-mail" required>
                <label for="inputEMail">E-mail</label>
              </div>
              
              <div class="form-label-group">
                <input type="text" id="inputAdre" name="adre" value='<c:out value="${member.adre }"/>' class="form-control" placeholder="Address" required>
                <label for="inputAdre">Address</label>
              </div>

              <button class="btn btn-lg btn-primary btn-block text-uppercase" type="submit" data-oper="register">Register</button>
              <button class="btn btn-lg btn-primary btn-block text-uppercase" type="reset" data-oper="reset">Cancel</button>
              <a class="d-block text-center mt-2 small" href="#">Sign In</a>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
  
 
