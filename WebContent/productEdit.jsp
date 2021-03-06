<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.ProductType"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://kwonnam.pe.kr/jsp/template-inheritance"
	prefix="layout"%>
<%@ page import="model.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Shose2hands</title>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
</head>
<body style="background-color: #eee;">
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-2 col-xs-0"></div>
			<!-- bar -->
			<div class="col-md-8 col-xs-12">

				<img style="width: 100%" src="img/banner.png">

				<jsp:include page="jsp/adminBar.jsp" />


				<!-- end bar -->
				<!-- แถบขวา -->
				<div class=" col-md-12">
					<div class="panel panel-default">
						<div class="panel-body">
							<!-- ============================================================================fromlogin============================================================================= -->
							<form method="post" action="product" enctype="multipart/form-data" class="form-horizontal" >
								<div align="center">
									<h2>แก้ไขสินค้า</h2>
								</div>
								<br>


								<div class="form-group">
									<label for="exampleInputEmail2" class="col-sm-3 control-label">ชื่อสินค้า
										: </label>
									<div class="col-sm-4">
										<input type="text" class="form-control"
											name="name" placeholder="ชื่อสินค้า" size="35" value="${product.pName}">
									</div>
								</div>

								<div class="form-group">
									<label for="exampleInputEmail2" class="col-sm-3 control-label">ราคาสินค้า
										: </label>
									<div class="col-sm-4">
										<input type="number" class="form-control"
											name="price" value="${product.price}" placeholder="ราคาสินค้า" size="35">
									</div>
								</div>

							
									<label for="type" class="col-sm-3 control-label">ยี่ห้อ
										: </label>
									<div class="col-sm-4">
										<select class="form-control" name="type">
											<c:forEach items="${productType}" var="item">
												<option value="${item.typeID}">${item.typeName}</option>
											</c:forEach>
										</select>
									</div>
									<br> <br> <br>

									<div class="form-group">
										<label for="exampleInputEmail2" class="col-sm-3 control-label">รายละเอียดสินค้า
											: </label>
										<div class="col-sm-6">
											<textarea class="form-control" name="description" rows="3" cols="90">${product.description}</textarea>
										</div>
									</div>
									<br> <br>
									<input type="hidden" name="action" value="edited">
									<input type="hidden" name="pid" value="${product.pid}">
									<div align="center">
										<input type="submit" class="btn btn-primary"
											value="บันทึก">
									</div>
									<br>  
							</form>


						

							<!-- ================================================================================================================================================================== -->
						</div>
					</div>
				</div>
				<!-- จบแถบขวา -->
			</div>
		</div>
	</div>



	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="bootstrap/js/bootstrap.min.js"></script>
</body>
</html>