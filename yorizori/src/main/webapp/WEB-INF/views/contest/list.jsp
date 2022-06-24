<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700&display=swap" rel="stylesheet">

<style type="text/css">
main { background-color: #f7f8fb; font-family: 'Noto Sans KR', sans-serif; color: #000000; letter-spacing: -0.03em; padding: 60px 0; }

.c-container { background: #fff; border-radius: 24px; padding: 35px 0; width: 1320px; margin: 0 auto; }

.contest-title { width: 100%; font-size: 20px; font-weight: 700; margin-bottom: 35px; list-style: none; display: flex; justify-content: center; }
.contest-title .contestend-li { padding-left: 50px;}

.contest-list { list-style: none; display: flex; width: 95%; margin: 0 auto 50px auto; padding-left: 0; }
.contest-list > li { font-size: 16px; width: 33.3%; text-align: center; border-bottom: 1px solid #dadada; border-top: 1px solid #dadada; }
.contest-list > li > a { display: block; height: 64px; }
.contest-list > li > a:hover, .menu-list > li > a:active { text-decoration: none; color: #f44502; }
.contest-list > li > a > span { line-height: 60px; }

.contest-container { width: 95%; margin: 0 auto; }
.contest-list { list-style: none; display: flex; padding-left: 0; }
.contest-list li:nth-child(1) { margin-left: 0; }
.contest-list > li { margin: 0 0 20px 24px; width: calc(25% - 18px); }

.contest-box { border: 1px solid #dadada; text-align: center; }
.contest-img { margin-bottom: 20px; width: 400px; height: 300px; overflow: hidden;}
.contest-img > a > img { max-width: 100%; min-height: 100%; }
.contest-info { letter-spacing: 0; margin: 0 10px; }
.contest-title { font-size: 20px; font-weight: 500; text-overflow: ellipsis; overflow: hidden; white-space: nowrap; }
.contest-title > a { text-decoration: none; color: #000; }
.contest-desc { font-size: 16px; font-weight: 300; }

.btn-container { width: 90%; margin: 0 auto; text-align: right; }
.btn-write { color: #ffffff; background-color: #f44502; font-size: 25px; border-radius: 300px; padding: 10px 20px; }

.page-item.active .page-link { background-color: #f44502; border-color: #f44502; }
.page-link, .page-link:hover, .page-link:active { color: #f44502; }
</style>

<script type="text/javascript">

$(function(){
	if('${menu}' == 'ing') {
		$(".contesting-li").css("border-bottom","2px solid #f44502");
	} else if('${menu}' == 'end') {
		$(".contestend-li").css("border-bottom","2px solid #f44502");
});

</script>

<div class="c-container">
	
	<ul class="contest-title">
		<li class="contesting-li"><a href="${pageContext.request.contextPath}/contest/list?menu=ing"><span>공모전</span></a></li>
		<li class="contestend-li"><a href="${pageContext.request.contextPath}/contest/list?menu=end"><span>공모전 발표</span></a></li>
	</ul>
	
	<div class="contest-container">
		<c:forEach var="dto" items="${list}" varStatus="status" step="4">
			<ul class="contest-list">
				<c:forEach var="dto" items="${list}" begin="${status.index}" end="${status.index+3}">
					<li>
						<div class="contest-box">
							<div class="contest-img">
								<a href="${articleUrl}&num=${dto.eventNum}">
									<c:choose>
										<c:when test="${dto.fileName != null}">
											<img src="${pageContext.request.contextPath}/uploads/contest/${dto.fileName}">
										</c:when>
										<c:otherwise>
											<img src="${pageContext.request.contextPath}/resources/images/event1.png">
										</c:otherwise>
									</c:choose>
								</a>
							</div>
							<div class="contest-info">
								<p class="contest-title"><a href="${articleUrl}&num=${dto.eventNum}">${dto.eventNum}</a></p>
								<p class="contest-desc">${dto.startTime} ~ ${dto.expireTime}</p>
							</div>
						</div>
					</li>
				</c:forEach>
			</ul>
		</c:forEach>
	</div>
	
	<div class="btn-container">
		<c:if test="${sessionScope.member.role == 0}">
			<button type="button" class="btn btn-write" onclick="location.href='${pageContext.request.contextPath}/contest/write';">
				<i class="icofont-plus-square"></i>
			</button>
		</c:if>
	</div>
	
	<div class="page-box">
		${dataCount == 0 ? "등록된 게시물이 없습니다." : paging}
	</div>
</div>
