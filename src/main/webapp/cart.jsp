<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
   String userID = null;
   if (session.getAttribute("userID") != null) {
      userID = (String) session.getAttribute("userID");

   }
   if (userID == null) {
      PrintWriter script = response.getWriter();
      script.println("<script>");
      script.println("alert('�α����� ���ּ���')");
      script.println("location.href = 'login.jsp'");
      script.println("</script>");
      script.close();
      return;
   }
   %>
<h1>��ٱ���</h1>
</body>
</html>