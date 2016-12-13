<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<%@include file="/lib/bootstrap.jsp"%>
<%@include file="/lib/googleChart.jsp"%>

<style>
body {
	font-family: "Lato", sans-serif;
}

.sidenav {
	height: 100%;
	width: 0;
	position: fixed;
	z-index: 1;
	top: 0;
	left: 0;
	background-color: #111;
	overflow-x: hidden;
	transition: 0.5s;
	padding-top: 60px;
}

.sidenav a {
	padding: 8px 8px 8px 32px;
	text-decoration: none;
	font-size: 25px;
	color: #818181;
	display: block;
	transition: 0.3s
}

.sidenav a:hover, .offcanvas a:focus {
	color: #f1f1f1;
}

.sidenav .closebtn {
	position: absolute;
	top: 0;
	right: 25px;
	font-size: 36px;
	margin-left: 50px;
}

#main {
	transition: margin-left .5s;
	padding: 16px;
}

@media screen and (max-height: 450px) {
	.sidenav {
		padding-top: 15px;
	}
	.sidenav a {
		font-size: 18px;
	}
}
</style>
<script>
	google.charts.load('current', {
		'packages' : [ 'bar' ]
	});
	google.charts.setOnLoadCallback(drawChart);
	function drawChart() {
		var data = google.visualization.arrayToDataTable([
				[ 'Year', 'Shoulder', 'Chest', 'Abdomen', 'Hips', 'Thigh',
						'Calf' ], [ '2014년', 1170, 460, 250, 100, 300, 700 ],
				[ '2015년', 660, 1120, 300, 200, 500, 100 ],
				[ '2015년', 1030, 540, 350, 300, 400, 140 ]

		]);

		var options = {
			/* 	chart : {
					title : 'Company Performance',
					subtitle : 'Sales, Expenses, and Profit: 2014-2017',
				}, */
			bars : 'vertical',
			vAxis : {
				format : 'decimal'
			},
			height : 400,
			colors : [ '#1b9e77', '#d95f02', '#7570b3', '#dfdfdf', '#cc91e3',
					'#dddd00', 'adf0cc' ]
		};

		var chart = new google.charts.Bar(document
				.getElementById('columnchart_material'));
		var chart2 = new google.charts.Bar(document
				.getElementById('columnchart_material_1'));
		var chart3 = new google.charts.Bar(document
				.getElementById('columnchart_material_2'));
		var chart4 = new google.charts.Bar(document
				.getElementById('columnchart_material_3'));

		chart.draw(data, options);
		chart2.draw(data, options);
		chart3.draw(data, options);
		chart4.draw(data, options);
	}
</script>
<body>
	<!--네비게이션바-->
	<div id="main">
		<%@include file="/lib/topMenu.jsp"%>
		<!-- Content 시작 -->
		<!-- Shoulder 차트  -->
		<div class="row">
			<div class="col-sm-10 col-offset-sm-2">
				<h1>Shoulder</h1>
				<div id="columnchart_material" style="height: 300px;"></div>
			</div>
		</div>
		<!-- 구글 차트  -->
		
		<!-- Chest 차트  -->
		<div class="row">
			<div class="col-sm-10 col-offset-sm-2">
				<h1>Chest</h1>
				<div id="columnchart_material_1" style="height: 300px;"></div>
			</div>
		</div>
		<!-- 구글 차트  -->
		
		<!-- Abdomen 차트  -->
		<div class="row">
			<div class="col-sm-10 col-offset-sm-2">
				<h1>Abdomen</h1>
				<div id="columnchart_material_2" style="height: 300px;"></div>
			</div>
		</div>
		<!-- 구글 차트  -->
		
		<!-- Hips 차트  -->
		<div class="row">
			<div class="col-sm-10 col-offset-sm-2">
				<h1>Hips</h1>
				<div id="columnchart_material_3" style="height: 300px;"></div>
			</div>
		</div>
		<!-- 구글 차트  -->


		<!-- Content 끝 -->
	</div>


</body>
</html>