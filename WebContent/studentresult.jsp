<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.database.DatabaseConnector"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="img/cap.ico" rel="icon" />
<title>studentResult</title>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.0.0/animate.min.css" />



<style type="text/css">
.img {
	margin-left: 40%;
}

.icon {
	width: 50%;
	height: 50px;
}
</style>

</head>
<body
	style="background-image: linear-gradient(to top, lightgrey 0%, lightgrey 1%, #e0e0e0 26%, #efefef 48%, #d9d9d9 75%, #bcbcbc 100%); background-repeat: no-repeat; width: 100%; height: 100vh;">
	<%
		String name = request.getParameter("uname");
		String mail = request.getParameter("mail");
		String roll = request.getParameter("roll");
		String table = request.getParameter("table");
		String stable = request.getParameter("stable");

		String o1 = request.getParameter("o1");
		String o2 = request.getParameter("o2");
		String o3 = request.getParameter("o3");
		String o4 = request.getParameter("o4");
		String o5 = request.getParameter("o5");
		String o6 = request.getParameter("o6");
		String o7 = request.getParameter("o7");
		String o8 = request.getParameter("o8");
		String o9 = request.getParameter("o9");
		String o10 = request.getParameter("o10");

		int count = 0;

		try {

			Connection con = DatabaseConnector.getConnector();

			PreparedStatement ps = con
					.prepareStatement("select oe1,oe2,oe3,oe4,oe5,oe6,oe7,oe8,oe9,oe10 from " + table);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {

				if (o1.equals(rs.getString(1))) {
					count = 1 + count;

				}

				if (o2.equals(rs.getString(2))) {
					count = 1 + count;
				}

				if (o3.equals(rs.getString(3))) {
					count = 1 + count;
				}

				if (o4.equals(rs.getString(4))) {
					count = 1 + count;
				}

				if (o5.equals(rs.getString(5))) {
					count = 1 + count;
				}

				if (o6.equals(rs.getString(6))) {
					count = 1 + count;
				}

				if (o7.equals(rs.getString(7))) {
					count = 1 + count;
				}

				if (o8.equals(rs.getString(8))) {
					count = 1 + count;
				}

				if (o9.equals(rs.getString(9))) {
					count = 1 + count;
				}

				if (o10.equals(rs.getString(10))) {
					count = 1 + count;
				}
			}

			con.close();

		} catch (Exception e) {
			e.printStackTrace();
	%>
	<div class="img">
		<div class="container text-center py-5 my-5">
			<div class="card" style="width: 18rem;">
				<img src="img/2.jpg" class="card-img-top" alt="...">
				<div class="card-body">
					<h5 class="card-title">Fill Carefully your details which is
						privided by your author..</h5>
					<p class="card-text"></p>
					<a href="studentAccessTable.jsp" class="btn btn-primary">Back</a>
				</div>
			</div>
		</div>
	</div>
	<%
		}
		/* insert student details in database ************** */
		try {

			String mark = String.valueOf(count);

			Connection con = DatabaseConnector.getConnector();

			PreparedStatement ps = con.prepareStatement("insert into " + stable + " values(?,?,?,?,now())");

			ps.setString(1, name);
			ps.setString(2, mail);
			ps.setString(3, roll);
			ps.setString(4, mark);

			ps.executeUpdate();
			con.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
	%>

	<div class="container text-center py-5 ">
		<div class="card-body border border-primary"
			style="background-image: linear-gradient(to top, #e8198b 0%, #c7eafd 100%); box-shadow: 10px 10px 10px black">
			<div class="wow animate__animated animate__fadeInLeftBig">
			<!-- right tick logo ceation ***************** -->
				<svg width="1em" height="1em" viewBox="0 0 16 16"
					class="bi bi-check2-all icon" fill="currentColor"
					xmlns="http://www.w3.org/2000/svg"> <path fill-rule="evenodd"
					d="M12.354 3.646a.5.5 0 0 1 0 .708l-7 7a.5.5 0 0 1-.708 0l-3.5-3.5a.5.5 0 1 1 .708-.708L5 10.293l6.646-6.647a.5.5 0 0 1 .708 0z" />
				<path
					d="M6.25 8.043l-.896-.897a.5.5 0 1 0-.708.708l.897.896.707-.707zm1 2.414l.896.897a.5.5 0 0 0 .708 0l7-7a.5.5 0 0 0-.708-.708L8.5 10.293l-.543-.543-.707.707z" />
				</svg>
			</div>
			<h3 class="">Thanku you are successfully submitted your answer.</h3>
			<h4
				class="wow animate__animated animate__zoomInDown animate__delay-2s animate__slow text-light">
				your score is :
				<%=count%>/10 .
			</h4>

			<!-- Button is Here******************************8 -->
			<div
				class="mt-4 wow animate__animated animate__zoomIn animate__delay-3s animate__slow">
				<a href="home.jsp" class="btn btn-outline-primary text-light">Go
					to Home</a>
			</div>
		</div>

	</div>

	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/wow/1.1.2/wow.min.js"></script>
	<script>
		new WOW().init();
	</script>
</body>
</html>