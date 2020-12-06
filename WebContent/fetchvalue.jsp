<%@page import="com.database.DatabaseConnector"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isErrorPage="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link href="img/cap.ico" rel="icon" />
<title>show questions</title>
<link rel="stylesheet" type="text/css" href="css/fetchvalue.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<!-- <meta name="viewport" content="width=device-width, initial-scale=1"> -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<!-- font awesome *******************-->
<link
	href="https://fonts.googleapis.com/css2?family=Bungee+Shade&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Bungee+Shade&family=Roboto&display=swap"
	rel="stylesheet">
<!-- google font ***************-->

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.0.0/animate.min.css" />



</head>
<body>


	<%
		String uname = (String) request.getAttribute("uname");
		String mail = (String) request.getAttribute("mail");
		String roll = (String) request.getAttribute("roll");
		String table = (String) request.getAttribute("table");
		String stable = (String) request.getAttribute("stable");
		String center = (String) request.getAttribute("center");

		try {

			Connection con = DatabaseConnector.getConnector();
			PreparedStatement pstmt = con.prepareStatement(
					"select name,email,q1,oa1,ob1,oc1,od1,q2,oa2,ob2,oc2,od2,q3,oa3,ob3,oc3,od3,q4,oa4,ob4,oc4,od4,q5,oa5,ob5,oc5,od5,q6,oa6,ob6,oc6,od6,q7,oa7,ob7,oc7,od7,q8,oa8,ob8,oc8,od8,q9,oa9,ob9,oc9,od9,q10,oa10,ob10,oc10,od10,oe1,oe2,oe3,oe4,oe5,oe6,oe7,oe8,oe9,oe10 from "
							+ table);

			ResultSet rs = pstmt.executeQuery();

			while (rs.next()) {
	%>
	<!-- creation HTML tag     -->
	<div
		style="background-image: linear-gradient(-225deg, #E3FDF5 0%, #FFE6FA 100%);">

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
				<i class='fas fa-book-open' style='font-size: 48px; color: white'></i>
				<ul class="navbar-nav ml-auto">
					<li class="nav-item px-2"><a
						class="nav-link bg-dark text-light " href="home.jsp">Home</a></li>

					<li class="nav-item px-2"><a
						class="nav-link bg-dark text-light " href="studentAccessTable.jsp">Back</a>
					</li>



				</ul>

			</div>
		</div>
		</nav>
		<!-- nav bar is Ending -->

		<!-- body is starting************************ -->
		<div class="container py-5 conti">

			<div class="row card-body text-center rounded"
				style="background-image: linear-gradient(60deg, #64b3f4 0%, #c2e59c 100%); overflow: auto;">
				<div class="col-sm-1 py-4 ">
					<i class='fa fa-university'
						style='font-size: 48px; display: inline; color: white'></i>
				</div>

				<h1
					class="py-4 wow animate__animated animate__backInLeft col-sm-11 scname">
					<%=center%>
				</h1>
			</div>

			<div class="card-header mt-3">

				<div class=" text-left">
					<p style="display: inline;">
						This exam is orgenised by
						<%=rs.getString(1)%>
					</p>

				</div>

				<div class=" text-right">

					<p style="display: inline;">F.M : 10 &nbsp; ---> 1*1 : 1 &nbsp;
						---> 10*1 : 10</p>
				</div>
			</div>

			<!-- card body ****************************************************** -->

			<div class="card-body py-5 mt-5 border border-primary q-body">
				<div class="container">

					<!-- Form is started ********************************************************** -->

					<form action="studentresult.jsp" method="post">

						<div>
							<input type="hidden" value="<%=uname%>" name="uname"> <input
								type="hidden" value="<%=mail%>" name="mail"> <input
								type="hidden" value="<%=roll%>" name="roll"> <input
								type="hidden" value="<%=stable%>" name="stable"> <input
								type="hidden" value="<%=table%>" name="table">
						</div>
						<div class="card-header">
							<p>All Questions are required so please fill all Qusetions.</p>
						</div>

						<div class="card-body"
							style="background-image: linear-gradient(120deg, #fdfbfb 0%, #ebedee 100%);">
							<!-- Question 1 ************************************************************-->
							<div class="q1">
								<h5>
									<b>Q1.</b>
									<%=rs.getString(3)%>
								</h5>
								<div class="form-check">
									<input class="form-check-input" type="radio" name="o1"
										id="exampleRadios1" value="a" required> <label
										class="form-check-label" for="a1"> <%=rs.getString(4)%>
									</label>
								</div>
								<div class="form-check">
									<input class="form-check-input" type="radio" name="o1"
										id="exampleRadios1" value="b"> <label
										class="form-check-label" for="o1"> <%=rs.getString(5)%>
									</label>
								</div>
								<div class="form-check">
									<input class="form-check-input" type="radio" name="o1"
										id="exampleRadios1" value="c"> <label
										class="form-check-label" for="o1"> <%=rs.getString(6)%>
									</label>
								</div>
								<div class="form-check">
									<input class="form-check-input" type="radio" name="o1"
										id="exampleRadios1" value="d"> <label
										class="form-check-label" for="o1"> <%=rs.getString(7)%>
									</label>
								</div>

							</div>
							<!-- Question 2 ************************************************************-->
							<div class="q2 mt-3">
								<h5>
									<b>Q2.</b>
									<%=rs.getString(8)%>
								</h5>
								<div class="form-check">
									<input class="form-check-input" type="radio" name="o2"
										id="exampleRadios1" value="a" required> <label
										class="form-check-label" for="o2"> <%=rs.getString(9)%>
									</label>
								</div>
								<div class="form-check">
									<input class="form-check-input" type="radio" name="o2"
										id="exampleRadios1" value="b"> <label
										class="form-check-label" for="o2"> <%=rs.getString(10)%>
									</label>
								</div>
								<div class="form-check">
									<input class="form-check-input" type="radio" name="o2"
										id="exampleRadios1" value="c"> <label
										class="form-check-label" for="o2"> <%=rs.getString(11)%>
									</label>
								</div>
								<div class="form-check">
									<input class="form-check-input" type="radio" name="o2"
										id="exampleRadios1" value="d"> <label
										class="form-check-label" for="o2"> <%=rs.getString(12)%>
									</label>
								</div>

							</div>
							<!-- Question 3 ************************************************************-->
							<div class="q3 mt-3">
								<h5>
									<b>Q3.</b>
									<%=rs.getString(13)%>
								</h5>
								<div class="form-check">
									<input class="form-check-input" type="radio" name="o3"
										id="exampleRadios1" value="a" required> <label
										class="form-check-label" for="o3"> <%=rs.getString(14)%>
									</label>
								</div>
								<div class="form-check">
									<input class="form-check-input" type="radio" name="o3"
										id="exampleRadios1" value="b"> <label
										class="form-check-label" for="o3"> <%=rs.getString(15)%>
									</label>
								</div>
								<div class="form-check">
									<input class="form-check-input" type="radio" name="o3"
										id="exampleRadios1" value="c"> <label
										class="form-check-label" for="o3"> <%=rs.getString(16)%>
									</label>
								</div>
								<div class="form-check">
									<input class="form-check-input" type="radio" name="o3"
										id="exampleRadios1" value="d"> <label
										class="form-check-label" for="o3"> <%=rs.getString(17)%>
									</label>
								</div>

							</div>
							<!-- Question 4 ************************************************************-->
							<div class="q4 mt-3">
								<h5>
									<b>Q4.</b>
									<%=rs.getString(18)%>
								</h5>
								<div class="form-check">
									<input class="form-check-input" type="radio" name="o4"
										id="exampleRadios1" value="a" required> <label
										class="form-check-label" for="o4"> <%=rs.getString(19)%>
									</label>
								</div>
								<div class="form-check">
									<input class="form-check-input" type="radio" name="o4"
										id="exampleRadios1" value="b"> <label
										class="form-check-label" for="o4"> <%=rs.getString(20)%>
									</label>
								</div>
								<div class="form-check">
									<input class="form-check-input" type="radio" name="o4"
										id="exampleRadios1" value="c"> <label
										class="form-check-label" for="o4"> <%=rs.getString(21)%>
									</label>
								</div>
								<div class="form-check">
									<input class="form-check-input" type="radio" name="o4"
										id="exampleRadios1" value="d"> <label
										class="form-check-label" for="o4"> <%=rs.getString(22)%>
									</label>
								</div>

							</div>
							<!-- Question 5 ************************************************************-->
							<div class="q5 mt-3">
								<h5>
									<b>Q5.</b>
									<%=rs.getString(23)%>
								</h5>
								<div class="form-check">
									<input class="form-check-input" type="radio" name="o5"
										id="exampleRadios1" value="a" required> <label
										class="form-check-label" for="o5"> <%=rs.getString(24)%>
									</label>
								</div>
								<div class="form-check">
									<input class="form-check-input" type="radio" name="o5"
										id="exampleRadios1" value="b"> <label
										class="form-check-label" for="o5"> <%=rs.getString(25)%>
									</label>
								</div>
								<div class="form-check">
									<input class="form-check-input" type="radio" name="o5"
										id="exampleRadios1" value="c"> <label
										class="form-check-label" for="o5"> <%=rs.getString(26)%>
									</label>
								</div>
								<div class="form-check">
									<input class="form-check-input" type="radio" name="o5"
										id="exampleRadios1" value="d"> <label
										class="form-check-label" for="o5"> <%=rs.getString(27)%>
									</label>
								</div>

							</div>

							<!-- Question 6 ************************************************************-->
							<div class="q6 mt-3">
								<h5>
									<b>Q6.</b>
									<%=rs.getString(28)%>
								</h5>
								<div class="form-check">
									<input class="form-check-input" type="radio" name="o6"
										id="exampleRadios1" value="a" required> <label
										class="form-check-label" for="o6"> <%=rs.getString(29)%>
									</label>
								</div>
								<div class="form-check">
									<input class="form-check-input" type="radio" name="o6"
										id="exampleRadios1" value="b"> <label
										class="form-check-label" for="o6"> <%=rs.getString(30)%>
									</label>
								</div>
								<div class="form-check">
									<input class="form-check-input" type="radio" name="o6"
										id="exampleRadios1" value="c"> <label
										class="form-check-label" for="o6"> <%=rs.getString(31)%>
									</label>
								</div>
								<div class="form-check">
									<input class="form-check-input" type="radio" name="o6"
										id="exampleRadios1" value="d"> <label
										class="form-check-label" for="o6"> <%=rs.getString(32)%>
									</label>
								</div>

							</div>

							<!-- Question 7 ************************************************************-->
							<div class="q7 mt-3">
								<h5>
									<b>Q7.</b>
									<%=rs.getString(33)%>
								</h5>
								<div class="form-check">
									<input class="form-check-input" type="radio" name="o7"
										id="exampleRadios1" value="a" required> <label
										class="form-check-label" for="o7"> <%=rs.getString(34)%>
									</label>
								</div>
								<div class="form-check">
									<input class="form-check-input" type="radio" name="o7"
										id="exampleRadios1" value="b"> <label
										class="form-check-label" for="o7"> <%=rs.getString(35)%>
									</label>
								</div>
								<div class="form-check">
									<input class="form-check-input" type="radio" name="o7"
										id="exampleRadios1" value="c"> <label
										class="form-check-label" for="o7"> <%=rs.getString(36)%>
									</label>
								</div>
								<div class="form-check">
									<input class="form-check-input" type="radio" name="o7"
										id="exampleRadios1" value="d"> <label
										class="form-check-label" for="o7"> <%=rs.getString(37)%>
									</label>
								</div>

							</div>

							<!-- Question 8 ************************************************************-->
							<div class="q8 mt-3">
								<h5>
									<b>Q8.</b>
									<%=rs.getString(38)%>
								</h5>
								<div class="form-check">
									<input class="form-check-input" type="radio" name="o8"
										id="exampleRadios1" value="a" required> <label
										class="form-check-label" for="o8"> <%=rs.getString(39)%>
									</label>
								</div>
								<div class="form-check">
									<input class="form-check-input" type="radio" name="o8"
										id="exampleRadios1" value="b"> <label
										class="form-check-label" for="o8"> <%=rs.getString(40)%>
									</label>
								</div>
								<div class="form-check">
									<input class="form-check-input" type="radio" name="o8"
										id="exampleRadios1" value="c"> <label
										class="form-check-label" for="o8"> <%=rs.getString(41)%>
									</label>
								</div>
								<div class="form-check">
									<input class="form-check-input" type="radio" name="o8"
										id="exampleRadios1" value="d"> <label
										class="form-check-label" for="o8"> <%=rs.getString(42)%>
									</label>
								</div>

							</div>

							<!-- Question 9 ************************************************************-->
							<div class="q9 mt-3">
								<h5>
									<b>Q9.</b>
									<%=rs.getString(43)%>
								</h5>
								<div class="form-check">
									<input class="form-check-input" type="radio" name="o9"
										id="exampleRadios1" value="a" required> <label
										class="form-check-label" for="o9"> <%=rs.getString(44)%>
									</label>
								</div>
								<div class="form-check">
									<input class="form-check-input" type="radio" name="o9"
										id="exampleRadios1" value="b"> <label
										class="form-check-label" for="o9"> <%=rs.getString(45)%>
									</label>
								</div>
								<div class="form-check">
									<input class="form-check-input" type="radio" name="o9"
										id="exampleRadios1" value="c"> <label
										class="form-check-label" for="o9"> <%=rs.getString(46)%>
									</label>
								</div>
								<div class="form-check">
									<input class="form-check-input" type="radio" name="o9"
										id="exampleRadios1" value="d"> <label
										class="form-check-label" for="o9"> <%=rs.getString(47)%>
									</label>
								</div>

							</div>

							<!-- Question 10 ************************************************************-->
							<div class="q10 mt-3">
								<h5>
									<b>Q10.</b>
									<%=rs.getString(48)%>
								</h5>
								<div class="form-check">
									<input class="form-check-input" type="radio" name="o10"
										id="exampleRadios1" value="a" required> <label
										class="form-check-label" for="o10"> <%=rs.getString(49)%>
									</label>
								</div>
								<div class="form-check">
									<input class="form-check-input" type="radio" name="o10"
										id="exampleRadios1" value="b"> <label
										class="form-check-label" for="o10"> <%=rs.getString(50)%>
									</label>
								</div>
								<div class="form-check">
									<input class="form-check-input" type="radio" name="o10"
										id="exampleRadios1" value="c"> <label
										class="form-check-label" for="o10"> <%=rs.getString(51)%>
									</label>
								</div>
								<div class="form-check">
									<input class="form-check-input" type="radio" name="o10"
										id="exampleRadios1" value="d"> <label
										class="form-check-label" for="o10"> <%=rs.getString(52)%>
									</label>
								</div>

							</div>


						</div>
						<div class="card-footer p-5" style="overflow: auto;">
							<input type="submit" value="submit your answer"
								class="btn btn-success wow animate__animated animate__fadeInLeftBig">
						</div>

					</form>


				</div>


			</div>

			<!-- 	End of card body ********************************************-->



		</div>
	</div>

	<!-- End of html tag -->

	<%-- <h1><%= rs.getString(2) %></h1> --%>

	<%
		}
			con.close();

		} catch (Exception e) {
			e.printStackTrace();
	%>


	<div class=" container text-center text-light ">

		<div class=" container row text-center mt-5 ">
			<div
				class=" col-lg-6 offset-3 col-md-6 col-sm-6 offset-sm-3 text-dark text-center align-self-center">
				<div class="card-1 card mr-5">
					<img src="img/2.jpg" class="card-img-top "
						alt="Some thing went Wrong..">
					<div class="card-body">
						<h5 class="card-title">Fill Carefully your company name which
							is provided by your author..</h5>
						<a href="studentAccessTable.jsp" class="btn btn-primary">Back</a>
					</div>
				</div>
			</div>
		</div>
	</div>


	<%
		}
	%>

	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/wow/1.1.2/wow.min.js"></script>
	<script>
		new WOW().init();
	</script>
</body>
</html>