<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<nav class="navbar navbar-default">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="#"> <span
				style="font-size: 30px; cursor: pointer" onclick="openNav()">&#9776;
					Exercise</span>
			</a>
		</div>
	</div>
</nav>
<!-- Side Menu  -->
<div id="mySidenav" class="sidenav">
	<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
	<a href="/index.jsp">My Information</a> <a href="/exersice/pushUp.jsp">Shoulder</a>
	<a href="#">Chest</a> <a href="#">Abdomen</a><a href="#">Hips</a><a
		href="#">Thigh</a><a href="#">Calf</a>
</div>

<script>
	function openNav() {
		document.getElementById("mySidenav").style.width = "250px";
		document.getElementById("main").style.marginLeft = "250px";
	}

	function closeNav() {
		document.getElementById("mySidenav").style.width = "0";
		document.getElementById("main").style.marginLeft = "0";
	}
</script>
