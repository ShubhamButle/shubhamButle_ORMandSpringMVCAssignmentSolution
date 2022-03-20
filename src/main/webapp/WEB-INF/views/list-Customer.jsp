<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List</title>
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
		
	<div>
		<table class="table table-striped">
			<thead class="thead-dark">
				<tr>&nbsp;</tr>
				<tr>
					<th></th>
					<th></th>
					<th></th>
					<th class="text-right"><a
						href="/CustomerManagementApp/customer/showForm" class="btn btn-success">Add
							Customer</a></th>
				</tr>
				<tr>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Email</th>
					<th>Action</th>
				</tr>
			</thead>
			
			<tbody>
			<c:forEach items="${Customer}" var="tempCustomer">
			<tr>
				<td><c:out value="${tempCustomer.firstName}" /></td>
				<td><c:out value="${tempCustomer.lastName}" /></td>
				<td><c:out value="${tempCustomer.email}" /></td>
				<td>
					<a
					href="/CustomerManagementApp/customer/updateForm?cusId=${tempCustomer.cusId}" class="btn btn-info">Update</a>
					&nbsp;
					<a href="/CustomerManagementApp/customer/delete?cusId=${tempCustomer.cusId}" 
						onclick="if (!(confirm('Are you sure you want to delete this Customer?'))) return false" class="btn btn-danger">Delete</a>

				</td>
			</tr>
			</c:forEach>
			</tbody>
		</table>
	</div>
	</div>
</body>
</html>