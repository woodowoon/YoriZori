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
.contents-container { background-color: #fff; border-radius: 24px; padding: 35px; }

.fest-status { margin-bottom: 15px; text-align: center; }
.fest-status > span { background-color: #f44502; color: #fff; border-radius: 50px; padding: 0 8px; display: inline-block; }
.fest-title > span { display: block; font-size: 36px; font-weight: 700; color: #333; text-align: center; }
.fest-period { margin-top: 10px; text-align: center; }
.fest-period > span { font-size: 16px; color: #666; }
.post-area { margin-top: 50px; }
.post-area > button > .ico { display: inline-block; text-indent: -9999px; }
.post-area > button > .num { margin-left: 8px; color: #000; font-size: 16px; }
.btn_star > .ico {
	width: 25px; height: 25px; background-size: 25px 25px; background-repeat: no-repeat; 
	background-image: url("${pageContext.request.contextPath}/resources/images/star.png");
}
.btn_bubble > .ico {
	width: 25px; height: 25px; background-size: 25px 25px; background-repeat: no-repeat; 
	background-image: url("${pageContext.request.contextPath}/resources/images/replyBubble.png");
}

.fest-contents { margin-top: 25px; }
.fest-contents > span { display: block; font-size: 24px; font-weight: 600; color: #333; border-bottom: 2px solid #333; }
.fest-desc { padding-top: 30px; }
.fest-desc > p { color: #333; font-size: 17px; }

.fest-info { display: inline-block; margin: 40px 0; }
.fest-info > ul { display: inline-block; list-style: none; padding-left: 0; margin-bottom: 0; }
.fest-info > ul > li { float: left; width: 50%; padding: 0 0 9px 0; display: table; font-size: 15px; font-weight: 400; }
.fest-info > ul > li > strong { float: none; width: 130px; display: table-cell; padding-left: 12px; color: #333; }
.fest-info > ul > li > span { float: none; width: auto; display: table-cell; color: #666; padding-right: 20px; line-height: 1.4; }

.map { width: 100%; height: 450px; border: 1px solid #e6e6e6; }

.prev-next { display: flex; width: 100%; margin: 30px auto; }
.prev, .list, .next { width: 33.3%; }
.prev, .next { display: flex; line-height: 49px; }
.prev > .prev-subject, .next > .next-subject { padding: 0 20px; font-size: 15px; font-weight: 400; }
.prev > .prev-subject:hover, .next > .next-subject:hover { text-decoration: none; color: #333; }
.next > .next-subject { width: 100%; text-align: right; }
.list { text-align: center; display: flex; justify-content: center; }

.ai {
	display: block; position: relative; width: 48px; height: 48px;
    border-radius: 9999px; border: 1px solid #dddddd;
}
.ai:hover, .ai:active { text-decoration: none; color: #333; }
.ai-left, .ai-right { font-size: 20px; padding: 13px; }
a > i { display: flex; }

.btn-list {
	color: #ffffff; background-color: #f44502; font-size: 14px;
	border-radius: 9999px; padding: 13px 40px; margin: 0 10px;
}
.btn-white {
	color: #f44502; background-color: #ffffff; font-size: 14px;
	border-radius: 9999px; padding: 13px 30px; border: 1px solid #f44502;
}

.reply { width: 85%; margin: 100px auto; }
.reply-form .form-control { height: 100px; }
.reply-desc { font-size: 13px; color: #666666; }

.reply-form .btnReply { border-color: #333; padding: 6px 12px; font-weight: 500; border-radius: 0; }
.reply-form .btnReply:hover, .reply-form .btnReply:active  { background-color: #333; color: #fff; }

</style>

<script type="text/javascript">

</script>

<div class="container">
	<div class="contents-container">
		<div class="fest-title">
			<div class="fest-status"><span>진행중</span></div>
			<span>제13회 안흥 찐빵축제</span>
		</div>
		<div class="fest-period">
			<span>2022.06.09 ~ 2022.06.10</span>
		</div>
		<div class="post-area">
			<button type="button" class="btn btn_star">
				<span class="ico">관심</span>
				<span class="num">99</span>
			</button>
			<button type="button" class="btn btn_bubble">
				<span class="ico">댓글</span>
				<span class="num">24</span>
			</button>
		</div>
		
<!--
		<div id="carouselImageCaptions" class="carousel slide" data-bs-ride="carousel">
			<div class="carousel-indicators">
				<c:forEach var="dto" items="${list}" varStatus="status">
					<button type="button" data-bs-target="#carouselImageCaptions" data-bs-slide-to="${status.index}" class="${status.index==0?'active':''}" aria-current="true" aria-label="${dto.subject}"></button>
				</c:forEach>
			</div>
			 	
			<div class="carousel-inner">
				<c:forEach var="dto" items="${list}" varStatus="status">
					<div class="carousel-item ${status.index==0?'active':''}">
						<a href="${articleUrl}&num=${dto.num}">
							<img src="${pageContext.request.contextPath}/uploads/festival/${dto.imageFilename}"
								class="d-block w-100" style="max-height: 450px;">
						</a>
					</div>
				</c:forEach>
			</div>
				
			<button class="carousel-control-prev" type="button" data-bs-target="#carouselImageCaptions" data-bs-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Previous</span>
			</button>
			<button class="carousel-control-next" type="button" data-bs-target="#carouselImageCaptions" data-bs-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Next</span>
			</button>
		</div>
-->
		
		<div class="fest-contents">
			<span>축제내용</span>
			<div class="fest-desc">
				<p>
					안흥 찐빵은 맛있습니다. 그래서 축제를 개최합니다. 다들 오셔서 찐빵 드세요. 안흥 찐빵은 맛있습니다. 그래서 축제를 개최합니다. 다들 오셔서 찐빵 드세요.
					안흥 찐빵은 맛있습니다. 그래서 축제를 개최합니다. 다들 오셔서 찐빵 드세요. 안흥 찐빵은 맛있습니다. 그래서 축제를 개최합니다. 다들 오셔서 찐빵 드세요.
				</p>
			</div>
		</div>
		
		<div class="fest-info">
			<ul>
				<li>
					<strong>시작일</strong>
					<span>2022.06.09</span>
				</li>
				<li>
					<strong>종료일</strong>
					<span>2022.06.10</span>
				</li>
				<li>
					<strong>주최기관</strong>
					<span>안흥찐빵협회</span>
				</li>
				<li>
					<strong>홈페이지</strong>
					<span><a>http://zzinbbang.com</a></span>
				</li>
				<li>
					<strong>주소</strong>
					<span>서울특별시 찐빵구 찐빵로 78</span>
				</li>
				<li>
					<strong>축제장소</strong>
					<span>찐빵 전시관</span>
				</li>
			</ul>
		</div>
		
		<div id="map" class="map">
		
		</div>
	</div>
	
	<div class="prev-next">
		<div class="prev">
			<a class="ai ai-left"><i class="bi bi-chevron-left"></i></a>
			<a class="prev-subject">안흥 찐빵축제</a>
		</div>
		<div class="list">
			<button class="btn btn-white" type="button">수정</button>
			<button class="btn btn-list" type="button">목록</button>
			<button class="btn btn-white" type="button">삭제</button>
		</div>
		<div class="next">
			<a class="next-subject">안흥 찐빵축제</a>
			<a class="ai ai-right"><i class="bi bi-chevron-right"></i></a>
		</div>
	</div>
		    	
	<div class="reply">
		<form name="replyForm" method="post">	
			<table class="table table-borderless reply-form">
				<tr>
					<td colspan="2">
						<textarea class='form-control' name="content"></textarea>
					</td>
				</tr>
				<tr>
					<td>
						<p class="reply-desc">* 욕설, 상업적인 내용, 특정인이나 특정 종교 및 특정사안을 비방하는 내용 등은 예고 없이 삭제될 수 있습니다.</p>
					</td>
					<td align='right'>
						<button type='button' class='btn btnReply'>댓글 달기</button>
					</td>
				</tr>
			</table>
		</form>
				
		<div id="listReply"></div>
		
	</div>
</div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=4c09fc6060151a83677eaa4c71bcdc06"></script>
<script type="text/javascript">

var mapContainer = document.getElementById('map'), 			// 지도를 표시할 div 
mapOption = { 
    center: new kakao.maps.LatLng(37.41281125, 128.1561222), 	// 지도의 중심좌표
    level: 4 // 지도의 확대 레벨
};

//지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
var map = new kakao.maps.Map(mapContainer, mapOption); 

//마커가 표시될 위치입니다 
var markerPosition  = new kakao.maps.LatLng(37.41281125, 128.1561222); 

// 마커를 생성합니다
var marker = new kakao.maps.Marker({
    position: markerPosition
});

// 마커가 지도 위에 표시되도록 설정합니다
marker.setMap(map);

// 아래 코드는 지도 위의 마커를 제거하는 코드입니다
// marker.setMap(null);    

</script>