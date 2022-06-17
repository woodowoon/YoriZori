<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<style type="text/css">
@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap');

.clearFix:after { content: ''; display: block; clear: both; }
.lecture { background: #f1f1f2; padding: 20px 0; }
.lecture * {
	font-family: 'Noto Sans KR', sans-serif;
	padding: 0; margin: 0; box-sizing: border-box;
}
.lecture img { width: 100%; }

.lecture .full { width: 1320px; background: #fff; border: 1px solid #e6e7e8; padding: 0 30px; margin: 0 auto; }

.lecture .video-area { position: relative; width: 1250px; margin: 25px auto; }
.lecture .video-area div { position: absolute; top: 0; left: 8px; width: 1235px; height: 650px; background: rgba(0,0,0,0.5); }
.lecture .video-area div h3 { position: absolute; top: 150px; left: 50%; transform: translateX(-50%); font-size: 75px; font-weight: 700; letter-spacing: 20px; color: #fff; text-shadow: 1px 1px 12px #000; z-index: 1; }
.lecture .video-area .introVideo { width: 100%; height: 650px; }

.lecture .lec-category { display: table; border-bottom: 1px solid #ddd; padding: 14px 0; margin-bottom: 0; }
.lecture .lec-category a { position: relative; display: table-cell; width: 1%; font-size: 18px; padding: 6px 0 0 52px; height: 40px; text-align: center; }
.lecture .lec-category a:hover { text-decoration: none; }
.lecture .lec-category a:after { position: absolute; top: 50%; right: 0; transform: translateY(-50%); display: block; content: ''; width: 1px; height: 25px; background: #ddd; }
.lecture .lec-category a:last-child:after { display: none; }
.lecture .lec-category .lec-cate-0 { background: url(${pageContext.request.contextPath}/resources/images/class-cate0.png) 60px center no-repeat; background-size: 46px; }
.lecture .lec-category .lec-cate-1 { background: url(${pageContext.request.contextPath}/resources/images/class-cate1.png) 60px center no-repeat; background-size: 46px; }
.lecture .lec-category .lec-cate-2 { background: url(${pageContext.request.contextPath}/resources/images/class-cate2.png) 60px center no-repeat; background-size: 46px; }
.lecture .lec-category .lec-cate-3 { background: url(${pageContext.request.contextPath}/resources/images/class-cate3.png) 60px center no-repeat; background-size: 46px; }
.lecture .lec-category .lec-cate-4 { background: url(${pageContext.request.contextPath}/resources/images/class-cate4.png) 60px center no-repeat; background-size: 46px; }
.lecture .lec-category .lec-cate-5 { background: url(${pageContext.request.contextPath}/resources/images/class-cate5.png) 60px center no-repeat; background-size: 46px; }

.lecture .lec-list { margin-top: 20px; }
.lecture .lec-list .insertClass { display: block; width: 200px; height: 50px; line-height: 48px; font-size: 20px; font-weight: 700; text-align: center; color: #fff; background: #77b347; margin: 0 22px 35px auto; }
.lecture .lec-list .insertClass:hover { text-decoration: none; }
.lecture .lec-list ul li { float: left; list-style: none; }
.lecture .lec-list ul li > div { width: 274px; margin: 0 20px 50px; }

.lecture .lec-list .text-area { position: relative; font-size: 15px; padding: 10px 2px; }
.lecture .lec-list .text-area p:nth-child(2) { font-size: 12px; color: #a2a2a2; border-bottom: 1px solid #f8f8f8; padding: 6px 0; margin-bottom: 10px; }
.lecture .lec-list .text-area p:last-child { font-size: 15px; font-weight: 700; color: #000; }
.lecture .lec-list .text-area .classLike { position: absolute; bottom: 12px; right: 3px; width: 28px; }
</style>

<div class="lecture">
	<div class="full">
		<div class="video-area">
			<div>
				<h3>클래스</h3>
			</div>
			<video autoplay="autoplay" muted="muted" class="introVideo">
				<source src="${pageContext.request.contextPath}/resources/media/class-intro.webm" type="video/webm">
				<source src="${pageContext.request.contextPath}/resources/media/class-intro.mp4" type="video/mp4">
			</video>
		</div>
		<script type="text/javascript">
			
		</script>
		
		<div class="lec-category">
			<a href="#" class="lec-cate-0">전체</a>
			<a href="#" class="lec-cate-1">한식</a>
			<a href="#" class="lec-cate-2">중식</a>
			<a href="#" class="lec-cate-3">일식</a>
			<a href="#" class="lec-cate-4">베이킹</a>
			<a href="#" class="lec-cate-5">기타</a>
		</div>
		
		<div class="lec-list">
			<c:if test="${sessionScope.member.role == 0 || sessionScope.member.role == 2}">
				<a href="${pageContext.request.contextPath}/class/write" class="insertClass">클래스 등록</a>
			</c:if>
			<ul class="clearFix">
				<c:forEach var="dto" items="${list}">
					<li>
						<div>
							<div class="img-area">
								<a href="${articleUrl}&num=${dto.classCode}">
									<img src="${pageContext.request.contextPath}/uploads/class/${dto.imageFileName}">
								</a>						
							</div>
							<div class="text-area">
								<p>${dto.classSubject}</p>
								<p>${dto.userId} - 팔로워 (${dto.followCount})</p>
								<p>${dto.price}원</p>
								<a href="#" class="classLike">
									<img src="${pageContext.request.contextPath}/resources/images/heart1.png">
								</a>
							</div>
						</div>
					</li>
				</c:forEach>
			</ul>
		</div>
	</div>
</div>
