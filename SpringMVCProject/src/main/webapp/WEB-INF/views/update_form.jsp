<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./base.jsp"%>
</head>
<body>
	<div class="container mt-3">

		<div class="row">
			<div class="col-md-6 offset-md-3">
				<h1 class="text-center mb-3">Change Product details</h1>
				<form action="${pageContext.request.contextPath }/handle-Product" method="post">
				
				<input type="hidden" value="${product.id }" name="id" />
					<div class="formgroup">
						<label for="name">Product Name</label> <input type="text"
							class="form-control" id="name" name="name"
							placeholder="Enter the product name here..."
							value="${product.name }" />
					</div>
					<div class="form-group">
						<label for="description">Product Description</label>
						<textarea class="form-control" row="7" id="description"
							name="description" placeholder="Enter the product description...">${product.description }</textarea>
					</div>

					<div class="form-group">
						<label for="price">Product Price</label> <input type="text"
							class="form-control" id="price" name="price"
							placeholder="Enter the product Price..." 
							value="${product.price }"/>
					</div>


					<div class="container text-center">
						<a href="${pageContext.request.contextPath}/"
							class="btn btn-outline-danger">Back</a>
						<button type="submit" class="btn btn-outline-primary">Update</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>