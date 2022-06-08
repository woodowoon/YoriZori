<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700&display=swap" rel="stylesheet">

<style type="text/css">
main { background-color: #f7f8fb; font-family: 'Noto Sans KR', sans-serif; color: #000000; letter-spacing: -0.03em; }

.container { padding: 60px 0; }

.menu-title { width: 100%; text-align: center; font-size: 30px; font-weight: 700; margin-bottom: 35px; }

.menu-list { list-style: none; display: flex; padding: 20px 0; margin-bottom: 50px; }
.menu-list > li { font-size: 16px; width: 33.3%; text-align: center; }

.festival-list { list-style: none; display: flex; padding-left: 0; }
.festival-list li:nth-child(1) { margin-left: 0; }
.festival-list > li { margin: 0 0 20px 24px; width: calc(25% - 18px); }
.festival-img { margin-bottom: 0; }
.festival-img > img { width: 100%; height: 100%; max-height: 300px; max-width: 280px; }

</style>

<div class="container">
	<div class="menu-title">
		<p>진행 중인 축제</p>
	</div>
	
	<ul class="menu-list">
		<li><a><span>예정된 축제</span></a></li>
		<li><a><span>진행 중인 축제</span></a></li>
		<li><a><span>종료된 축제</span></a></li>
	</ul>
	
	<div class="festival-container">
		<ul class="festival-list">
			<li>
				<div class="festival-box">
					<p class="festival-img">
						<img class="festival_poster" src="${pageContext.request.contextPath}/resources/images/festival_poster.jpg">
					</p>
					<div class="festival-info">
						<p class="festival-title"></p>
						<p class="festival-desc"></p>
					</div>
				</div>
			</li>
			<li>
				<div class="festival-box">
					<p class="festival-img">
						<img class="festival_poster" src="${pageContext.request.contextPath}/resources/images/festival_poster.jpg">
					</p>
					<div class="festival-info">
						<p class="festival-title"></p>
						<p class="festival-desc"></p>
					</div>
				</div>
			</li>
			<li>
				<div class="festival-box">
					<p class="festival-img">
						<img class="festival_poster" src="${pageContext.request.contextPath}/resources/images/festival_poster.jpg">
					</p>
					<div class="festival-info">
						<p class="festival-title"></p>
						<p class="festival-desc"></p>
					</div>
				</div>
			</li>
			<li>
				<div class="festival-box">
					<p class="festival-img">
						<img class="festival_poster" src="${pageContext.request.contextPath}/resources/images/festival_poster.jpg">
					</p>
					<div class="festival-info">
						<p class="festival-title"></p>
						<p class="festival-desc"></p>
					</div>
				</div>
			</li>
		</ul>
	</div>
	
	<div class="pagination">
	</div>
</div>