<%@page import="pdfbox206.*"%>
<%@page import="java.io.File,java.util.*"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Welcome to the Digital Library</h1>
	<%
		String searchString = request.getParameter("search_text");
		out.print("Text searched->" + searchString);
		if (searchString != null) {
			List<Result> searchResult = SearchUtil.search(searchString);
			out.print("<h1>Search Result</h1>");
			out.print("<font color=\"blue\">");
			Iterator searchResultIterator = searchResult.iterator();
			while (searchResultIterator.hasNext()) {
				Result result = (Result) searchResultIterator.next();
				out.print(result.getFileName());
			}
			out.print("</font>");
		} else {
			out.print("Please ENTER search text");
		}
	%>
</body>
</html>