<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Omikuji</title>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
	<link rel="stylesheet" type="text/css" href="/style.css">
	<script type="text/javascript" src="/script.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
    </head>
<body>
    <h1>Send an Omikuji!</h1>
    <div class="form_box">
    <form action="/omikuji/submit" method="post">
    	<div class="mb-3">
    		<label for = "pickNumber" class="form-label">Pick any Number from 5 to 25</label>
    		<input type="number" class="form-control" name="pickNumber"> 
    	</div>
    	<div class="mb-3">
    		<label for = "city" class="form-label">Enter the name of any city.</label>
    		<input type="text" class="form-control" name="city"> 
    	</div>
 	    <div class="mb-3">
    		<label for = "person" class="form-label">Enter the name of any real person.</label>
    		<input type="text" class="form-control" name="person"> 
    	</div>
 	    <div class="mb-3">
    		<label for = "hobby" class="form-label">Enter professional endeavor or hobby.</label>
    		<input type="text" class="form-control" name="hobby"> 
    	</div>
    	<div class="mb-3">
    		<label for = "livingThing" class="form-label">Enter any type of living thing.</label>
    		<input type="text" class="form-control" name="livingThing"> 
    	</div>
 	    <div class="mb-3">
    		<label for = "message" class="form-label">Say something nice to someone.</label>
    		<textarea class="form-control" name="message" rows="3"></textarea> 
    	</div>    
    	<p>Send and show a friend</p>
 	    <button type="submit" class="btn btn-primary" value="submit_form">Submit</button>
    </form>
    </div>
</body>
</html>
