<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!doctype html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Customers</title>
    <link rel="icon" href="images/TopBanner1.jpg">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet"
		href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    
</head>
<body>
    <div class="wrapper">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12 col-sm-12 sol-lg-12">
                	<c:if test="${delete}">
						<div class="alert alert-success">
						  <strong>Success!</strong> Customer deleted Successfully.
						</div>
					</c:if>
					<c:if test="${update}">
						<div class="alert alert-success">
						  <strong>Success!</strong> Customer updated Successfully.
						</div>
					</c:if>  
					<c:if test="${add}">
						<div class="alert alert-success">
						  <strong>Success!</strong> Customer added Successfully.
						</div>
					</c:if>                	
                    <div class="mt-5 mb-3 clearfix">
                        <h2 class="pull-left">Customers</h2>
                        <a href="${pageContext.request.contextPath}/add" class="btn btn-success pull-right"><i class="fa fa-plus"></i> Add New Customer</a>
                    </div>
                    <c:choose>
						<c:when test="${empty customers}">
							<div class="container jumbotron text-center bg-secondary">
								<h4>No Customers</h4>
							</div>
						</c:when>
						<c:otherwise>
							<table class="table py-5">
								<thead>
									<tr class="table-dark text-dark">
										<th>Sr. No</th>
										<th>First Name</th>
										<th>Last Name</th>
										<th>Email</th>
										<th></th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="temp" items="${customers}" varStatus="loop">
										<tr>
											<td>${loop.index + 1}</td>
											<td>${temp.firstName}</td>
											<td>${temp.lastName}</td>
											<td>${temp.email}</td>
											<td>
											<a href="${pageContext.request.contextPath}/update/${temp.id}" class="btn btn-info"><i class="fa fa-plus"></i> Update</a>
											<a href="${pageContext.request.contextPath}/delete/${temp.id}" class="btn btn-danger"><i class="fa fa-trash"></i> Delete</a>
											</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</c:otherwise>
					</c:choose>
                </div>
            </div>        
        </div>
    </div>

</body>
</html>
