<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700&display=swap" rel="stylesheet">

<style type="text/css">
main { background-color: #fff; font-family: 'Noto Sans KR', sans-serif; color: #000000; letter-spacing: -0.03em; }
.mypage { background: #fff; width: 1000px; margin: 0 auto; }

.nav-mypage { display: flex; padding: 15px 25px; border-bottom: 2px solid #383d4a; }
.mypage-subject { width: 100%; text-align: center; padding-right: 42px; font-size: 20px; line-height: 38px; }

.couponMenu { list-style: none; overflow: hidden; position: relative; padding: 0; margin: 0; }
.couponMenu:before { position: absolute; left: 0; right: 0; bottom: 0; height: 1px; background-color: #d4d4d4; content: ''; }
.usableTab, .uselessTab { float: left; margin-left: -1px; position: relative; border-style: solid; border-width: 0 1px 1px; border-color: transparent #edeeef #d4d4d4; letter-spacing: -1px; color: #20232c; }
.couponMenu > li:first-child { margin-left: 0; border-left: none; }
.couponMenu > li.selected { border-color: transparent #ddd #fff; z-index: 10; }
.couponMenu > li > a { display: block; height: 38px; padding: 0 45px; line-height: 38px; color: #20232c; text-align: center; text-decoration: none; }
.couponMenu > li.selected > a { font-weight: bold; }
.usableDiv { display: inline-block; width: 100%; min-height: 370px; }
.uselessDiv { display: none; width: 100%; min-height: 370px; }
.coupon-list { margin: 16px -2px 0 0; list-style: none; padding: 0; }
.coupon-list > li { float: left; width: 300px; margin: 3px 49px 32px 0; box-sizing: border-box; padding: 0 4px; border: 2px solid #d4d4d4; }
.coupon-list > li:nth-child(3n) { margin-right: 0; }
.coupon-box { position: relative; display: block; height: 134px; padding: 25px 0 25px 24px; font-size: 13px; text-decoration: none; color: #20232c; cursor: pointer; }
.coupon-detail { margin: 0; line-height: 20px; }
.coupon-detail > dt { font-size: 15px; line-height: 19px; letter-spacing: -1px; color: #20232c; }
.name { overflow: hidden; text-overflow: ellipsis; width: 180px; max-height: 38px; font-weight: 700; }
.sale { display: block; margin-top: 15px; font-size: 36px; font-weight: bold; line-height: 19px; letter-spacing: -1px; color: #20232c; }
.sale > span { display: inline-block; margin: 3px 0 0 3px; font-size: 20px; vertical-align: top; }
dd { margin: 0; position: absolute; left: 26px; bottom: 23px; }
dd > p { margin: 0; color: #666; line-height: 19px; }

.offcanvas-title { cursor: pointer; }
.offcanvas-title:hover, .offcanvas-title:active { color: #0d6efd; }
.offcanvas-start { width: 300px; border-right: none; }
.offcanvas-backdrop.show { opacity: .1; }

.accordion-button { padding: 10px 15px; font-size: 14px; }
.accordion-button:not(.collapsed) { color: #212529; }
.accordion-button:focus { box-shadow: inset 0 -1px 0 rgb(0 0 0 / 13%); }
.accordion-body { display: grid; padding: 10px 20px; }
.accordion-body > a { padding: 5px 0; text-decoration: none; font-size: 13px; }
.accordion-body > a:hover, a:active { color: #0d6efd; }
.btn-primary { padding: 3px 10px; font-size: 20px; background-color: #0095f6; border-color: #0095f6; }
.btn-primary:focus, .btn-primary:hover { background-color: #0095f6; border-color: #0095f6; box-shadow: 0 0 0 0; }
</style>

<script type="text/javascript">
function usableClick() {
	document.getElementById('usableDiv').style.display = 'inline-block'
	document.getElementById('usableTab').className += ' selected';
	document.getElementById('uselessDiv').style.display = 'none'
	document.getElementById('uselessTab').className = 'uselessTab';
};

function uselessClick() {
	document.getElementById('uselessDiv').style.display = 'inline-block'
	document.getElementById('uselessTab').className += ' selected';
	document.getElementById('usableDiv').style.display = 'none'
	document.getElementById('usableTab').className = 'usableTab';
};
</script>

<div class="mypage">
	<div class="nav-mypage">
		<div class="btn-menu">
			<button class="btn btn-primary" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasWithBothOptions" aria-controls="offcanvasWithBothOptions">
				<i class="bi bi-list"></i>
			</button>
		</div>
		<div class="mypage-subject">
			쿠폰함
		</div>
	</div>

	<ul class="couponMenu">
		<li id="usableTab" class="usableTab selected">
			<a class="usableLink" onclick="usableClick();">사용 가능한 쿠폰</a>
		</li>
		<li id="uselessTab" class="uselessTab">
			<a class="uselessLink" onclick="uselessClick();">사용 종료된 쿠폰</a>
		</li>
	</ul>
	
	<div id="usableDiv" class="usableDiv">
		<ul class="coupon-list">
		
			<li>
				<div class="coupon-box">
					<dl class="coupon-detail">
						<dt>
							<span class="name">냥냥클래스 할인쿠폰</span>
							<span class="sale">
								10%
								<span>할인</span>
							</span>
						</dt>
						<dd>
							<p>
								2022.06.18 ~ 2022.07.01
							</p>
						</dd>
					</dl>
				</div>
			</li>
			<li>
				<div class="coupon-box">
					<dl class="coupon-detail">
						<dt>
							<span class="name">냥냥클래스 할인쿠폰</span>
							<span class="sale">
								10%
								<span>할인</span>
							</span>
						</dt>
						<dd>
							<p>
								2022.06.18 ~ 2022.07.01
							</p>
						</dd>
					</dl>
				</div>
			</li>
			<li>
				<div class="coupon-box">
					<dl class="coupon-detail">
						<dt>
							<span class="name">냥냥클래스 할인쿠폰</span>
							<span class="sale">
								10%
								<span>할인</span>
							</span>
						</dt>
						<dd>
							<p>
								2022.06.18 ~ 2022.07.01
							</p>
						</dd>
					</dl>
				</div>
			</li>
			<li>
				<div class="coupon-box">
					<dl class="coupon-detail">
						<dt>
							<span class="name">냥냥클래스 할인쿠폰</span>
							<span class="sale">
								10%
								<span>할인</span>
							</span>
						</dt>
						<dd>
							<p>
								2022.06.18 ~ 2022.07.01
							</p>
						</dd>
					</dl>
				</div>
			</li>
			<li>
				<div class="coupon-box">
					<dl class="coupon-detail">
						<dt>
							<span class="name">냥냥클래스 할인쿠폰</span>
							<span class="sale">
								10%
								<span>할인</span>
							</span>
						</dt>
						<dd>
							<p>
								2022.06.18 ~ 2022.07.01
							</p>
						</dd>
					</dl>
				</div>
			</li>
			
		</ul>
	</div>
	
	<div id="uselessDiv" class="uselessDiv">
		<ul class="coupon-list">
		
			<li>
				<div class="coupon-box">
					<dl class="coupon-detail">
						<dt>
							<span class="name">냥냥클래스 할인쿠폰</span>
							<span class="sale">
								10%
								<span>할인</span>
							</span>
						</dt>
						<dd>
							<p>
								2022.06.18 ~ 2022.07.01
							</p>
						</dd>
					</dl>
				</div>
			</li>
			<li>
				<div class="coupon-box">
					<dl class="coupon-detail">
						<dt>
							<span class="name">냥냥클래스 할인쿠폰</span>
							<span class="sale">
								10%
								<span>할인</span>
							</span>
						</dt>
						<dd>
							<p>
								2022.06.18 ~ 2022.07.01
							</p>
						</dd>
					</dl>
				</div>
			</li>
			<li>
				<div class="coupon-box">
					<dl class="coupon-detail">
						<dt>
							<span class="name">냥냥클래스 할인쿠폰</span>
							<span class="sale">
								10%
								<span>할인</span>
							</span>
						</dt>
						<dd>
							<p>
								2022.06.18 ~ 2022.07.01
							</p>
						</dd>
					</dl>
				</div>
			</li>
			
		</ul>
	</div>
	
	<div class="offcanvas offcanvas-start" data-bs-scroll="true" tabindex="-1" id="offcanvasWithBothOptions" aria-labelledby="offcanvasWithBothOptionsLabel">
		<div class="offcanvas-header">
			<h5 class="offcanvas-title" id="offcanvasWithBothOptionsLabel"  onclick="location.href='${pageContext.request.contextPath}/mypage/main?userId=${sessionScope.member.userId}'">마이페이지</h5>
			<button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
		</div>
		
		<div class="offcanvas-body">
	    	<div class="accordion" id="accordionExample">
				<div class="accordion-item">
					<h2 class="accordion-header" id="headingOne">
						<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="false" aria-controls="collapseOne">
				      		내 정보
				    	</button>
				  	</h2>
				  	<div id="collapseOne" class="accordion-collapse collapse" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
				    	<div class="accordion-body">
				      		<a href="${pageContext.request.contextPath}/mypage/modify">회원정보수정</a>
				      		<a href="${pageContext.request.contextPath}/mypage/cancel">회원탈퇴</a>
				    	</div>
				  	</div>
				</div>
				<div class="accordion-item">
				  	<h2 class="accordion-header" id="headingTwo">
				    	<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
				      		내 관심사
				    	</button>
				  	</h2>
				  	<div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
				    	<div class="accordion-body">
				      		<a href="${pageContext.request.contextPath}/mypage/like">내가 좋아요한 레시피</a>
				      		<a href="${pageContext.request.contextPath}/mypage/wish">내가 찜한 클래스</a>
				      		<a href="${pageContext.request.contextPath}/mypage/favorite">내가 관심 등록한 축제</a>
				      	</div>
				  	</div>
				</div>
				<div class="accordion-item">
				  	<h2 class="accordion-header" id="headingThree">
				    	<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
				      		클래스
				    	</button>
				  	</h2>
				  	<div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
				    	<div class="accordion-body">
				    		<a href="${pageContext.request.contextPath}/mypage/order">주문 내역</a>
				    		<a href="${pageContext.request.contextPath}/mypage/refund">환불 내역</a>
				      		
				      		<a href="${pageContext.request.contextPath}/mypage/sell">판매 내역</a>
				      		
				      	</div>
				    </div>
				</div>
				<div class="accordion-item">
				  	<h2 class="accordion-header" id="headingFour">
				    	<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
				      		이벤트
				    	</button>
				  	</h2>
				  	<div id="collapseFour" class="accordion-collapse collapse" aria-labelledby="headingFour" data-bs-parent="#accordionExample">
				    	<div class="accordion-body">
				      		<a href="${pageContext.request.contextPath}/mypage/contest">내가 참여한 공모전</a>
				      		<a href="${pageContext.request.contextPath}/mypage/coupon">쿠폰함 </a>
				      	</div>
				    </div>
				</div>
				<div class="accordion-item">
				  	<h2 class="accordion-header" id="headingFive">
				    	<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFive" aria-expanded="false" aria-controls="collapseFive">
				      		문의 내역
				    	</button>
				  	</h2>
				  	<div id="collapseFive" class="accordion-collapse collapse" aria-labelledby="headingFive" data-bs-parent="#accordionExample">
				    	<div class="accordion-body">
				      		<a href="${pageContext.request.contextPath}/mypage/qna">1:1 문의</a>
				      	</div>
				    </div>
				</div>
			</div>
		</div>
	</div>
</div>