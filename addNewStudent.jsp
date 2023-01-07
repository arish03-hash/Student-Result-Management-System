<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String course = request.getParameter("course");
String branch = request.getParameter("branch");
String rollNo = request.getParameter("rollNo");
String name = request.getParameter("name");
String fatherName = request.getParameter("fatherName");
String gender = request.getParameter("gender");

try{
	Connection con = ConnectionProvider.getCon();
	Statement st = con.createStatement();
	String q = "Insert into student values('"+course+"','"+branch+"','"+rollNo+"','"+name+"','"+fatherName+"','"+gender+"')";
	st.executeUpdate(q);
	response.sendRedirect("adminHome.jsp"); 
}
catch(Exception e){
	e.printStackTrace();
}
%>
