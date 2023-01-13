<%@page import="jdbc.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link href="./css/bootstrap.min.css" rel="stylesheet">
<link href="./css/productList.css" rel="stylesheet">
</head>
<body>
	<div class="album py-5 bg-light">
		<div class="container">

			<div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
				<%
				Dao pd = Dao.getInstance();
				for (Product pdd : pd.selectProdAll()) {
				%>
				<div class="col">
					<div class="card shadow-sm">
						<div class="bd-placeholder-img card-img-top">
						<img alt="이미지영역" src="/Fighting/img/<%= pdd.getImageUrl() %>" height="150px">
						</div>
						<div class="card-body">
							<div class="card-text">
								<p>
									상품번호:
									<%=pdd.getNum()%></p>
								<p>
									상품이름:
									<%=pdd.getProdName()%></p>
								<p>
									남은 갯수:
									<%=pdd.getAmount()%></p>
								<p>
									가격:
									<%=pdd.getPrice()%></p>
								<div class="d-flex justify-content-between align-items-center">
									<div class="btn-group">
										<a class="btn btn-sm btn-outline-secondary" href="productBuy.jsp?num=<%= pdd.getNum() %>" >구매하기</a>
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
</body>
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
	integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
	crossorigin="anonymous"></script>
<script src="./js/bootstrap.bundle.min.js"></script>
</html>