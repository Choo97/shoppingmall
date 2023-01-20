<%@page import="prod.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
//	BoardDAO 객체 생성
	BoardDAO bdao = new BoardDAO();
// 	게시판 DB에 있는 글 개수를 확인
	int cnt = bdao.getBoardCount();

//	페이징처리
//	한 페이지에 출력될 글 수
	int pageSize = 3;

// 	현 페이지 정보 설정
	String pageNum = request.getParameter("pageNum");
	if(pageNum == null){
		pageNum = "1";
	}
	
	// 첫행번호를 계산
	int currentPage = Integer.parseInt(pageNum);	
	int startRow = (currentPage-1)*pageSize + 1;
// 	페이징처리끝

	String cate = "메이크업-페이스";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link href="/css/bootstrap.min.css"	rel="stylesheet">
<link href="/css/productList.css?after" rel="stylesheet">
<title>Insert title here</title>

</head>
<style>
</style>
<body>
	<jsp:include page="/navbar.jsp" flush="true" />
	<div class="container">
		<div class="header text-center">
			<h2>메이크업-페이스</h2>
			<form action="/category&search/makeup/face.jsp" method="get">
			<input class="inpName" placeholder="상품명" type="text" name="pname">
			<input class="minPrice" placeholder="최소가격" type="number" name="minPrice">
			<input class="maxPrice" placeholder="최대가격" type="number" name="maxPrice">
			<input type="submit" class="search_Btn" value="검색">
			</form>
		</div>
		<hr>
		<div class="warpProdList">
		<div class="row row-cols-xl-5 row-cols-md-4 row-cols-sm-2 row-cols-xs-2 g-3">
			<%
			ProdDAO pDa = ProdDAO.getInstance();
			for (ProdDTO pDt : pDa.selectProdCate(cate)) {
			%>
			<div class="prod col">
			<div class="card shadow-sm">
			<div class="prodImg text-center">
				<img class="img-thumbnail border-3" alt="이미지영역" src="\imgs\<%=pDt.getFileName()%>" height="150px">
			</div>
			<div class="prodDiscrip card-body">
			<div class="card-text">
				<p>상품코드: <%=pDt.getNum()%></p>
				<p>상품이름: <%=pDt.getProdName()%></p>
				<p>남은 갯수: <%=pDt.getAmount()%></p>
				<p>가격: <%=pDt.getPrice()%></p>
				<div class="button d-flex justify-content-between align-items-center">
					<a class="btn btn-sm btn-outline-secondary"
						href="/productBuy.jsp?num=<%=pDt.getNum()%>">구매하기</a>
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
	<jsp:include page="/footer.jsp" flush="true" />
</body>
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
	integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
	crossorigin="anonymous"></script>
<script src="/js/bootstrap.bundle.min.js"></script>
</html>