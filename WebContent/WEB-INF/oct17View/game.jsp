<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게임 검색 메인</title>
</head>
<body>

	인기 키워드: 
	<c:forEach var="popularQuery" items="${popularQueryList}">${popularQuery} </c:forEach>
	<form action="game.do">
	<select name="type">
		<c:forEach var="searchType" items="${searchTypeList}">
			<option value="${searchType.code}">
				 <c:if test="${command.type == searchType.code}">selected</c:if>
				${searchType.text}
			</option>
		</c:forEach>
	</select>
	<input type="text" name="query" value="${command.query}"/>
	<input type="submit" value="검색" />
	</form>
	검색 결과: ${searchResult}
	
</body>
</html>