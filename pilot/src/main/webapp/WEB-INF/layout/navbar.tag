<%@ tag language="java" pageEncoding="UTF-8"%>

<nav class="navbar navbar-default">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type=button " class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
				<span class="sr-only">토글 네비게이션</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="/">귀한 Spring Boot로 맨든 게시판</a>
		</div>

		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav navbar-right">
				<li class="active"><a href="/">게시판 1</a></li>
				<li><a href="/">게시판 2</a></li>
				<li><a href="/">게시판 3</a></li>

				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-expanded="false">Dropdown
						예시 <span class="caret"></span>
				</a>
					<ul class="dropdown-menu" role="menu">
						<li><a href="#">뿅 1</a></li>
						<li><a href="#">뿅 2</a></li>
						<li><a href="#">뿅 3</a></li>
						<li class="divider"></li>
						<li><a href="#">분리된 뿅</a></li>
					</ul></li>
			</ul>
		</div> <!-- navbar-collapse -->
	</div> <!-- container-fluid -->
</nav>