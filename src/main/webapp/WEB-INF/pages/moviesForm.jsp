<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="mvc"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Spring MVC Form Handling</title>
</head>
<body>
<h2>Movie Update Form</h2>
<mvc:form modelAttribute="movies" action="result.mvc">
	<table>
	    <tr>
	        <td><mvc:label path="title">Movie Title</mvc:label></td>
	        <td><mvc:input path="title" /></td>
	    </tr>
	    <tr>
	        <td><mvc:label path="leadActor">Lead Actor</mvc:label></td>
	        <td><mvc:input path="leadActor" /></td>
	    </tr>
	    <tr>
	        <td><mvc:label path="leadActress">Lead Actress</mvc:label></td>
	        <td><mvc:input path="leadActress" /></td>
	    </tr>
	    <tr>
	        <td><mvc:label path="releaseYear">Year Released</mvc:label></td>
	        <td><mvc:input path="releaseYear" /></td>
	    </tr>
   	    
        <tr>
	        <td><mvc:label path="media">Media</mvc:label></td>
	        <td><mvc:radiobuttons path="media" />
	        	</td>
	    </tr>
           
        
        <tr>
	        <td colspan="2">
                <input type="submit" value="Submit" />
	        </td>
	    </tr>
	</table>  
</mvc:form>
<a href = "viewAll.mvc">View all Movies</a>
</body>
</html>