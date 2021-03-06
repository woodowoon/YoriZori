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

.contest-col, .box { width: 100%; display: table; table-layout: fixed; }
.contest-col > div, .box > div  { display: table-cell; padding: 16px 0; font-size: 12px; line-height: 18px; color: #5f5f5f; text-align: center; vertical-align: middle; }
.contest-col > .col2, .box > .user { width: 100px; }
.contest-col > .col3, .box > .reg_date { width: 110px; }
.contest-col span { font-weight: bold; line-height: 18px; letter-spacing: -1.2px; }

.contest-list { list-style: none; margin: 0; padding: 0; border: solid #dadada; border-width: 1px 0; }
.in-subject { display: inline-block; max-width: 100%; vertical-align: top; }
.in-subject > a { display: block; overflow: hidden; text-overflow: ellipsis; line-height: 18px; white-space: nowrap; }
.in-subject > a:hover, .in-subject > a:active { text-decoration: none; color: #0d6efd; }

.page-item.active .page-link { background-color: #0095f6; border-color: #0095f6; }
.page-link, .page-link:hover, .page-link:active { color: #0095f6; }

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

<div class="mypage">
	<div class="nav-mypage">
		<div class="btn-menu">
			<button class="btn btn-primary" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasWithBothOptions" aria-controls="offcanvasWithBothOptions">
				<i class="bi bi-list"></i>
			</button>
		</div>
		<div class="mypage-subject">
			????????? ??????
		</div>
	</div>
	<div class="contest-col">
		<div>
			<span>????????? ??????</span>
		</div>
		<div class="col2">
			<span>?????????</span>
		</div>
		<div class="col3">
			<span>?????????</span>
		</div>
	</div>

	<ul class="contest-list">
		<c:choose>
			<c:when test="${list.size() != 0}">
				<c:forEach var="dto" items="${list}">
					<li class="contest">
						<div class="box">
							<div class="subject">
								<div class="in-subject">
									<a href="#">${dto.contestSubject}</a>
								</div>
							</div>
							<div class="user">${dto.userId}</div>
							<div class="reg_date">${dto.reg_date}</div>
						</div>
					</li>
				</c:forEach>
			</c:when>
			<c:otherwise>
				<div style="padding: 50px 0; text-align: center;">????????? ???????????? ????????????.</div>
			</c:otherwise>
		</c:choose>
	</ul>
	
	<div class="page-box">
		${paging}
	</div>
	
	<div class="offcanvas offcanvas-start" data-bs-scroll="true" tabindex="-1" id="offcanvasWithBothOptions" aria-labelledby="offcanvasWithBothOptionsLabel">
		<div class="offcanvas-header">
			<h5 class="offcanvas-title" id="offcanvasWithBothOptionsLabel"  onclick="location.href='${pageContext.request.contextPath}/mypage/main?userId=${sessionScope.member.userId}'">???????????????</h5>
			<button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
		</div>
		
		<div class="offcanvas-body">
	    	<div class="accordion" id="accordionExample">
				<div class="accordion-item">
					<h2 class="accordion-header" id="headingOne">
						<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="false" aria-controls="collapseOne">
				      		??? ??????
				    	</button>
				  	</h2>
				  	<div id="collapseOne" class="accordion-collapse collapse" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
				    	<div class="accordion-body">
				      		<a href="${pageContext.request.contextPath}/member/pwd">??????????????????</a>
				      		<a href="${pageContext.request.contextPath}/member/pwd?dropout">????????????</a>
				    	</div>
				  	</div>
				</div>
				<div class="accordion-item">
				  	<h2 class="accordion-header" id="headingTwo">
				    	<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
				      		??? ?????????
				    	</button>
				  	</h2>
				  	<div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
				    	<div class="accordion-body">
				      		<a href="${pageContext.request.contextPath}/mypage/like">?????? ???????????? ?????????</a>
				      		<a href="${pageContext.request.contextPath}/mypage/wish">?????? ?????? ?????????</a>
				      		<a href="${pageContext.request.contextPath}/mypage/favorite">?????? ?????? ????????? ??????</a>
				      	</div>
				  	</div>
				</div>
				<div class="accordion-item">
				  	<h2 class="accordion-header" id="headingThree">
				    	<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
				      		?????????
				    	</button>
				  	</h2>
				  	<div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
				    	<div class="accordion-body">
				    		<a href="${pageContext.request.contextPath}/mypage/order">?????? ??????</a>
				    		<a href="${pageContext.request.contextPath}/mypage/refund">?????? ??????</a>
				      		
				      		<a href="${pageContext.request.contextPath}/mypage/sell">?????? ??????</a>
				      		
				      	</div>
				    </div>
				</div>
				<div class="accordion-item">
				  	<h2 class="accordion-header" id="headingFour">
				    	<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
				      		?????????
				    	</button>
				  	</h2>
				  	<div id="collapseFour" class="accordion-collapse collapse" aria-labelledby="headingFour" data-bs-parent="#accordionExample">
				    	<div class="accordion-body">
				      		<a href="${pageContext.request.contextPath}/mypage/contest">?????? ????????? ?????????</a>
				      		<a href="${pageContext.request.contextPath}/mypage/coupon">????????? </a>
				      	</div>
				    </div>
				</div>
				<div class="accordion-item">
				  	<h2 class="accordion-header" id="headingFive">
				    	<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFive" aria-expanded="false" aria-controls="collapseFive">
				      		?????? ??????
				    	</button>
				  	</h2>
				  	<div id="collapseFive" class="accordion-collapse collapse" aria-labelledby="headingFive" data-bs-parent="#accordionExample">
				    	<div class="accordion-body">
				      		<a href="${pageContext.request.contextPath}/mypage/qna">1:1 ??????</a>
				      	</div>
				    </div>
				</div>
			</div>
		</div>
	</div>
</div>