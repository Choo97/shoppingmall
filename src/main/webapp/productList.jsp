<%@page import="prod.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link href="./css/bootstrap.min.css" rel="stylesheet">
<link href="./css/productList.css?after" rel="stylesheet">
<title>Insert title here</title>

</head>
<style>

</style>
<body>
<jsp:include page="navbar.jsp" flush="true"/>
	<div class="container">
		<div class="header text-center">
			<h1>상품리스트</h1>
		</div>

		<div class="album py-5 bg-light">

			<div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
				<%
				ProdDAO pDa = ProdDAO.getInstance();
				for (ProdDTO pDt : pDa.selectProdAll()) {
				%>
				<div class="col">
					<div class="card shadow-sm">
						<div class="bd-placeholder-img card-img-top">
							<img alt="이미지영역" src=".\imgs\<%=pDt.getFileName()%>"
								height="150px">
						</div>
						<div class="card-body">
							<div class="card-text">
								<p>
									상품번호:
									<%=pDt.getNum()%></p>
								<p>
									상품이름:
									<%=pDt.getProdName()%></p>
								<p>
									남은 갯수:
									<%=pDt.getAmount()%></p>
								<p>
									가격:
									<%=pDt.getPrice()%></p>
								<div class="d-flex justify-content-between align-items-center">
									<div class="btn-group">
										<a class="btn btn-sm btn-outline-secondary"
											href="productBuy.jsp?num=<%=pDt.getNum()%>">구매하기</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<%
				}
				%>
			</div>

		</div>
	</div>
	<jsp:include page="footer.jsp" flush="true"/>
</body>
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
	integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
	crossorigin="anonymous"></script>
<script src="./js/bootstrap.bundle.min.js"></script>
</html>