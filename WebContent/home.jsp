<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="img/cap.ico" rel="icon" />
<title>Home</title>

<link rel="stylesheet" type="text/css" href="css/home.css">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<!-- nav bar *******************-->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<!-- nav bar *******************-->

<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<!--Get your own code at fontawesome.com-->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!--Get your own code at fontawesome.com-->

<!-- Google Font  *********-->


<link
	href="https://fonts.googleapis.com/css2?family=Roboto&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Lobster&family=Roboto&display=swap"
	rel="stylesheet">
<!-- End Google Font  *********-->

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.0.0/animate.min.css" />
<!-- Animate.css  -->

<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
<!-- Aos animated -->

</head>
<body>

	<!-- nav bar is starting -->

	<nav class="navbar navbar-expand-sm navbar-dark bg-dark ">
	<div class="container">
		<i class='fas fa-graduation-cap' style='font-size: 48px; color: red'></i>&nbsp;
		<h4 class="text-light">ExamHall.com</h4>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarTogglerDemo01"
			aria-controls="navbarTogglerDemo01" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse text-left"
			id="navbarTogglerDemo01">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item px-2 active"><a class="nav-link bg-dark "
					href="home.jsp">Home<span class="sr-only">(current)</span></a></li>
				<li class="nav-item px-2"><a class="nav-link bg-dark "
					href="#services">Services</a></li>
				<li class="nav-item px-2"><a class="nav-link bg-dark"
					href="#about">About</a></li>
				<li class="nav-item px-2"><a class="nav-link bg-dark "
					href="#contact">Contact us</a></li>
			</ul>

		</div>
	</div>
	</nav>
	<!-- nav bar ending -->

	<!-- starting header -->

	<header class="header">
	<div class="container-sm h-100">
		<div class="row h-100 align-items-center">
			<div class="col-md-12 text-center ">
				<h2 data-aos="fade-down" data-aos-duration="1500">Nice to Meet
					You</h2>
				<h1 data-aos="fade-up-right" data-aos-duration="1000"
					data-aos-delay="1000">Welcome in my Examination-Hall</h1>
				<h4 data-aos="fade-up-left" data-aos-duration="1000"
					data-aos-delay="2000">What do you Want,Please Choose Your
					Choice</h4>
				<i
					class="fa fa-arrow-down wow animate__animated animate__fadeOutDown
 animate__delay-3s animate__repeat-3 text-primary mt-3"
					style="font-size: 108px;"></i>
			</div>

		</div>
	</div>
	</header>

	<!-- Ending  header -->

	<!-- Starting Work ****************************** -->

	<section class="work py-5">
	<div class=" container text-center text-light">
		<h1>Your Work</h1>
		<p>Please Choose Your Work</p>

		<div class=" container row py-5">
			<div class=" col-lg-4 col-md-4 col-sm-4 text-dark mt-5 work-card"
				data-aos="fade-right" data-aos-duration="500"
				data-aos-easing="ease-in-sine" data-aos-offset="200">
				<div class="card-1 card ml-4 w-100 h-100">
					<div class="card-body ">
						<i class='fas fa-pencil-alt mb-4'
							style='font-size: 48px; color: red'></i>
						<h6>Hey Examiner</h6>
						<h5>Create Question Paper</h5>
						<hr>
						<p>please remember your company-name and student table-name
							when you Create Question-paper.</p>
						<a href="createQues.jsp"
							class="btn btn-danger wow animate__animated animate__jello animate__delay-2s">Go
							to Create</a>
					</div>
				</div>
			</div>

			<div class=" col-lg-4 col-md-4 col-sm-4 text-dark mt-5 work-card" data-aos="flip-right" data-aos-duration="500"
				data-aos-easing="ease-in-sine" data-aos-offset="200" data-aos-delay="700">
				<div class="card-1 card ml-4 w-100 h-100">
					<div class="card-body ">
						<i class='fas fa-walking mb-4' style='font-size: 48px; color: red'></i>
						<h6>Hey Students</h6>
						<h5>Enter Examination Hall</h5>
						<hr>
						<p>you have to must be Company-name and Student table-name
							which is Provided by your 'Author'</p>
						<a href="studentAccessTable.jsp"
							class="btn btn-danger wow animate__animated animate__jello animate__delay-2s">Enter
							in Hall</a>
					</div>
				</div>
			</div>

			<div class=" col-lg-4 col-md-4 col-sm-4 text-dark mt-5 work-card" data-aos="fade-left" data-aos-duration="500"
				data-aos-easing="ease-in-sine" data-aos-offset="200">
				<div class="card-1 card ml-4 w-100 h-100">
					<div class="card-body ">
						<i class='far fa-bell mb-4' style='font-size: 48px; color: red'></i><br>
						<h3>Result</h3>
						<hr>
						<p>All students result are available here so you can see your
							Result, but you have to must be Student Table-name whic is
							provided by your Author.</p>
						<a href="viewresult.jsp"
							class="btn btn-danger wow animate__animated animate__jello animate__delay-2s">Visit</a>
					</div>
				</div>
			</div>

		</div>
	</div>
	</section>
	<!-- Ending Work ****************************** -->
	<!-- Starting services ****************************** -->
	<section class="services"> <a name="services"></a>
	<div class="container text-center py-5">
		<h1>Services</h1>
		<div class="row">
			<div class="col-lg-6  col-md-6 col-sm-12 mt-3 ">
				<div class="card card-service">
					<div class="card-body">
						<i class="fa fa-braille myicon" style="font-size: 48px;"></i>
						<h1>Web Developement</h1>
					</div>
				</div>
			</div>
			<div class="col-lg-6 col-md-6 col-sm-12 mt-3">
				<div class="card card-service">
					<div class="card-body ">
						<i class="fa fa-bar-chart myicon" style="font-size: 48px;"></i>
						<h1>Website Designer</h1>
					</div>
				</div>
			</div>
		</div>
	</div>
	</section>
	<!-- Ending services ****************************** -->
	<section class="contact"> <a name="contact"></a>
	<div class="container text-center py-5">
		<h2>Let's Get In Touch</h2>
		<p>
			if you want to contact with me ? Give us a call or send us an email <br>
			and we will get back to you as soon as possible?
		</p>
		<i class="fa fa-phone p-4 wow animate__animated animate__jello animate__infinite" style="font-size: 48px;"></i> <i
			class="fa fa-envelope-o p-4 wow animate__animated animate__tada animate__slower animate__infinite" style="font-size: 48px;"></i>
		<p>+91 - 7563851608</p>
		<p>vikasroy7321@gmail.com</p>
	</div>
	</section>

	<!-- starting About section*************************** -->
	<section class="about"> <a name="about"></a>
	<div class="container text-center py-5">
		<h2>About Us</h2>
		<p>
			Hey Whatsapp, I am VikasKumarRoy and this site is basically for
			Examination purpose, <br>I know more website are available on
			Internet <br> but i saw there have no any understanding ,so this
			site have more functions .<br> you can create Question paper and
			and if <br> you will visit result then you can see which time
			your students <br> submit your answer and more functions are
			available.
		</p>


		<div class="card-body">
			<img alt="" src="img/my1.jpg" width="250" height="200" class="mypic">
			<p>I am a new web Developer.</p>
		</div>


	</div>
	</section>

	<div class="container-fluid text-center bg-dark text-light">
		<div class="footer">
			<p>Copyright © 2020 All Rights Reserved.</p>
		</div>
	</div>

	<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
	<script>
		AOS.init();
	</script>

	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/wow/1.1.2/wow.min.js"></script>
	<script>
		new WOW().init();
	</script>
</body>
</html>