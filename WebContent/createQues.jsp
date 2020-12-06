<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="img/cap.ico" rel="icon" />
<title>createQuestion</title>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="style.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.0.0/animate.min.css" />
<!-- navigation bar mobile view down -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

<!-- navigation bar mobile view End -->
<style type="text/css">
.warn {
	margin-left: 1px;
}
</style>

</head>
<body
	style="background-image: linear-gradient(to top, #c1dfc4 0%, #deecdd 100%);">

	<!-- nav bar is starting -->

	<nav class="navbar navbar-expand-sm navbar-dark bg-dark ">
	<div class="container">

		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarTogglerDemo01"
			aria-controls="navbarTogglerDemo01" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
			<!--  <h5>menu</h5> -->
		</button>

		<div class="collapse navbar-collapse text-left"
			id="navbarTogglerDemo01">
			<h4 class="text-light">ExamHall.com</h4>
			<ul class="navbar-nav ml-auto">
				<li class="nav-item px-2"><a
					class="nav-link bg-dark text-light " href="home.jsp">Home</a></li>
			</ul>

		</div>
	</div>
	</nav>
	<!-- nav bar is Ending -->


	<div class="container-fluid">
		<div class="container mt-3 rounded">

			<div class="card-header text-center rounded bg-secondary text-white">
				<h2>
					10 Marks Questions Creation <br> 10 Questions are available in
					this page
				</h2>
				<p class="total text-right">Total 10 * 1 = 10</p>
			</div>

			<!-- form is start from here  -->

			<form action="TableCreation" method="post">
				<div class="card-header mt-4 rounded">
	
	<!-- fill details ************************** -->
					<div class="input-group mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text" id="basic-addon1">Username</span>
						</div>
						<input type="text" class="form-control input1"
							placeholder="Enter Username *" name="user" required>
					</div>

					<div class="input-group mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text" id="basic-addon1">&nbsp;&nbsp;&nbsp;&nbsp;@
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
						</div>
						<input type="email" class="form-control input1"
							placeholder="Enter Email *" name="mail" required>
					</div>

					<div class="input-group mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text" id="basic-addon1">Company
								name</span>
						</div>
						<input type="text" class="form-control input1"
							placeholder="Enter Company name *" name="company" required>
					</div>
					<p
						class="text-danger wow animate__animated animate__pulse animate__infinite infinite">
						you can take anything name it's your choice but remember this. !!
						this is used for access Exam-question page........<br> In
						name have no any white-space and special character !!!!!!!!!
					</p>

					<div class="input-group mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text" id="basic-addon1">Student
								table-name</span>
						</div>
						<input type="text" class="form-control input1"
							placeholder="Enter student table-name *" name="student" required>
					</div>
					<p
						class="text-danger wow animate__animated animate__pulse animate__infinite infinite">
						you can take anything name it's your choice but remember this. In
						name have no any white-space and special character !!!!!!!!!</p>


				</div>

				<div
					class="container row text-center bg-light justify-content-center warn py-3">
					<div class="col-lg-12 col-md-12 col-sm-12">

						<img alt="" src="img/warn1.jpeg" height="120" width="100%">
					</div>
				</div>
