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
.post-area { margin-top: 50px; margin-bottom: 30px; }
.post-area > button > .ico { display: inline-block; text-indent: -9999px; }
.post-area > button > .num { margin-left: 8px; color: #000; font-size: 16px; }
.btn_star > .ico {
	width: 25px; height: 25px; background-size: 25px 25px; background-repeat: no-repeat;
}
.btn_bubble > .ico {
	width: 25px; height: 25px; background-size: 25px 25px; background-repeat: no-repeat; 
	background-image: url("${pageContext.request.contextPath}/resources/images/replyBubble.png");
}

.carousel-item { overflow: hidden; width: 100%; height: 450px; }
.carousel-item > img { width: auto; max-height: 100%; display: block; margin: 0 auto; }
.carousel-control-next, .carousel-control-prev {  }

.fest-contents { margin-top: 30px; }
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
function deleteFest() {
    if(confirm("게시물을 삭제하시겠습니까 ?")) {
	    let query = "${query}&num=${dto.num}";
	    let url = "${pageContext.request.contextPath}/festival/delete?" + query;
    	location.href = url;
    }
}
</script>

<script type="text/javascript">
function login() {
	location.href="${pageContext.request.contextPath}/member/login";
}

function ajaxFun(url, method, query, dataType, fn) {
	$.ajax({
		type:method,
		url:url,
		data:query,
		dataType:dataType,
		success:function(data) {
			fn(data);
		},
		beforeSend:function(jqXHR) {
			jqXHR.setRequestHeader("AJAX", true);
		},
		error:function(jqXHR) {
			if(jqXHR.status === 403) {
				login();
				return false;
			} else if(jqXHR.status === 400) {
				alert("요청 처리가 실패 했습니다.");
				return false;
			}
			console.log(jqXHR.responseText);
		}
	});
}

$(function(){
	$(".btnSendFestLike").click(function(){
		let userFestLiked = "${userFestLiked}";
		
		let url = "${pageContext.request.contextPath}/festival/insertFestLike";
		let num = "${dto.num}";
		let query = "num=" + num + "&userFestLiked=" + userFestLiked;
		
		const fn = function(data){
			let state = data.state;
			if(state === "true") {
				if( userFestLiked ) {
					$('.ico').css("background-image", "url('${pageContext.request.contextPath}/resources/images/star.png')");
				} else {
					$('.ico').css("background-image", "url('${pageContext.request.contextPath}/resources/images/fill-star.png')");
				}
				
				var count = data.festLikeCount;
				$("#FestLikeCount").text(count);
				
			} else if(state === "false") {
				alert("관심 등록 처리를 실패했습니다.");
			}
		};
		
		ajaxFun(url, "post", query, "json", fn);
	});
});
</script>

<div class="container">
	<div class="contents-container">
		<div class="fest-title">
			<div class="fest-status"><span>${menu=='ing'?"진행중":menu=='before'?"예정":"종료"}</span></div>
			<span>${dto.name}</span>
		</div>
		<div class="fest-period">
			<span>${dto.start_date} ~ ${dto.end_date}</span>
		</div>
		<div class="post-area">
			<button type="button" class="btn btn_star btnSendFestLike">
				<span class="ico" style="background-image: url('${pageContext.request.contextPath}/resources/images/${userFestLiked?'fill-star':'star'}.png');">관심</span>
				<span class="num" id="FestLikeCount">${dto.festLikeCount}</span>
			</button>
			<button type="button" class="btn btn_bubble">
				<span class="ico">댓글</span>
				<span class="num">${dto.replyCount}</span>
			</button>
		</div>
		
		<c:if test="${listFile.size() != 0}">
			<div id="carouselExampleDark" class="carousel carousel-dark slide" data-bs-ride="carousel">
				<div class="carousel-indicators">
					<c:forEach var="vo" items="${listFile}" varStatus="status">
						<button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="${status.index}" class="${status.index==0?'active':''}" aria-current="true"></button>
					</c:forEach>
				</div>
				
				<div class="carousel-inner">
					<c:forEach var="vo" items="${listFile}" varStatus="status">
						<div class="carousel-item ${status.index==0?'active':''}">
			      			<img src="${pageContext.request.contextPath}/uploads/festival/${vo.fileName}">
			    		</div>
		    		</c:forEach>
				</div>
				
				<button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="prev">
				    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
				    <span class="visually-hidden">Previous</span>
				</button>
				<button class="carousel-control-next" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="next">
					<span class="carousel-control-next-icon" aria-hidden="true"></span>
					<span class="visually-hidden">Next</span>
				</button>
			</div>
		</c:if>
		
		<div class="fest-contents">
			<span>축제내용</span>
			<div class="fest-desc">
				<p>
					${dto.content}
				</p>
			</div>
		</div>
		
		<div class="fest-info">
			<ul>
				<li>
					<strong>시작일</strong>
					<span>${dto.start_date}</span>
				</li>
				<li>
					<strong>종료일</strong>
					<span>${dto.end_date}</span>
				</li>
				<li>
					<strong>주최기관</strong>
					<span>${dto.host}</span>
				</li>
				<li>
					<strong>홈페이지</strong>
					<span><a>${dto.site}</a></span>
				</li>
				<li>
					<strong>주소</strong>
					<span>${dto.addr}</span>
				</li>
				<li>
					<strong>축제장소</strong>
					<span>${dto.place}</span>
				</li>
			</ul>
		</div>
		
		<div id="map" class="map">
		
		</div>
	</div>
	
	<div class="prev-next">
		<div class="prev">
			<a class="ai ai-left"><i class="bi bi-chevron-left"></i></a>
			<a class="prev-subject" href="${pageContext.request.contextPath}/festival/article?${query}&num=${preReadDto.num}">${preReadDto.name}</a>
		</div>
		<div class="list">
			<c:if test="${sessionScope.member.role == 0}">
				<button class="btn btn-white" type="button" onclick="location.href='${pageContext.request.contextPath}/festival/update?${query}&num=${dto.num}';">수정</button>
			</c:if>
			<button class="btn btn-list" type="button" onclick="location.href='${pageContext.request.contextPath}/festival/list?${query}';">목록</button>
			<c:if test="${sessionScope.member.role == 0}">
				<button class="btn btn-white" type="button" onclick="deleteFest();">삭제</button>
			</c:if>
		</div>
		<div class="next">
			<a class="next-subject" href="${pageContext.request.contextPath}/festival/article?${query}&num=${nextReadDto.num}">${nextReadDto.name}</a>
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

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey="></script>
<script type="text/javascript">

var latitude = '${dto.latitude}';
var longitude = '${dto.longitude}';

var mapContainer = document.getElementById('map'), 			// 지도를 표시할 div 
mapOption = { 
    center: new kakao.maps.LatLng(latitude, longitude), 	// 지도의 중심좌표
    level: 4 // 지도의 확대 레벨
};

//지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
var map = new kakao.maps.Map(mapContainer, mapOption); 

//마커가 표시될 위치입니다 
var markerPosition  = new kakao.maps.LatLng(latitude, longitude); 

// 마커를 생성합니다
var marker = new kakao.maps.Marker({
    position: markerPosition
});

// 마커가 지도 위에 표시되도록 설정합니다
marker.setMap(map);

// 아래 코드는 지도 위의 마커를 제거하는 코드입니다
// marker.setMap(null);    

</script>