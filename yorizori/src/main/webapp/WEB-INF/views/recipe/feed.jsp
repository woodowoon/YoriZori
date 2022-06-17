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

main {
	font-family: 'Noto Sans KR', sans-serif;
}

.feed * { box-sizing: border-box; padding: 0; margin: 0; }
.feed { width: 600px; margin: 0 auto; }
.feed img { width: 100%; }
.feed .img-area { width: 100%; }
.feed .img-area p { font-size: 18px; border: 1px solid #fff; border-bottom: none; padding: 10px; }
.feed .float { float: left; margin-top: 10px; overflow: hidden; }


.feed .text-area { width: 100%; }
.feed .text-area > a { font-size: 24px; font-weight: 700; display: block; }
.feed .text-area > a:hover { color: #000; text-decoration: none; }
.feed .text-area .likes { display: inline-block; }
.feed .text-area .likes button { width: 35px; border: none; background: #fff; }
.feed .text-area .likes span {  }

</style>




<div class="feed">
	<c:forEach var="dto" items="${list}">
		
		<div class="img-area">
			<c:choose>
				<c:when test="${dto.memberImageName eq null}">
					<img class = "float" src="https://blog.kakaocdn.net/dn/wn8ds/btq5u4RsTuG/7KMKUbqv3CLSbdigBxxnJ0/img.png" style="width: 30px">		
				</c:when>
				<c:otherwise>
					<img class = "float" src="${pageContext.request.contextPath}/uploads/photo/${dto.memberImageName}" style="width: 30px">
				</c:otherwise>
			</c:choose>   
			<p> ${dto.nickName} </p>
			<div class="img-box">
				<img class = "float" src="${pageContext.request.contextPath}/uploads/recipe/${dto.imageFilename}" style="height: 700px; object-fit: cover;">
			</div>
		</div>
		
		<div class="text-area">
			<!-- 좋아요X <i style="color: #5D5D5D; font-size: 1.5rem;" class="bi bi-heart"></i>  -->
			<!-- 좋아요O -->
			<i style="color: red; font-size: 1.4rem;" class="bi bi-heart-fill"></i>
				<span>좋아요 ${dto.recipeLikeCount}개</span>
			<a href="${articleUrl}?recipeNum=${dto.recipeNum}">${dto.recipeSubject}</a>
			<div class="likes">
				
				<button type="button" onclick="">
					<!-- 클릭하면서 좋아요 풀리고 좋아요 되는 -->
				</button>
				
			</div>
		</div>
		
	</c:forEach>
	<div class="page-box">
		${dataCount == 0 ? '등록된 레시피가 없습니다.' : paging}
	</div>
	
</div>



