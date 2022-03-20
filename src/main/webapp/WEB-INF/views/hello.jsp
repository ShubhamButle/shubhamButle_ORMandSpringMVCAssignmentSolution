<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<div>This is welcome page</div>
<img src="/resources/images/download.jpg" />
<img src="<c:url value="/images/download.jpg"/>"/>
<img src="/webapp/WEB-INF/resources/images/download.jpg" />


<a href="customer/list">Click View List</a>
</body>
</html>