<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<!-- Google font -->
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700"
	rel="stylesheet">

<!-- Bootstrap -->
<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" />

<!-- Slick -->
<link type="text/css" rel="stylesheet" href="css/slick.css" />
<link type="text/css" rel="stylesheet" href="css/slick-theme.css" />

<!-- nouislider -->
<link type="text/css" rel="stylesheet" href="css/nouislider.min.css" />

<!-- Font Awesome Icon -->
<link rel="stylesheet" href="css/font-awesome.min.css">

<!-- Custom stlylesheet -->
<link type="text/css" rel="stylesheet" href="css/style.css" />

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
 		  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
 		  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
 		<![endif]-->
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>

<script type="text/javascript">
function showPopup() {
	window.open("inquiry_write", "1:1����",
			"width=1000, height=600, left=100, top=50");
}
</script>
<style>
th, td {
	text-align: center;
	text-decoration: none;
}

.btn_black {
	margin-left: 1000px;
}

.btn {
	background-color: #444;
	color: white;
}

.container {
	text-decoration: none;
}

.btn a {
	color: #fff;
}

.btn a:hover {
	color: #999;
}
</style>
</head>
<body>
	<div class="container" style="padding-top: 30px;">

		<div class="inquiry_table">

			<h2>1:1���ǳ���</h2>
			<p>
				<strong>���ð�</strong>
			</p>
			<p>
				����(�� ~ ��)<Strong>10:00 ~ 17:00</Strong>
			</p>
			<p>
				<Strong>(Off-time 12:00 ~ 14:00</Strong>, ��/��/������ �޹�)
			</p>
			<p>�ѹ� ����� ��㳻���� ������ �Ұ����մϴ�.</p>
			<p>���� ����� �ܰ躰 ���� �� ���������� �������� �� ����� �� �ֽ��ϴ�.</p>
			<div class="btn_black">
				<button type="button" class="btn btn-secondary btn-lg"
					onclick="showPopup();">1:1���Ǿ���</button>
			</div>
		
			<table class="table table-striped">
				<thead>
					<tr>
						<th>���ǹ�ȣ</th>
						<th>���Ǹ�</th>
						<th>����</th>
						<th>����Ͻ�</th>
					</tr>
				</thead>
				<tbody>
				
				<c:forEach var="i" items="${ilist }">
				
				<input type="hidden" value="${i.qna_category }" id="h_category">
					<tr>
						<td>${i.qnanum }</td>	
						
						<td><a href="inquiry_detail?qnanum=${i.qnanum}">${i.qna_title }</a></td>
						
						<c:choose>
							<c:when test="${i.qna_category ==1}">
								<td id="category">�����ȸ</td>
							</c:when>
							<c:when test="${i.qna_category ==2}">
								<td id="category">�ֹ�����</td>
							</c:when>
							<c:when test="${i.qna_category ==3}">
								<td id="category">��ҹ���</td>
							</c:when>
							<c:when test="${i.qna_category ==4}">
								<td id="category">��ǰ����</td>
							</c:when>
							<c:when test="${i.qna_category ==5 }">
								<td id="category">��ȯ����</td>
							</c:when>
							<c:when test="${i.qna_category ==6}">
								<td id="category">ȯ�ҹ���</td>
							</c:when>
							<c:when test="${i.qna_category ==7}">
								<td id="category">����ǰ����</td>
							</c:when>
							<c:when test="${i.qna_category ==8 }">
								<td id="category">�Աݹ���</td>
							</c:when>
						</c:choose>
						
						<td>${i.regist_date }</td>
					</tr>
				</c:forEach>
				</tbody>
			</table>
			<hr>
			<div class="text-center">
             <ul class="pagination">
                <!-- <li><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li> -->
                <li>${ipageStr}</li>
            </ul>
		</div>
	</div>



</body>
</html>