<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page errorPage="errorpage.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="img/cap.ico" rel="icon" />
<title>studentaccesstable</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1s, shrink-to-fit=no">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">


<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<style type="text/css">
/* .cont {
	height: auto;
	widows: 80%;
	background-image: linear-gradient(to top, #ff9a9e 0%, #fecfef 99%, #fecfef 100%);
	background-size: cover;
}
 */
.form-container {
	position: absolute;
	top: 10vh;
	/* right:50%;
			left:50%;
			transform:translate(-50%,-50%); */
	background: #fff;
	padding: 35px;
	border-radius: 10px;
	box-shadow: 0px 0px 10px 0px black;
	width: 90%;
}

@media only screen and(max-width:678px) {
}
</style>

</head>
<body class="text-light"
	style="height: 150vh; background-image: linear-gradient(to right, rgba(0, 0, 0, 0.4), rgba(0, 0, 0, 0.4)), url('https://images.pexels.com/photos/2043569/pexels-photo-2043569.jpeg?cs=srgb&amp;dl=pendant-lamp-turned-on-2043569.jpg&amp;fm=jpg'); background-size: 100% 100%; background-attachment: fixed; background-position: center;">


	<!-- nav bar is starting -->

	<nav class="navbar navbar-expand-sm navbar-dark bg-dark ">
	<div class="container">

		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarTogglerDemo01"
			aria-controls="navbarTogglerDemo01" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse text-left"
			id="navbarTogglerDemo01">
			<h4 class="text-light">ExamHall.com</h4>
			<ul class="navbar-nav ml-auto">
				<li class="nav-item px-2"><a class="nav-link bg-dark "
					href="home.jsp">Home</a></li>

				<li class="nav-item px-2"><a class="nav-link bg-dark "
					href="createQues.jsp">Create Question</a></li>

				<li class="nav-item px-2"><a class="nav-link bg-dark  "
					href="viewresult.jsp">See Result</a></li>
			</ul>

		</div>
	</div>
	</nav>
	<!-- nav bar is ending -->

	<div class="text-dark">
		<div class="text-center container mt-3 text-light">
			<h1>Hii...</h1>
			<p>Please fill your details...</p>
		</div>
		<div class="container-fluid fm-form">
			<div class="row justify-content-center">
				<div class="col-12 col-sm-6 col-md-3">

					<!-- form is starting************************ -->

					<form action="fetch_student_value.jsp" method="post"
						class="form-container">
						<div class="form-group">
							<label for="exampleInputEmail1">Name</label><input type="text"
								class="form-control inputmos" placeholder="Enter full name"
								aria-label="Enter full name" aria-describedby="basic-addon1"
								name="name" required>
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1">Email address</label><input
								type="email" class="form-control inputmos"
								placeholder="Enter mail" aria-label="Enter mail"
								aria-describedby="basic-addon1" name="mail" required>
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1">Roll/PRN.</label><input
								type="text" class="form-control inputmos"
								placeholder="Enter roll-no. / prn no."
								aria-label="Enter roll-no." aria-describedby="basic-addon1"
								name="roll" required>
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1">Company-name</label><input
								type="text" class="form-control inputmos"
								placeholder="Enter company-name" aria-label="Enter company-name"
								aria-describedby="basic-addon1" name="user" required> <small
								id="emailHelp" class="form-text text-muted">which is
								provided by your Author.</small>
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1">Student Table-name</label> <input
								type="text" class="form-control inputmos"
								placeholder="Enter student table-name"
								aria-label="Enter student table-name"
								aria-describedby="basic-addon1" name="stable" required><small
								id="emailHelp" class="form-text text-muted">which is
								also provided by your Author.</small>
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1">School/College-name</label>
							<textarea class="form-control inputmos" name="center"
								id="exampleFormControlTextarea1" rows="3" required
								placeholder="Enter full name of school/college"></textarea>
						</div>

						<input type="submit" class="btn btn-primary btn-block"
							value="submit">

					</form>

				</div>
			</div>
		</div>
	</div>

	<!-- End **************** -->

</body>
</html>