<!-- fill details Ending************************** -->

				<!-- Question is start from here--------------------------------------- -->
			<!-- QUESTION 1--------------------------------- -->

				<div class="card-body border border-success rounded">
					<div class="form-group">
						<label for="exampleFormControlTextarea1">Question 1.</label>
						<textarea class="form-control " name="ques1"
							id="exampleFormControlTextarea1" rows="3" required></textarea>
					</div>

					<div class="input-group mb-3 ml-5 pl-5">

						<div class="input-group-prepend">
							<span class="input-group-text" id="basic-addon1">a</span>
						</div>
						<input type="text" input1" name="a1" style="width: 30%;" required>

						<div class="input-group-prepend  ml-5 ">
							<span class="input-group-text" id="basic-addon1">b</span>
						</div>
						<input type="text" input1" name="b1" style="width: 30%;" required>

					</div>


					<div class="input-group mb-3 ml-5 pl-5">

						<div class="input-group-prepend">
							<span class="input-group-text" id="basic-addon1">c</span>
						</div>
						<input type="text" input1" name="c1" style="width: 30%;" required>

						<div class="input-group-prepend  ml-5 ">
							<span class="input-group-text" id="basic-addon1">d</span>
						</div>
						<input type="text" input1" name="d1" style="width: 30%;" required>


					</div>


					<!-- QUESTION 2--------------------------------- -->


					<div class="form-group">
						<label for="exampleFormControlTextarea1">Question 2.</label>
						<textarea class="form-control" name="ques2"
							id="exampleFormControlTextarea1" rows="3" required></textarea>
					</div>

					<div class="input-group mb-3 ml-5 pl-5">

						<div class="input-group-prepend">
							<span class="input-group-text" id="basic-addon1">a</span>
						</div>
						<input type="text" class=" input1 " name="a2" style="width: 30%;"
							required>

						<div class="input-group-prepend  ml-5 ">
							<span class="input-group-text" id="basic-addon1">b</span>
						</div>
						<input type="text" class=" input1" name="b2" style="width: 30%;"
							required>

					</div>

					<div class="input-group mb-3 ml-5 pl-5">

						<div class="input-group-prepend">
							<span class="input-group-text" id="basic-addon1">c</span>
						</div>
						<input type="text" input1" name="c2" style="width: 30%;" required>

						<div class="input-group-prepend  ml-5 ">
							<span class="input-group-text" id="basic-addon1">d</span>
						</div>
						<input type="text" input1" name="d2" style="width: 30%;" required>

					</div>
					<!-- QUESTION 3----------------------------------------------------------- -->


					<div class="form-group">
						<label for="exampleFormControlTextarea1">Question 3.</label>
						<textarea class="form-control " name="ques3"
							id="exampleFormControlTextarea1" rows="3" required></textarea>
					</div>

					<div class="input-group mb-3 ml-5 pl-5">

						<div class="input-group-prepend">
							<span class="input-group-text" id="basic-addon1">a</span>
						</div>
						<input type="text" class=" input1" name="a3" style="width: 30%;"
							required>

						<div class="input-group-prepend  ml-5 ">
							<span class="input-group-text" id="basic-addon1">b</span>
						</div>
						<input type="text" class=" input1 " name="b3" style="width: 30%;"
							required>

					</div>

					<div class="input-group mb-3 ml-5 pl-5">

						<div class="input-group-prepend">
							<span class="input-group-text" id="basic-addon1">c</span>
						</div>
						<input type="text" class=" input1 " name="c3" style="width: 30%;"
							required>

						<div class="input-group-prepend  ml-5 ">
							<span class="input-group-text" id="basic-addon1">d</span>
						</div>
						<input type="text" class=" input1 " name="d3" style="width: 30%;"
							required>

					</div>


					<!-- QUESTION 4---------------------------------------------------------  -->


					<div class="form-group">
						<label for="exampleFormControlTextarea1">Question 4.</label>
						<textarea class="form-control " name="ques4"
							id="exampleFormControlTextarea1" rows="3" required></textarea>
					</div>

					<div class="input-group mb-3 ml-5 pl-5">

						<div class="input-group-prepend">
							<span class="input-group-text" id="basic-addon1">a</span>
						</div>
						<input type="text" class=" input1 " name="a4" style="width: 30%;"
							required>

						<div class="input-group-prepend  ml-5 ">
							<span class="input-group-text" id="basic-addon1">b</span>
						</div>
						<input type="text" class=" input1 " name="b4" style="width: 30%;"
							required>

					</div>

					<div class="input-group mb-3 ml-5 pl-5">

						<div class="input-group-prepend">
							<span class="input-group-text" id="basic-addon1">c</span>
						</div>
						<input type="text" class=" input1 " name="c4" style="width: 30%;"
							required>

						<div class="input-group-prepend  ml-5 ">
							<span class="input-group-text" id="basic-addon1">d</span>
						</div>
						<input type="text" class=" input1 " name="d4" style="width: 30%;"
							required>

					</div>

					<!-- QUESTION 5-------------------------------------------------- -->

					<div class="form-group">
						<label for="exampleFormControlTextarea1">Question 5.</label>
						<textarea class="form-control " name="ques5"
							id="exampleFormControlTextarea1" rows="3" required></textarea>
					</div>

					<div class="input-group mb-3 ml-5 pl-5">

						<div class="input-group-prepend">
							<span class="input-group-text" id="basic-addon1">a</span>
						</div>
						<input type="text" class=" input1 " name="a5" style="width: 30%;"
							required>

						<div class="input-group-prepend  ml-5 ">
							<span class="input-group-text" id="basic-addon1">b</span>
						</div>
						<input type="text" class=" input1 " name="b5" style="width: 30%;"
							required>

					</div>

					<div class="input-group mb-3 ml-5 pl-5">

						<div class="input-group-prepend">
							<span class="input-group-text" id="basic-addon1">c</span>
						</div>
						<input type="text" class=" input1 " name="c5" style="width: 30%;"
							required>

						<div class="input-group-prepend  ml-5 ">
							<span class="input-group-text" id="basic-addon1">d</span>
						</div>
						<input type="text" class=" input1 " name="d5" style="width: 30%;"
							required>

					</div>


					<!-- QUESTION 6--------------------------------------------------------- -->

					<div class="form-group">
						<label for="exampleFormControlTextarea1">Question 6.</label>
						<textarea class="form-control " name="ques6"
							id="exampleFormControlTextarea1" rows="3" required></textarea>
					</div>

					<div class="input-group mb-3 ml-5 pl-5">

						<div class="input-group-prepend">
							<span class="input-group-text" id="basic-addon1">a</span>
						</div>
						<input type="text" class=" input1 " name="a6" style="width: 30%;"
							required>

						<div class="input-group-prepend  ml-5 ">
							<span class="input-group-text" id="basic-addon1">b</span>
						</div>
						<input type="text" class=" input1 " name="b6" style="width: 30%;"
							required>

					</div>

					<div class="input-group mb-3 ml-5 pl-5">

						<div class="input-group-prepend">
							<span class="input-group-text" id="basic-addon1">c</span>
						</div>
						<input type="text" class=" input1 " name="c6" style="width: 30%;"
							required>

						<div class="input-group-prepend  ml-5 ">
							<span class="input-group-text" id="basic-addon1">d</span>
						</div>
						<input type="text" class=" input1 " name="d6" style="width: 30%;"
							required>

					</div>

					<!-- QUESTION 7------------------------------------------------------- -->

					<div class="form-group">
						<label for="exampleFormControlTextarea1">Question 7.</label>
						<textarea class="form-control " name="ques7"
							id="exampleFormControlTextarea1" rows="3" required></textarea>
					</div>

					<div class="input-group mb-3 ml-5 pl-5">

						<div class="input-group-prepend">
							<span class="input-group-text" id="basic-addon1">a</span>
						</div>
						<input type="text" class=" input1 " name="a7" style="width: 30%;"
							required>

						<div class="input-group-prepend  ml-5 ">
							<span class="input-group-text" id="basic-addon1">b</span>
						</div>
						<input type="text" class=" input1 " name="b7" style="width: 30%;"
							required>

					</div>

					<div class="input-group mb-3 ml-5 pl-5">

						<div class="input-group-prepend">
							<span class="input-group-text" id="basic-addon1">c</span>
						</div>
						<input type="text" class=" input1 " name="c7" style="width: 30%;"
							required>

						<div class="input-group-prepend  ml-5 ">
							<span class="input-group-text" id="basic-addon1">d</span>
						</div>
						<input type="text" class=" input1 " name="d7" style="width: 30%;"
							required>

					</div>

					<!-- QUESTION 8--------------------------------------------------------- -->

					<div class="form-group">
						<label for="exampleFormControlTextarea1">Question 8.</label>
						<textarea class="form-control " name="ques8"
							id="exampleFormControlTextarea1" rows="3" required></textarea>
					</div>

					<div class="input-group mb-3 ml-5 pl-5">

						<div class="input-group-prepend">
							<span class="input-group-text" id="basic-addon1">a</span>
						</div>
						<input type="text" class=" input1 " name="a8" style="width: 30%;"
							required>

						<div class="input-group-prepend  ml-5 ">
							<span class="input-group-text" id="basic-addon1">b</span>
						</div>
						<input type="text" class=" input1 " name="b8" style="width: 30%;"
							required>

					</div>

					<div class="input-group mb-3 ml-5 pl-5">

						<div class="input-group-prepend">
							<span class="input-group-text" id="basic-addon1">c</span>
						</div>
						<input type="text" class=" input1 " name="c8" style="width: 30%;"
							required>

						<div class="input-group-prepend  ml-5 ">
							<span class="input-group-text" id="basic-addon1">d</span>
						</div>
						<input type="text" class="" input1" name="d8" style="width: 30%;"
							required>

					</div>


					<!-- QUESTION 9---------------------------------------------------------------- -->


					<div class="form-group">
						<label for="exampleFormControlTextarea1">Question 9.</label>
						<textarea class="form-control " name="ques9"
							id="exampleFormControlTextarea1" rows="3" required></textarea>
					</div>

					<div class="input-group mb-3 ml-5 pl-5">

						<div class="input-group-prepend">
							<span class="input-group-text" id="basic-addon1">a</span>
						</div>
						<input type="text" class=" input1 " name="a9" style="width: 30%;"
							required>

						<div class="input-group-prepend  ml-5 ">
							<span class="input-group-text" id="basic-addon1">b</span>
						</div>
						<input type="text" class=" input1 " name="b9" style="width: 30%;"
							required>

					</div>

					<div class="input-group mb-3 ml-5 pl-5">

						<div class="input-group-prepend">
							<span class="input-group-text" id="basic-addon1">c</span>
						</div>
						<input type="text" class=" input1 " name="c9" style="width: 30%;"
							required>

						<div class="input-group-prepend  ml-5 ">
							<span class="input-group-text" id="basic-addon1">d</span>
						</div>
						<input type="text" class="" input1" name="d9" style="width: 30%;"
							required>

					</div>

					<!-- QUESTION 10-------------------------------------------------------------- -->

					<div class="form-group">
						<label for="exampleFormControlTextarea1">Question 10.</label>
						<textarea class="form-control " name="ques10"
							id="exampleFormControlTextarea1" rows="3" required></textarea>
					</div>

					<div class="input-group mb-3 ml-5 pl-5">

						<div class="input-group-prepend">
							<span class="input-group-text" id="basic-addon1">a</span>
						</div>
						<input type="text" class=" input1 " name="a10" style="width: 30%;"
							required>

						<div class="input-group-prepend  ml-5 ">
							<span class="input-group-text" id="basic-addon1">b</span>
						</div>
						<input type="text" class=" input1 " name="b10" style="width: 30%;"
							required>

					</div>

					<div class="input-group mb-3 ml-5 pl-5">

						<div class="input-group-prepend">
							<span class="input-group-text" id="basic-addon1">c</span>
						</div>
						<input type="text" class="" input1" name="c10" style="width: 30%;"
							required>

						<div class="input-group-prepend  ml-5 ">
							<span class="input-group-text" id="basic-addon1">d</span>
						</div>
						<input type="text" class=" input1 " name="d10" style="width: 30%;"
							required>

					</div>

				</div>

				<!-- ANSWER IS HERE--------------------#######################################################------------------------ -->

				<div class="card-footer text-muted mb-5">


					<div>
						<h4>Give all answers of all questions</h4>
						<hr>
					</div>

					<table class="table" border="1">
						<tr>
							<td>
								<div style="display: inline-block;">
									<label>1 --></label> &nbsp; a<input type="radio" name="e1"
										required value="a">&nbsp;b<input type="radio"
										name="e1" value="b">&nbsp;c<input type="radio"
										name="e1" value="c">&nbsp;d<input type="radio"
										name="e1" value="d">
								</div>
							</td>

							<td>
								<div style="display: inline-block;">
									<label>2 --></label> &nbsp; a<input type="radio" name="e2"
										required value="a">&nbsp;&nbsp;b<input type="radio"
										name="e2" value="b">&nbsp;&nbsp;c<input type="radio"
										name="e2" value="c">&nbsp;&nbsp;d<input type="radio"
										name="e2" value="d">
								</div>
							</td>

							<td>
								<div style="display: inline-block;">
									<label>3 --></label> &nbsp; a<input type="radio" name="e3"
										required value="a">&nbsp;&nbsp;b<input type="radio"
										name="e3" value="b">&nbsp;&nbsp;c<input type="radio"
										name="e3" value="c">&nbsp;&nbsp;d<input type="radio"
										name="e3" value="d">
								</div>
							</td>
							<td>
								<div style="display: inline-block;">
									<label>4 --></label> &nbsp; a<input type="radio" name="e4"
										required value="a">&nbsp;&nbsp;b<input type="radio"
										name="e4" value="b">&nbsp;&nbsp;c<input type="radio"
										name="e4" value="c">&nbsp;&nbsp;d<input type="radio"
										name="e4" value="d">
								</div>
							</td>

							<td>
								<div style="display: inline-block;">
									<label>5 --></label> &nbsp; a<input type="radio" name="e5"
										required value="a">&nbsp;&nbsp;b<input type="radio"
										name="e5" value="b">&nbsp;&nbsp;c<input type="radio"
										name="e5" value="c">&nbsp;&nbsp;d<input type="radio"
										name="e5" value="d">
								</div>
							</td>
						</tr>

						<!-- SECOND ROW IS HERE-------------------------------------------------------- -->

						<tr>
							<td>
								<div style="display: inline-block;">
									<label>6 --></label> &nbsp; a<input type="radio" name="e6"
										required value="a">&nbsp;b<input type="radio"
										name="e6" value="b">&nbsp;c<input type="radio"
										name="e6" value="c">&nbsp;d<input type="radio"
										name="e6" value="d">
								</div>
							</td>

							<td>
								<div style="display: inline-block;">
									<label>7 --></label> &nbsp; a<input type="radio" name="e7"
										required value="a">&nbsp;&nbsp;b<input type="radio"
										name="e7" value="b">&nbsp;&nbsp;c<input type="radio"
										name="e7" value="c">&nbsp;&nbsp;d<input type="radio"
										name="e7" value="d">
								</div>
							</td>

							<td>
								<div style="display: inline-block;">
									<label>8 --></label> &nbsp; a<input type="radio" name="e8"
										required value="a">&nbsp;&nbsp;b<input type="radio"
										name="e8" value="b">&nbsp;&nbsp;c<input type="radio"
										name="e8" value="c">&nbsp;&nbsp;d<input type="radio"
										name="e8" value="d">
								</div>
							</td>
							<td>
								<div style="display: inline-block;">
									<label>9 --></label> &nbsp; a<input type="radio" name="e9"
										required value="a">&nbsp;&nbsp;b<input type="radio"
										name="e9" value="b">&nbsp;&nbsp;c<input type="radio"
										name="e9" value="c">&nbsp;&nbsp;d<input type="radio"
										name="e9" value="d">
								</div>
							</td>

							<td>
								<div style="display: inline-block;">
									<label>10 --></label> &nbsp; a<input type="radio" name="e10"
										required value="a">&nbsp;&nbsp;b<input type="radio"
										name="e10" value="b">&nbsp;&nbsp;c<input type="radio"
										name="e10" value="c">&nbsp;&nbsp;d<input type="radio"
										name="e10" value="d">
								</div>
							</td>
						</tr>
					</table>



				</div>


				<!-- SUBMIT button IS HERE----------------------------------------------------- -->


				<div class="footer mb-5 text-right btn-lg ">
					<input type="submit" value="submit"
						class="btn btn-primary wow animate__animated animate__rubberBand">

				</div>
			</form>

		</div>

	</div>

	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/wow/1.1.2/wow.min.js"></script>
	<script>
              new WOW().init();
              </script>

</body>
</html>