<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시글 쓰기</title>
</head>
<body>

	게시글 쓰기 입력 폼:
	<form method="post">
		<input type="hidden" name="parentId" value="0" />
		제목	: <input type="text" name="title" /><br/>
		내용	: <textarea name="content"></textarea><br/>
		<input type="submit" />
	</form>

</body>
</html>