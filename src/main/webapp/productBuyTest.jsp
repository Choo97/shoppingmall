<%@page import="prod.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="/css/bootstrap.min.css" rel="stylesheet">
<link href="/css/productBuy.css" rel="stylesheet">
</head>
<body>

<%
int pnum = Integer.parseInt(request.getParameter("num"));
ProdDAO pd = ProdDAO.getInstance();
ProdDTO prod = pd.selectProduct(pnum);
%>

<div class="wrap container">
<jsp:include page="navbar.jsp" flush="true"/>
	<div class="main_content">
		<img class="img" alt="이미지영역" src=".\imgs\<%=prod.getFileName()%>">
		<div class="wrap_Name_Maker h2">
			<div class="prodName">제품이름: <%= prod.getProdName() %></div>
			<div class="prodMaker">제조사 : <%= prod.getMaker() %></div>
		</div>
		<div class="prodDiscrip"><%= prod.getDiscrip() %></div>
		<div class="wrap_Amount_Price">
			<div class="prodAmount">남은 개수 : <%= prod.getAmount() %></div>
			<div class="prodPrice">가격 : <%= prod.getPrice() %></div>
		</div>
		<div class="prodNum">제품번호 : <%= prod.getNum() %></div>
	</div>
</div>
<jsp:include page="footer.jsp" flush="true"/>
</body>
</html>