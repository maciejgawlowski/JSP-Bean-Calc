<%@ page language="java" contentType="text/html; charset=UTF-8; text/css" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="calculator.css" rel="stylesheet" type="text/css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Calculator JSP Maciej Gawłowski</title>
</head>
<body>
	<jsp:useBean class="atj.Calculator" id="calc" scope="session" />
	
	<form name="frm" method="get" action="Servlet">
		<input type="hidden" name="sessionId" value="123" /> 
		<input type="hidden" name="disableButton" value="0" />
		<table>
			<tr>
				<td colspan="4"><input name="textfield" class="textfield" value="${calc.toShow}" ${ disableButton eq 1 ? 'disabled="disabled"' : ''} ${sessionScope.fontstyle} /></td>
				<td><input type="submit" class="btn btn-danger mgbutton" name="b" value="C" /></td>
			</tr>
			<tr>
				<td><input type="submit" class="btn btn-danger mgbutton" name="b" value="7" ${ disableButton eq 1 ? 'disabled="disabled"' : ''} /></td>
				<td><input type="submit" class="btn btn-danger mgbutton" name="b" value="8" ${ disableButton eq 1 ? 'disabled="disabled"' : ''} /></td>
				<td><input type="submit" class="btn btn-danger mgbutton" name="b" value="9" ${ disableButton eq 1 ? 'disabled="disabled"' : ''} /></td>
				<td><input type="submit" class="btn btn-danger mgbutton" name="b" value="/" ${ disableButton eq 1 ? 'disabled="disabled"' : ''} /></td>
				<td><input type="submit" class="btn btn-danger mgbutton" name="b" value="sqrt" ${ disableButton eq 1 ? 'disabled="disabled"' : ''} /></td>
			</tr>
			<tr>
				<td><input type="submit" class="btn btn-danger mgbutton" name="b" value="4" ${ disableButton eq 1 ? 'disabled="disabled"' : ''} /></td>
				<td><input type="submit" class="btn btn-danger mgbutton" name="b" value="5" ${ disableButton eq 1 ? 'disabled="disabled"' : ''} /></td>
				<td><input type="submit" class="btn btn-danger mgbutton" name="b" value="6" ${ disableButton eq 1 ? 'disabled="disabled"' : ''} /></td>
				<td><input type="submit" class="btn btn-danger mgbutton" name="b" value="*" ${ disableButton eq 1 ? 'disabled="disabled"' : ''} /></td>
				<td><input type="submit" class="btn btn-danger mgbutton" name="b" value="%" ${ disableButton eq 1 ? 'disabled="disabled"' : ''} /></td>
			</tr>
			<tr>
				<td><input type="submit" class="btn btn-danger mgbutton" name="b" value="1" ${ disableButton eq 1 ? 'disabled="disabled"' : ''} /></td>
				<td><input type="submit" class="btn btn-danger mgbutton" name="b" value="2" ${ disableButton eq 1 ? 'disabled="disabled"' : ''} /></td>
				<td><input type="submit" class="btn btn-danger mgbutton" name="b" value="3" ${ disableButton eq 1 ? 'disabled="disabled"' : ''} /></td>
				<td><input type="submit" class="btn btn-danger mgbutton" name="b" value="-" ${ disableButton eq 1 ? 'disabled="disabled"' : ''} /></td>
				<td rowspan="2"><input type="submit" class="btn btn-danger mgbutton tallbutton" name="b" value="=" ${ disableButton eq 1 ? 'disabled="disabled"' : ''} /></td>
			</tr>
			<tr>
				<td><input type="submit" class="btn btn-danger mgbutton" name="b" value="0" ${ disableButton eq 1 ? 'disabled="disabled"' : ''} /></td>
				<td><input type="submit" class="btn btn-danger mgbutton" name="b" value="." ${ disableButton eq 1 ? 'disabled="disabled"' : ''} /></td>
				<td><input type="submit" class="btn btn-danger mgbutton" name="b" value="+-" ${ disableButton eq 1 ? 'disabled="disabled"' : ''} /></td>
				<td><input type="submit" class="btn btn-danger mgbutton" name="b" value="+" ${ disableButton eq 1 ? 'disabled="disabled"' : ''} /></td>
			</tr>
		</table>
	</form>
	<form>
		<a href="settings.jsp">Zmień ustawienia</a>
	</form>
</body>
</html>