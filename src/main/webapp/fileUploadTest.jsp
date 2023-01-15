<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="./css/fileUpload.css" rel="stylesheet">
</head>
<body>
<form action="multipart_data.jsp" method="post" enctype="multipart/form-data">
    <div class="container">
      상품명: <input type="text" name="prodName">
      파일1: <input type="file" name="file1" accept="image/*">
      파일2: <input type="file" name="file2" accept="image/*">
      <br><input type="submit" value="전송">
    </div>
   </form>
</body>
</html>