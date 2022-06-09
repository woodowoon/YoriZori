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

.fest-info { display: inline-block; margin-top: 25px; }
.fest-info > ul { display: inline-block; list-style: none; padding-left: 0; }
.fest-info > ul > li { float: left; width: 50%; padding: 0 0 9px 0; display: table; font-size: 15px; font-weight: 400; }
.fest-info > ul > li > strong { float: none; width: 130px; display: table-cell; padding-left: 12px; color: #333; }
.fest-info > ul > li > span { float: none; width: auto; display: table-cell; color: #666; padding-right: 20px; line-height: 1.4; }


</style>

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
		
		<div class="fest-images">
			
		</div>
		
		<div class="fest-contents">
			<span>축제내용</span>
			<div class="fest-desc"><p>안흥 찐빵은 맛있습니다. 그래서 축제를 개최합니다. 다들 오셔서 찐빵 드세요. 안흥 찐빵은 맛있습니다. 그래서 축제를 개최합니다. 다들 오셔서 찐빵 드세요. 안흥 찐빵은 맛있습니다. 그래서 축제를 개최합니다. 다들 오셔서 찐빵 드세요.</p></div>
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
	</div>
</div>