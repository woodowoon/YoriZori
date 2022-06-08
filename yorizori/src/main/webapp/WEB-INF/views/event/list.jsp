<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<style type="text/css">
* {
	padding: 0; margin: 0;
	box-sizing: border-box;
}

.event {
    font-size: 24px;
    font-weight: bold;
    color: rgb(26, 26, 26);
    line-height: 34px;
    letter-spacing: -0.4px;
    margin: 30px auto;
}

.category {
	position: relative;
    overflow: hidden;
    flex: 0 0 auto;
    -webkit-box-pack: center;
    justify-content: center;
    -webkit-box-align: center;
    align-items: center;
    color: rgb(26, 26, 26);
    cursor: pointer;
    font-size : 25px;
}

span {
    padding-left: 16px;
    padding-right: 16px;
    border-radius: 20px;
    background-color: #E7E7E7;
    line-height: 34px;
    letter-spacing: -0.4px;
    margin: 30px auto;
	width: 980px;
}

body {
	font-size: 14px;
	font-family: "Malgun Gothic", "맑은 고딕", NanumGothic, 나눔고딕, 돋움, sans-serif;
	display: flex;
    align-items: flex-start;
    flex-direction: column;
}

main {
	margin: 30px auto;
	width: 980px;
	min-height: 500px;
}

.item-container {
	width: 100%;
	display: grid;
	grid-template-rows: repeat(3, 1fr);
	grid-template-columns: repeat(3, 270px);
	gap: 10px; 
}

.item {
	cursor: pointer;
	border: 1px solid #eee;
	height: 280px;
	
	display: flex;
	flex-direction:column;
	justify-content: space-between;
}

.item:hover {
	border: 1px solid #ccc;
}

.item-thumb img {
	display: block;
	width: 100%;
	height: 179px;
}

.item-desc {
	margin: 10px;
}

.item-desc .title {
	font-size: 17px;
	font-weight: 700;
	letter-spacing: -1px;
	height: 45px;
}
.item-desc .date {
	font-size: 12px;
	font-weight: 500;
}

</style>

<body>
	<div class="event">
	<h2>이벤트</h2>
	</div>
	
	<div class='category'>
	<p><span>전체</span>
	<span>진행중인이벤트</span>
	<span>종료된이벤트</span>
	<span>공모전</span>
	<span>공모전발표</span></p>
	
	</div>

<main>
	<div class="item-container">
		<div class="item">
			<div class="item-thumb">
				<img src="${pageContext.request.contextPath}/resources/images/salad.jpg">
			</div>
			
			<div class="item-desc">
				<p class="title">카카오페이로 결제하면 최대 1 만원 추가할인 !</p>
				<p class="date">22.06.03(금) ~ 22.06.03(목)</p>
			</div>
		</div>
		
		<div class="item">
			<div class="item-thumb">
				<img src=""> 
			</div>
			<div class="item-desc">
				<p class="title">${dto.subject}</p>
				<p class="date">${dto.content}</p>
			</div>
		</div>
		
		<div class="page-box">
		 ${dataCount == 0 ? "등록된 게시물이 없습니다." : paging}
		</div>
		
	</div>
</main>

</body>   