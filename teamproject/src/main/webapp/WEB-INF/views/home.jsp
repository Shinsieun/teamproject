<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8"%>


<html>
<head>
<title>Welcome to Handong CCC club!</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>
/* Remove the navbar's default margin-bottom and rounded borders */
.navbar {
	margin-bottom: 0;
	border-radius: 0;
}

/* Set height of the grid so .sidenav can be 100% (adjust as needed) */
.row.content {
	height: 450px
}

/* Set gray background colhttps://www.w3schools.com/bootstrap/tryit.asp?filename=trybs_temp_webpage&stacked=h#or and 100% height */
.sidenav {
	padding-top: 20pxhttps://www.w3schools.com/bootstrap/tryit.asp?filename=trybs_temp_webpage&stacked=h#;
	background-color: #f1f1f1;
	height: 100%;
}

/* Set black background color, white text and some padding */
footer {
	background-color: #555;
	color: white;
	padding: 15px;
}

/* On small screens, set height to 'auto' for sidenav and grid */
@media screen and (max-width: 767px) {
	.sidenav {
		height: auto;
		padding: 15px;
	}
	.row.content {
		height: auto;
	}
}
</style>
</head>
<body>

	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">Logo</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li class="active"><a href="../ourapp">Home</a></li>
					<li><a href="viewboard">게시판</a></li>
					<li><a href="reser">예약</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<div class="container-fluid text-center">
		<div class="row content">
			<div class="col-sm-2 sidenav">
				<p>
					<a href="http://nh.kccc.org/index.html" font-size="10px">한국 CCC
						대표 홈페이지</a>
				</p>
				<p>
					<a href="https://instagram.com/handong_ccc?igshid=45thhrubitid">인스타그램</a>
				</p>

			</div>
			<div class="col-sm-8 text-left">
				<h1>Welcome to Handong CCC</h1>
				<p>CCC는 'Movements Everywhere' (어느 곳에서나 영적 운동을 일으키기)라는 비전을 가지고
					성령의 능력으로 사람들에게 그리스도를 전하고 믿음을 훈련시키고, 이들이 다른 사람들을 전도하고 제자화 할 수 있도록
					파송하여, 지상 명령을 성취하도록 돕는 단체입니다.</p>
				<hr>
				<h1>What activities do CCC do?</h1>
				<p>활동이라고 하면 너무 딱딱해 보여서 이렇게 표현해보고 싶은데, CCC는 한마디로 기쁠 때 함께웃어주고 슬플 때
					함께 울어주는 가족공동체를 이루어가는 곳이라고 할 수 있는 것 같아요. CCC에 처음 들어오게 되면 순원이라고 불리는데
					순원들은 모두 순장이 한 명씩 있어요. 순장과 순원은 친형제/자매 보다 더 친해져서 매일 밥도 같이 먹고 고민도 나누며
					서로를 위해 기도해주는 없어서는 안될 존재가 된답니다. 또한 CCC의 자랑 순모임 교재를 통해 매주 순장님과 함께하는
					순모임을 진행하게 되는데, 이 시간이 그렇게 좋을 수가 없어요!! 자랑하고 싶은것은 엄청 많은데 다 말하려면 끝이 없고
					마지막으로 한가지만 더 말하자면 한동대 뿐만 아니라 포항에 있는 포항공대 포항대 선린대 에도 CCC가 있어서 다른 학교
					학생들과도 매주 함께 교제하고 예배드릴 수 있답니다.</p>
				<hr>
			</div>
			<div class="col-sm-2 sidenav">
				<div>
					<img src="./img/ccc2.jpg" width="150">
				</div>
				<div>
					<img src="./img/ccc1.jpg" width="150">
				</div>
				<div>
					<img src="./img/ccc3.jpg" width="150">
				</div>
			</div>
		</div>
	</div>
	<footer class="container-fluid text-center">
		<p>Handong CCC Club</p>
	</footer>

</body>
</html>
