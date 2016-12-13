<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<%@include file="/lib/bootstrap.jsp"%>
<%@include file="/lib/googleChart.jsp"%>
<script>
	google.charts.load('current', {
		'packages' : [ 'bar' ]
	});
	google.charts.setOnLoadCallback(drawChart);
	function drawChart() {
		var options = {
			/* chart : {
				title : 'Company Performance',
				subtitle : 'Sales, Expenses, and Profit: 2014-2018',
			} */
		};
		var data = google.visualization.arrayToDataTable([
				[ 'Year', '과거', '현재', '목표치' ],
				[ '2014', 10, 400, 200 ], [ '2015', 1170, 460, 250 ],
				[ '2016', 660, 1120, 300 ], [ '2017', 1030, 540, 350 ],
				[ '2018', 100, 340, 2000 ]

		]);
		var data1 = google.visualization.arrayToDataTable([
				[ 'Month', '과거', '현재', '목표치'],[ '1월', 100, 400, 200 ],
				[ '2월', 1170, 460, 250 ], [ '3월', 660, 1120, 300 ],
				[ '4월', 1030, 540, 350 ], [ '5월', 100, 340, 2000 ],
				[ '6월', 100, 340, 2000 ], [ '7월', 100, 340, 2000 ],
				[ '8월', 100, 340, 2000 ], [ '9월', 100, 340, 2000 ],
				[ '10월', 100, 340, 2000 ], [ '11월', 100, 340, 2000 ],
				[ '12월', 100, 340, 2000 ]

		]);
		var data2 = google.visualization.arrayToDataTable([
				[ 'Day', '과거', '현재', '목표치'],
				[ '1일', 1170, 460, 250 ], [ '2일', 660, 1120, 300 ],
				[ '3일', 1030, 540, 350 ], [ '4일', 100, 340, 2000 ],
				[ '5일', 100, 340, 2000 ], [ '6일', 100, 340, 2000 ],
				[ '7일', 100, 340, 2000 ], [ '8일', 100, 340, 2000 ],
				[ '9일', 100, 340, 2000 ], [ '10일', 100, 340, 2000 ],
				[ '11일', 100, 340, 2000 ][ '12일', 1170, 460, 250 ],/*  [ '13일', 660, 1120, 300 ],
				[ '14일', 1030, 540, 350 ], [ '15일', 100, 340, 2000 ] */
				/* [ '16일', 100, 340, 2000 ], [ '17일', 100, 340, 2000 ],
				[ '18일', 100, 340, 2000 ], [ '19일', 100, 340, 2000 ],
				[ '20일', 100, 340, 2000 ], [ '21일', 100, 340, 2000 ],
				[ '22일', 100, 340, 2000 ],[ '23일', 100, 400, 200 ],
				[ '24일', 1170, 460, 250 ], [ '25일', 660, 1120, 300 ],
				[ '26일', 1030, 540, 350 ], [ '27일', 100, 340, 2000 ],
				[ '28일', 100, 340, 2000 ],[ '29일', 100, 340, 2000 ],[ '30일', 100, 340, 2000 ],
				[ '31일', 100, 340, 2000 ] */

		]);


		var chart = new google.charts.Bar(document
				.getElementById('columnchart_material'));
		var chart1 = new google.charts.Bar(document
				.getElementById('columnchart_material_1'));
		var chart2 = new google.charts.Bar(document
				.getElementById('columnchart_material_2'));

		chart.draw(data, options);
		chart1.draw(data1, options);
		chart2.draw(data2, options);
	}
</script>
</head>
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
<body>
	<div id="main">
		<%@include file="/lib/topMenu.jsp"%>
		<!-- 구글 차트  -->
		<div class="col-sm-8 col-offset-sm-1">
			<h1>Push Up</h1>
			<h2>년</h2>
			<div id="columnchart_material"></div>
			<h2>월</h2>
			<div id="columnchart_material_1"></div>
			<h2>일</h2>
			<div id="columnchart_material_2"></div>
			
		</div>
	</div>
</body>
</html>