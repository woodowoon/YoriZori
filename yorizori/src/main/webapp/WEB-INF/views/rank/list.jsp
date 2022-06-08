<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<style>
@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap');

* {
	font-family: 'Noto Sans KR', sans-serif;
}
.clearFix:after { content: ''; display: block; clear: both; }
li { list-style: none; }
.ranking * { box-sizing: border-box; padding: 0; margin: 0; }
.ranking { background: #f1f1f2; padding: 20px 0; }
.ranking .full { width: 1320px; background: #fff; border: 1px solid #e6e7e8; padding: 0 30px; margin: 0 auto; }
.ranking .full h3 { font-size: 30px; font-family: 'GmarketSansBold', sans-serif; margin: 30px 0 20px; }
.ranking .full .choice { border-bottom: 1px solid #ccc; }
.ranking .full .choice li { float: left; }
.ranking .full .choice li a { display: block; font-size: 17px; padding: 14px 38px; }
.ranking .full .choice li.active a { border: 1px solid #ccc; border-bottom: 1px solid #fff; font-weight: 500; margin-bottom: -1px; }
.ranking .full .choice li a:hover { color: #333; text-decoration: none; }

.ranking .full .rank-list { margin: 40px 0px 20px 35px; }
.ranking .full .rank-list li { position: relative; float: left; width: 282px; margin: 0 20px 40px 0; }
.ranking .full .rank-box {
	position: absolute; top: -8px; left: -8px;
	background: #fff; border: 1px solid #bbb; 
	-webkit-box-shadow: 3px 3px 0 rgb(0 0 0 / 8%); box-shadow: 3px 3px 0 rgb(0 0 0 / 8%);
	min-width: 36px;
	text-align: center;
	border-radius: 4px;
	line-height: 1;
	padding: 10px 7px 10px;
	letter-spacing: -0.03em;
	vertical-align: unset;
}
.ranking .full .rank-list li a img { width: 100%; }
.ranking .full .rank-list p { font-size: 15px; margin: 14px 0px 8px 2px; }
.ranking .full .rank-list .profile > div { display: inline-block; width: 25px; height: 25px; border-radius: 50%; background: #f1f1f2; margin-right: 6px; }
.ranking .full .rank-list .profile span { font-size: 14px; vertical-align: top; }
.ranking .full .rank-list .info { margin-top: 3px; }
.ranking .full .rank-list .info img { width: 25px; margin-right: 6px; }
.ranking .full .rank-list .info span { font-size: 13px; color: #999; vertical-align: middle; }
.ranking .full .chef-list { padding: 40px 0px 20px 128px; }
.ranking .full .chef-list li { position: relative; float: left; margin: 2px 45px 24px; }
.ranking .full .chef-list li div { width: 108px; }
.ranking .full .chef-list li div img { width: 100%; border-radius: 50%; }
.ranking .full .chef-list li div a { display: block; font-size: 16px; text-align: center; padding: 8px 0; }
.ranking .full .chef-list li div a:hover { text-decoration: none; }

</style>

<div class="ranking">
	<div class="full">
		<h3>랭킹</h3>
		<ul class="choice clearFix">
			<li class="active"><a href="#">레시피</a></li>
			<li><a href="#">쉐프</a></li>
		</ul>
		<ul class="rank-list clearFix">
			<li>
				<span class="rank-box">1</span>
				<div>
					<a href="#">
						<img src="${pageContext.request.contextPath}/resources/images/rank1.jpg">
					</a>
					<p>마늘장아찌 깐마늘장아찌 만드는법 레시피</p>
					<div class="profile">
						<div>
							
						</div>
						<span>햇살머금은집</span>
					</div>
					<div class="info">
						<img src="${pageContext.request.contextPath}/resources/images/heart2.png">
						<span>좋아요 (1,559)</span>
					</div>
				</div>
			</li>
			<li>
				<span class="rank-box">2</span>
				<div>
					<a href="#">
						<img src="${pageContext.request.contextPath}/resources/images/rank2.jpg">
					</a>
					<p>잔치국수 양념장 황금레시피 이렇게~</p>
					<div class="profile">
						<div>
							
						</div>
						<span>완소꽃남매</span>
					</div>
					<div class="info">
						<img src="${pageContext.request.contextPath}/resources/images/heart2.png">
						<span>좋아요 (1,113)</span>
					</div>
				</div>
			</li>
			<li>
				<span class="rank-box">3</span>
				<div>
					<a href="#">
						<img src="${pageContext.request.contextPath}/resources/images/rank3.jpg">
					</a>
					<p>요리초보도 실패없는 백종원 오이소박이</p>
					<div class="profile">
						<div>
							
						</div>
						<span>뽀유TV</span>
					</div>
					<div class="info">
						<img src="${pageContext.request.contextPath}/resources/images/heart2.png">
						<span>좋아요 (959)</span>
					</div>
				</div>
			</li>
			<li>
				<span class="rank-box">4</span>
				<div>
					<a href="#">
						<img src="${pageContext.request.contextPath}/resources/images/rank4.jpg">
					</a>
					<p>부대찌개 양념 만드는법 홀릭되는 맛임</p>
					<div class="profile">
						<div>
							
						</div>
						<span>블레스그레이스</span>
					</div>
					<div class="info">
						<img src="${pageContext.request.contextPath}/resources/images/heart2.png">
						<span>좋아요 (845)</span>
					</div>
				</div>
			</li>
		</ul>
		
		<ul class="chef-list clearFix">
			<li>
				<span class="rank-box">1</span>
				<div>
					<img src="${pageContext.request.contextPath}/resources/images/chef-rank-dummy.png">
				</div>
				<div>
					<a href="#">뽀유TV</a>
				</div>
			</li>
			<li>
				<span class="rank-box">2</span>
				<div>
					<img src="${pageContext.request.contextPath}/resources/images/chef-rank-dummy.png">
				</div>
				<div>
					<a href="#">뽀유TV</a>
				</div>				
			</li>
			<li>
				<span class="rank-box">3</span>
				<div>
					<img src="${pageContext.request.contextPath}/resources/images/chef-rank-dummy.png">
				</div>
				<div>
					<a href="#">뽀유TV</a>
				</div>				
			</li>
			<li>
				<span class="rank-box">4</span>
				<div>
					<img src="${pageContext.request.contextPath}/resources/images/chef-rank-dummy.png">
				</div>
				<div>
					<a href="#">뽀유TV</a>
				</div>				
			</li>
			<li>
				<span class="rank-box">5</span>
				<div>
					<img src="${pageContext.request.contextPath}/resources/images/chef-rank-dummy.png">
				</div>
				<div>
					<a href="#">뽀유TV</a>
				</div>				
			</li>
		</ul>
	</div>
</div>