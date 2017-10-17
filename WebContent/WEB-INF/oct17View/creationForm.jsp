<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>계정 생성</title>
</head>
<body>

	<spring:hasBindErrors name="command" />
	
	<form:errors path="command" />
	
	<form method="post">
		아이디: <input type="text" name="id" value="${command.id}" />
		<form:errors path="command.id" />
		<br/>
		이름: <input type="text" name="name" value="${command.name}" />
		<form:errors path="command.name" />
		<br/>
		우편번호: <input type="text" name="address.zipcode" value="${command.address.zipcode}" />
		<form:errors path="command.address.zipcode" />
		<br/>
		주소1: <input type="text" name="address.address1" value="${command.address.address1}" />
		<form:errors path="command.address.address1" />
		<br/>
		주소2: <input type="text" name="address.address2" value="${command.address.address2}" />
		<form:errors path="command.address.address2" />
		<br/>
		<input type="submit" />
	</form>
	
	
</body>
</html>