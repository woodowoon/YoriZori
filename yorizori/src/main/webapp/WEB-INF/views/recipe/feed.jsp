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

.feed .img-box img:hover {
	filter: brightness(70%);
}
</style>


<script type="text/javascript">

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




</script>

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
			<p><a href="${pageContext.request.contextPath}/mypage/main?userId=${dto.userId}"> ${dto.nickName} </a> </p>
			
			<div class="img-box">
				<img class = "float" onclick="href='${articleUrl}?recipeNum=${dto.recipeNum}';" src="${pageContext.request.contextPath}/uploads/recipe/${dto.imageFilename}" style="height: 700px; object-fit: cover;">
			</div>
			
		</div>
		
		<div class="text-area">
			<c:choose>
				<c:when test="${dto.userRecipeLike == 0}">
					<!-- 좋아요X -->
					<i style="color: #5D5D5D; font-size: 1.5rem;" class="bi bi-heart"></i>  
				</c:when>
				<c:otherwise>
					<!-- 좋아요O -->
					<i style="color: red; font-size: 1.4rem;" class="bi bi-heart-fill"></i>
				</c:otherwise>
			</c:choose>
				<span>좋아요 ${dto.recipeLikeCount}개</span>
			<a href="${articleUrl}recipeNum=${dto.recipeNum}">${dto.recipeSubject}</a>
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



