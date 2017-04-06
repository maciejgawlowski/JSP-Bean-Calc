<%@ page language="java" contentType="text/html; charset=UTF-8; text/css"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="calculator.css" rel="stylesheet" type="text/css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Zmień ustawienia</title>
</head>
<body>
<div class="container">
	<br>
	<input type="hidden" name="sessionId" value="123" />
	<form action="SettingsServlet" method="post">
	  <div class="form-group">
   		<label for="textfield1">Rozmiar tekstu: (px)</label>
    	<input name="textfield1" class="form-control" id="textfield1">
  	 </div>
	  <div class="form-group">
   		<label for="textfield2">Kolor tekstu:</label>
    	<input name="textfield2" class="form-control" id="textfield2">
  	 </div><br>		
		<input type="submit" class="btn btn-success" name="sub" value="Powrót"/>
	</form>
</div>
</body>
</html>