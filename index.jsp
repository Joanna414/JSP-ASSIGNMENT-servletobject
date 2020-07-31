<%@page import="java.util.Set"%>
<%@page import="java.util.LinkedHashSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product Details</title>
</head>
<body>
	<%!String name = "";%>
	<%!Set<String> products = new LinkedHashSet<String>();%>

	<%
		if (application.getAttribute("txtname") == null) {
		application.setAttribute("txtname", products);
	}
	if (request.getParameter("txtName") != null) {
		products.add(request.getParameter("txtName"));

	}

	%>
	<form action="" method="post">
		Product Name <input type="text" name="txtName"><br> <input
			type="submit" value="print">

		<hr>
		Suggestion : [
	<% for(String products:products){
		out.print(products +",");
	}
	%>]
<%
		application.setAttribute("txtName", products);
	%>

	</form>


</body>
</html>

