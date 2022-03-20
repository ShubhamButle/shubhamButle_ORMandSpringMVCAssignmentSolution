<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Customer</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
	<div class="container">
		<div class="container-fluid p-5 bg-primary text-white text-left">
			<h1>Customer Management</h1>
		</div>
		<p class="h4 mb-4">Customer Details</p>
		<div>
			<form action="/CustomerManagementApp/customer/save" method="post">
				<div class="form-inline">
					<input type="text" name="firstName" placeholder="First Name" value="${Customer.firstName}" class="form-control mb-4 col-4"/>
				</div>
				<div class="form-inline">
					<input type="text" name="lastName" placeholder="Last Name" value="${Customer.lastName}" class="form-control mb-4 col-4"/>
				</div>
				<div class="form-inline">
					<input type="text" name="email" placeholder="Email" value="${Customer.email}" class="form-control mb-4 col-4"/> 
				</div>
				<div class="form-inline">
					<input type="hidden" name="cusId" value="${Customer.cusId}" class="form-control mb-4 col-4"/>
				</div>
				<input type="submit" name="Submit" Value="Add Customer" class="btn btn-success" />&nbsp;<a href="/CustomerManagementApp/customer/list" class="btn btn-secondary">Cancel</a>
			</form>
		</div>
	</div>
</body>
</html>