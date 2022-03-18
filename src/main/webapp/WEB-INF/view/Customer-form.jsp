<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">

<title>Save Customer</title>
</head>

<body style="background-color: powderblue">
	<div class="container">
		<div style="background-color: teal">
			<hr>
			<h3 style="margin-left: 6px; color: white" align="center">CUSTOMER
				RELATIONSHIP MANAGEMENT</h3>
			<hr>
		</div>
		<br> <br>
		<p class="h4 mb-4">Save Customer</p>

		<form action="/crmWebApplication/customers/save" method="POST">
			<!-- Add hidden form field to handle update -->
			<input type="hidden" name="id" value="${Customer.id}" />

			<table style = "width:40%">
				<tbody>
					<tr>
						<td style="text-align:center"><label>First Name </label></td>
						<td><input type="text" name="firstName"
							value="${Customer.firstName}" class="form-control form-control-sm mb-10 col-10"
							placeholder="first name"></td>
					</tr>

					<tr>
						<td style="text-align:center"><label>Last Name </label></td>
						<td><input type="text" name="lastName"
							value="${Customer.lastName}" class="form-control form-control-sm mb-10 col-10"
							placeholder="last name"></td>
					<tr>
						<td style="text-align:center"><label>Email </label></td>
						<td><input type="text" name="email" value="${Customer.email}"
							class="form-control form-control-sm mb-10 col-10" placeholder="email"></td>
					</tr>
					<tr>
					<td></td>
					<td></td>	
					</tr>
					<tr><td><label></label></td>
					<td><br><button type="submit" class="btn btn-info col-6">Save</button></td>
					</tr>
				</tbody>
			</table>
		</form>

		<hr>
		<a href="/crmWebApplication/customers/list"><< Back to List</a>

	</div>
</body>
</html>
