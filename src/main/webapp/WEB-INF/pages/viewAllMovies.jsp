<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<c:forEach items="${all}" var="item">
		<table>
			<c:forEach items="${all}" var="item">
		<table>
			<tr>
            <td>Title</td>
            <td>${m.title}</td>
        </tr>
        <tr>
            <td>Lead Actor</td>
            <td>${m.leadActor}</td>
        </tr>
        <tr>
            <td>Lead Actress</td>
            <td>${m.leadActress}</td>
        </tr>
        <tr>
            <td>Release Year</td>
            <td>${m.releaseYear}</td>
        </tr>
        
        <tr>
            <td>Kid Friendly?</td>
            <td>${m.isKidFriendly}</td>
        </tr>

		</table>
		<br />
		<hr style="text-align: left; margin-left: 0; width: 25%">
		<br />
	</c:forEach>

		</table>
		<br />
		<hr style="text-align: left; margin-left: 0; width: 25%">
		<br />
	</c:forEach>
</body>
</html>