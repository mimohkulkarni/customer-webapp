<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Update Customer</title>
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
                <div class="col-md-12">
                    <h2 class="mt-5">Create Record</h2>
                    <p>Please fill this form and submit to add employee record to the database.</p>
                    <form:form action="${pageContext.request.contextPath}/update" modelAttribute="customer">
                        <div class="form-group">
                            <label>First Name</label>
                            <input type="text" name="firstName" class="form-control" value="${customer.firstName}">
                        </div>
                        <div class="form-group">
                            <label>last Name</label>
                            <input type="text" name="lastName" class="form-control" value="${customer.lastName}">
                        </div>
                        <div class="form-group">
                            <label>Email</label>
                            <input type="text" name="email" class="form-control" value="${customer.email}">
                        </div>
                        <input type="hidden" name="id" value="${customer.id}">
                        <input type="submit" class="btn btn-primary" value="Update">
                    </form:form>
                </div>
            </div>        
        </div>
    </div>

</body>

</html>