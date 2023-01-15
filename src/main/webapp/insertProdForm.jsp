<%@page import="java.io.PrintWriter"%>
<%@page import="java.util.List"%>
<%@page import="jdbc.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>판매상품 등록</title>

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">


<style>
body {
	min-height: 100vh;
	background: -webkit-gradient(linear, left bottom, right top, from(#000000),
		to(#000000));
	background: -webkit-linear-gradient(bottom left, #000000 0%, #000000 100%);
	background: -moz-linear-gradient(bottom left, #000000 0%, #000000 100%);
	background: -o-linear-gradient(bottom left, #000000 0%, #000000 100%);
	background: linear-gradient(to top right, #000000 0%, #fafafa 100%);
}

.input-form {
	max-width: 680px;
	margin-top: 80px;
	padding: 32px;
	background: #fff;
	-webkit-border-radius: 10px;
	-moz-border-radius: 10px;
	border-radius: 10px;
	-webkit-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
	-moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
	box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15)
}
</style>
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
		script.println("alert('관리자 로그인을 해주세요')");
		script.println("location.href = 'login.jsp'");
		script.println("</script>");
		script.close();
		return;
	}
	%>
	<div class="container">
		<div class="input-form-backgroud row">
			<div class="input-form col-md-12 mx-auto">
				<h4 class="mb-3">상품 등록</h4>
				<form action="upload" method="POST" enctype="multipart/form-data">
					<div class="row">
						<div class="col-md-6 mb-3">
							<label for="maker">제조사</label> <input type="text"
								class="form-control" name="maker">
							<div class="invalid-feedback">제조사를 입력하세요.</div>
						</div>
					</div>

					<div class="row">
						<div class="col-md-6 mb-3">
							<label for="prodname">상품명</label> <input type="text"
								class="form-control" name="prodname">
							<div class="invalid-feedback">상품명을 입력해주세요.</div>
						</div>
					</div>

					<div class="mb-3">
						<label for="discrip">상품설명</label> <input type="text"
							class="form-control" name="discrip">
						<div class="invalid-feedback">상품설명을 입력해주세요.</div>
					</div>


					<div class="row">
						<div class="col-md-6 mb-3">
							<label for="amount">재고수량</label> <input type="text"
								class="form-control" name="amount">
							<div class="invalid-feedback">재고수량을 입력해주세요.</div>
						</div>

						<div class="col-md-6 mb-3">
							<label for="price">가격</label> <input type="text"
								class="form-control" name="price">
							<div class="invalid-feedback">상품가격을 입력해주세요.</div>
						</div>
					</div>

					<div class="row">
						<div class="col-md-6 mb-3">
							<label for="cateno">카테고리</label> <input type="text"
								class="form-control" name="cateno">
							<div class="invalid-feedback">카테고리를 입력하세요.</div>
						</div>
					</div>

					<div class="mb-3">
						<label for="imageurl">상품이미지</label> <input type="file"
							class="form-control" name="imageurl" accept="image/*">
						<div class="invalid-feedback">상품설명을 입력해주세요.</div>
					</div>

					<input type="reset" value="초기화" /> <input type="submit" value="저장" />
					<footer class="my-3 text-center text-small">
						<p class="mb-1">&copy; 2023 HERA</p>
					</footer>
			</div>

			</form>
</body>
</html>