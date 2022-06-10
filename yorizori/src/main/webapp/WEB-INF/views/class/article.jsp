<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<style type="text/css">
@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap');

.clearFix:after { content: ''; display: block; clear: both; }
.lec-detail { background: #f1f1f2; padding: 20px 0; }
.lec-detail a { text-decoration: none; }
.lec-detail * {
	font-family: 'Noto Sans KR', sans-serif;
	padding: 0; margin: 0; box-sizing: border-box;
}
.lec-detail .full { width: 1320px; background: #fff; border: 1px solid #e6e7e8; padding: 0 30px 20px; margin: 15px auto 0; }
.lec-detail .full > h3 { font-weight: 700; margin: 20px 0; }

.lec-detail .classIntro { text-align: center; }
.lec-detail .classIntro .img-area { margin-top: 60px; }
.lec-detail .classIntro .user-info { position: relative; padding-bottom: 1px; }
.lec-detail .classIntro .user-info a { display: block; width: 120px; height: 120px; border-radius: 50%; padding: 5px; margin: -60px auto 5px; border: 5px solid rgba(255,255,255,0.7); }
.lec-detail .classIntro .user-info a img { width: 110px; height: 110px; border-radius: 50%; margin: -5px;}
.lec-detail .classIntro .user-info span { font-size: 15px; }
.lec-detail .classIntro .text-area .classTitle { font-size: 34px; margin: 20px 0; }
.lec-detail .classIntro .text-area .classPrice { font-size: 34px; border-bottom: 1px solid #e3e3e3; padding-bottom: 20px; }
.lec-detail .classIntro .text-area .classPrice span { font-size: 17px; }
.lec-detail .classIntro .text-area .info { text-align: right; margin: 8px 0 20px; }
.lec-detail .classIntro .text-area .info span { font-size: 16px; color: #AAA; margin-left: 25px; }
.lec-detail .classIntro .text-area .classSummary span { font-size: 20px; margin: 0 50px; }
.lec-detail .classIntro .text-area .classPayment { margin-top: 35px; }
.lec-detail .classIntro .text-area .classPayment .payBtn { display: inline-block; width: 550px; height: 60px; font-size: 24px; font-weight: 700; line-height: 58px; background: #77b347; color: #fff; }
.lec-detail .classIntro .text-area .classPayment .classLike { display: inline-block; width: 55px; vertical-align: top; margin-left: 50px; }
.lec-detail .classIntro .text-area .classPayment .classLike img { width: 100%; }

.lec-detail .curriculum .video-title { display: inline-block; width: 600px; font-size: 17px; border-top: 1px solid #ddd; border-left: 1px solid #ddd; border-bottom: 1px solid #ddd; border-radius: 8px; padding: 20px 0 20px 16px; margin-bottom: 15px; }
.lec-detail .curriculum .video-list:last-child .video-title { margin-bottom: 0; }
.lec-detail .curriculum .video-title span { font-size: 14px; color: #999; }
.lec-detail .curriculum .video-btn { position: relative; display: inline-block; width: 200px; font-size: 17px; text-align: center; border: 1px solid #ddd; border-radius: 8px; padding: 20px 0; margin-left: -3px; }
.lec-detail .curriculum .video-btn button { border: none; background: transparent; }
.lec-detail .curriculum .video-btn button i { position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%); font-size: 35px; color: #73b142;}

.lec-detail .review form * { display: inline-block; }
.lec-detail .review .addPhoto { cursor: pointer; vertical-align: top; }
.lec-detail .review textarea { resize: none; width: 700px; height: 140px; font-size: 16px; border: 1px solid #ccc; border-radius: 4px; padding: 10px 12px; margin-left: 10px; }
.lec-detail .review button { width: 140px; height: 140px; font-size: 20px; vertical-align: top; border: 1px solid #ccc; border-left: none; border-radius: 4px; background: transparent; margin-left: -3px; }

.lec-detail .classQna form * { display: inline-block; }
.lec-detail .classQna textarea { resize: none; width: 854px; height: 140px; font-size: 16px; border: 1px solid #ccc; border-radius: 4px; padding: 10px 12px; }
.lec-detail .classQna button { width: 140px; height: 140px; font-size: 20px; vertical-align: top; border: 1px solid #ccc; border-left: none; border-radius: 4px; background: transparent; margin-left: -3px; }

</style>

<script type="text/javascript">
	
</script>

<div class="lec-detail">
	<div class="full classIntro">
		<div class="img-area">
			<img src="${pageContext.request.contextPath}/resources/images/class-list-dummy.jpg">
			<div class="user-info">
				<a href="#">
					<img src="${pageContext.request.contextPath}/resources/images/class-profile-dummy.png">
				</a>
				<span>김현숙</span>
			</div>
		</div>
		<div class="text-area">
			<p class="classTitle">요리연구가 김현숙의 방구석세계요리 - 일본편편 [마제소바]</p>
			<p class="classPrice">15,000<span>원</span></p>
			<div class="info">
				<span>조회수 1,324</span>
				<span>작성일 2022-06-09</span>
			</div>
			<div class="classSummary">
				<span>1인분</span>
				<span>난이도 : 중</span>
				<span>강의시간 09분</span>
			</div>
			<div class="classPayment">
				<a href="#" class="payBtn">결제</a>
				<a href="#" class="classLike">
					<img src="${pageContext.request.contextPath}/resources/images/heart1.png">
				</a>
			</div>
		</div>
	</div>
	
	<div class="full classPreview">
		<h3>클래스 미리보기</h3>
		<div class="videoArea">
			<iframe width="800" height="450" src="https://www.youtube.com/embed/p-wwxCllgX0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
		</div>
	</div>
	
	<div class="full classDetail">
		<h3>클래스 상세정보</h3>
		<h2>가정식 한상차림이 가능한<br>일본 요리를 배울 수 있어요.</h2>
		<img src="${pageContext.request.contextPath}/resources/images/class-detail-dummy1.jpg">
		<p>국물없는 우동 요리 - 나고야 마제소바<br>어디에나 잘 어울리는 고소한 고기 볶음 비법을 알려드려요!</p>
		<h2>안녕하세요.<br>요리연구가 김현숙입니다.</h2>
		<img src="${pageContext.request.contextPath}/resources/images/class-detail-dummy2.jpg">
		<p>쿠킹스튜디오 [ 원더쿠킹 ]을 운영하고 있는 요리연구가 김현숙입니다. <br><br>
		칼질부터 재료의 특징을 알려주는 기초 요리 클래스부터 집에서 맛있게 만드는 일상 반찬 클래스, 다양한 세계 요리를 알려주는 세계요리 클래스 등 가르침의 즐거움과 수강생이 주는 행복감을 동시에 느끼며 다양한 요리 수업을 15년 동안 진행하고 있습니다. </p>
		<h2>세계 요리의 '맛'을 재현하는 클래스입니다.</h2>
		<img src="${pageContext.request.contextPath}/resources/images/class-detail-dummy3.jpg">
	</div>
	
	<div class="full curriculum">
		<h3>커리큘럼</h3>
		<div class="video-list">
			<div class="video-title">미리보기 영상 <span>/ 01분</span></div>
			<div class="video-btn">
				<button type="button">무료보기</button>
			</div>
		</div>
		<div class="video-list">
			<div class="video-title">마제소바 <span>/ 05분</span></div>
			<div class="video-btn">
				<button type="button"><i class="bi bi-play-fill"></i></button>
			</div>
		</div>
	</div>
	
	<div class="full review">
		<h3>클래스 리뷰</h3>
		<form name="reviewForm" method="post">
			<div class="addPhoto">
				<img src="${pageContext.request.contextPath}/resources/images/file-attach.gif">
			</div>
			<textarea placeholder="클래스 후기를 남겨주세요."></textarea>
			<button type="button" class="">등록</button>
		</form>
	</div>
	
	<div class="full classQna">
		<h3>클래스 QnA</h3>
		<form name="qnaForm" method="post">
			<textarea placeholder="클래스에 관한 질문을 남겨주세요."></textarea>
			<button type="button" class="">등록</button>
		</form>
	</div>
</div>


