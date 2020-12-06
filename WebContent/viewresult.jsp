<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport"
	content="width=device-width, initial-scale=1s, shrink-to-fit=no">
<link href="img/cap.ico" rel="icon" />
<title>viewresult</title>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

<!-- nav bar *******************-->

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<style type="text/css">
.form-container {
	position: absolute;
	top: 15vh;
	background: #fff;
	padding: 30px;
	border-radius: 10px;
	box-shadow: 0px 0px 10px 0px black;
}
</style>
</head>

<body
	style="background-image: linear-gradient(to top, #09203f 0%, #537895 100%); height: 100vh;">

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
				<li class="nav-item px-2"><a
					class="nav-link bg-dark text-light " href="home.jsp">Home</a></li>

				<li class="nav-item px-2"><a
					class="nav-link bg-dark text-light " href="studentAccessTable.jsp">Go
						to exam-hall</a></li>
				<li class="nav-item px-2"><a
					class="nav-link bg-dark text-light " href="createQues.jsp">Create
						Question</a></li>



			</ul>

		</div>
	</div>
	</nav>
	<!-- nav bar is Ending -->

	<div class="container-fluid">
		<div class="row justify-content-center">
			<div class="col-12 col-sm-6 col-md-3">
				<!-- form is started ************* -->
				<form class="form-container" action="getresult.jsp" method="post">
					<div class="form-group">
						<label for="exampleInputEmail1">Student Table-name</label> <input
							type="text" class="form-control" id="exampleInputEmail1"
							aria-describedby="emailHelp"
							placeholder="Enter student table-name" name="stable"> <small
							id="emailHelp" class="form-text text-muted">fill student
							table-name which is provided your Author.</small>
					</div>

					<input type="submit" class="btn btn-primary btn-block"
						value="submit">

				</form>

			</div>
		</div>
	</div>

</body>
</html>