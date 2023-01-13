<%@page import="jdbc.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="./css/bootstrap.min.css" rel="stylesheet">
<link href="./css/productBuy.css" rel="stylesheet">
</head>
<body>
<%
int pnum = Integer.parseInt(request.getParameter("num"));
Dao pd = Dao.getInstance();
Product prod = pd.selectProduct(pnum);
%>

<div class="wrap container">
	<div class="main_content">
		<img class="img" alt="이미지영역" src="/Fighting/img/<%= prod.getImageUrl() %>">
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

<!-- <form action="updateEmp.jsp" method="post"> -->
<!-- 	<table border="1"> -->
<%-- 	<tr><td>이미지</td><td><input type="text" name="ename" value="<%= emp.getEname()%>" readonly></td></tr> --%>
<%-- 	<tr><td>상품이름</td><td><input type="text" name="job" value="<%= emp.getJob()%>"></td></tr> --%>
<%-- 	<tr><td>제조사</td><td><input type="text" name="empno" value="<%= emp.getEmpno()%>" readonly></td></tr> --%>
<%-- 	<tr><td>설명</td><td><input type="text" name="mgr" value="<%= emp.getMgr()%>"></td></tr> --%>
<%-- 	<tr><td>개수</td><td><input type="text" name="hiredate" value="<%= emp.getHiredate()%>" readonly></td></tr> --%>
<%-- 	<tr><td>가격</td><td><input type="text" name="sal" value="<%= emp.getSal()%>"></td></tr> --%>
<%-- 	<tr><td>제품번호</td><td><input type="text" name="comm" value="<%= emp.getComm()%>"></td></tr> --%>
<!-- 	<select name="deptno"> -->
<!-- 	<option>부서선택</option> -->
<%-- 	<% for (Dept dept : dlst) { --%>
<%-- if (dept.getDeptno() == num) { --%>		
<%-- 		%> --%>
<%-- 	<option value="<%= dept.getDeptno() %>" selected><%= dept.getDname() %></option> --%>
<%-- 	<%} else { %> --%>
<%-- 	<option value="<%= dept.getDeptno() %>"><%= dept.getDname() %></option> --%>
<%-- 	<% }  --%>
<%-- 	}%> --%>
<!-- 	</select></td></tr> -->
<!-- 	<tr><td>확인</td><td><input type="reset" value="초기화"> -->
<!-- 	<input type="submit" value="저장"></td></tr> -->
<!-- 	</table> -->
<!-- </form> -->
</body>
</html>