<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri = "http://www.springframework.org/tags/form" prefix="mvc" %>
 <%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Spring MVC From Handling</title>
</head>
<body> <h2>Movies Database Result</h2>
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
<a href = "viewAll.mvc">View all Movies</a>
</body>
</html>