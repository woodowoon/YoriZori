<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700&display=swap" rel="stylesheet">

<style type="text/css">
main { background-color: #f7f8fb; font-family: 'Noto Sans KR', sans-serif; color: #000000; letter-spacing: -0.03em; padding: 60px 0; }

.container { background: #fff; border-radius: 24px; padding: 35px 0; }

.menu-title { width: 100%; text-align: center; font-size: 30px; font-weight: 700; margin-bottom: 35px; }

.menu-list { list-style: none; display: flex; width: 95%; margin: 0 auto 50px auto; padding-left: 0; }
.menu-list > li { font-size: 16px; width: 33.3%; text-align: center; border-bottom: 1px solid #dadada; border-top: 1px solid #dadada; }
.menu-list > li > a { display: block; height: 64px; }
.menu-list > li > a > span { line-height: 60px; }

.festival-container { width: 95%; margin: 0 auto; }
.festival-list { list-style: none; display: flex; padding-left: 0; }
.festival-list li:nth-child(1) { margin-left: 0; }
.festival-list > li { margin: 0 0 20px 24px; width: calc(25% - 18px); }

.festival-box { border: 1px solid #dadada; text-align: center; }
.festival-img { margin-bottom: 20px; width: 295px; height: 300px; overflow: hidden;}
.festival-img > a > img { max-width: 100%; min-height: 100%; }
.festival-info { letter-spacing: 0; }
.festival-title { font-size: 20px; font-weight: 500; }
.festival-desc { font-size: 16px; font-weight: 300; }

</style>

<div class="container">
	<div class="menu-title">
		<p>진행 중인 축제</p>
	</div>
	
	<ul class="menu-list">
		<li><a><span>예정된 축제</span></a></li>
		<li style="border-bottom: 2px solid #f44502;"><a><span>진행 중인 축제</span></a></li>
		<li><a><span>종료된 축제</span></a></li>
	</ul>
	
	<div class="festival-container">
		<ul class="festival-list">
			<li>
				<div class="festival-box">
					<div class="festival-img">
						<a><img src="${pageContext.request.contextPath}/resources/images/festival_poster.jpg"></a>
					</div>
					<div class="festival-info">
						<p class="festival-title"><a>안흥찐빵축제</a></p>
						<p class="festival-desc">2022.06.09 ~ 2022.06.10</p>
					</div>
				</div>
			</li>
			<li>
				<div class="festival-box">
					<div class="festival-img">
						<a><img src="${pageContext.request.contextPath}/resources/images/festival_poster.jpg"></a>
					</div>
					<div class="festival-info">
						<p class="festival-title"><a>안흥찐빵축제</a></p>
						<p class="festival-desc">2022.06.09 ~ 2022.06.10</p>
					</div>
				</div>
			</li>
			<li>
				<div class="festival-box">
					<div class="festival-img">
						<a><img src="${pageContext.request.contextPath}/resources/images/festival_poster.jpg"></a>
					</div>
					<div class="festival-info">
						<p class="festival-title"><a>안흥찐빵축제</a></p>
						<p class="festival-desc">2022.06.09 ~ 2022.06.10</p>
					</div>
				</div>
			</li>
			<li>
				<div class="festival-box">
					<div class="festival-img">
						<a><img src="${pageContext.request.contextPath}/resources/images/festival_poster.jpg"></a>
					</div>
					<div class="festival-info">
						<p class="festival-title"><a>안흥찐빵축제</a></p>
						<p class="festival-desc">2022.06.09 ~ 2022.06.10</p>
					</div>
				</div>
			</li>
		</ul>
		
		<ul class="festival-list">
			<li>
				<div class="festival-box">
					<div class="festival-img">
						<a><img src="${pageContext.request.contextPath}/resources/images/festival_poster.jpg"></a>
					</div>
					<div class="festival-info">
						<p class="festival-title"><a>안흥찐빵축제</a></p>
						<p class="festival-desc">2022.06.09 ~ 2022.06.10</p>
					</div>
				</div>
			</li>
			<li>
				<div class="festival-box">
					<div class="festival-img">
						<a><img src="${pageContext.request.contextPath}/resources/images/festival_poster.jpg"></a>
					</div>
					<div class="festival-info">
						<p class="festival-title"><a>안흥찐빵축제</a></p>
						<p class="festival-desc">2022.06.09 ~ 2022.06.10</p>
					</div>
				</div>
			</li>
			<li>
				<div class="festival-box">
					<div class="festival-img">
						<a><img src="${pageContext.request.contextPath}/resources/images/festival_poster.jpg"></a>
					</div>
					<div class="festival-info">
						<p class="festival-title"><a>안흥찐빵축제</a></p>
						<p class="festival-desc">2022.06.09 ~ 2022.06.10</p>
					</div>
				</div>
			</li>
			<li>
				<div class="festival-box">
					<div class="festival-img">
						<a><img src="${pageContext.request.contextPath}/resources/images/festival_poster.jpg"></a>
					</div>
					<div class="festival-info">
						<p class="festival-title"><a>안흥찐빵축제</a></p>
						<p class="festival-desc">2022.06.09 ~ 2022.06.10</p>
					</div>
				</div>
			</li>
		</ul>
	</div>
	
</div>