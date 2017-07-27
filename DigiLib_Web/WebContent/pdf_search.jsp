<%@page import="org.apache.pdfbox.text.PDFTextStripper"%>
<%@page import="org.apache.pdfbox.pdmodel.PDDocument"%>
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
	<h1>Welcome to the Digital Library of Mahatma GANDHI</h1>
	<%
		String indexDir = System.getProperty("user.dir")+"/"+"index";
		//String webContentPath=getServletContext().getRealPath("."+"/"+"pdf");
		String pdfDir = System.getProperty("user.dir")+"/"+"pdf";
		File folder=new File(pdfDir);
		String searchString = request.getParameter("search_text");
		if (searchString != null) {
			List<Result> searchResult = SearchUtil.search(searchString,folder);
			out.print("Pdf Directory: " + folder.getPath());
			out.print("<br/>");
			out.print("Text searched->" + searchString);
			out.print("<font color=\"blue\"><h1>Search Result</h1></font>");
			Iterator searchResultIterator = searchResult.iterator();
			while (searchResultIterator.hasNext()) {
				Result result = (Result) searchResultIterator.next();
				String pdfFileName=result.getFileName();
				out.print("<font color=\"green\"><h2>"+pdfFileName+"</h2></font>");
				File pdfFile=new File(pdfDir+"/"+pdfFileName);
				PDDocument pdfDocument = PDDocument.load(pdfFile);
				//System.out.println("No of pages: "+pdfDocument.getNumberOfPages());
				for(int i=0;i<pdfDocument.getNumberOfPages();i++){
					PDFTextStripper reader = new PDFTextStripper();
					reader.setStartPage(i);
					reader.setEndPage(i);
					String content = reader.getText(pdfDocument);
					if(content.contains(searchString)){
						out.print(content);	
					}
					out.print("<br/>");
				}
				pdfDocument.close();
				out.print("<br/>");
			}
		} else {
			out.print("Please ENTER search text");
		}
	%>
</body>
</html>