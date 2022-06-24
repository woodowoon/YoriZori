<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:forEach var="vo" items="${listReplyAnswer}">
	<div class='border-bottom m-1'>
		<div class='row p-1'>
			<div class='col-auto'>
				<div class='row reply-writer'>
					<div class='col-1'><i class='bi bi-person-circle text-muted icon'></i></div>
					<div class='col ms-2 align-self-center'>
						<div class='name'>${vo.nickName}</div>
						<div class='date'>${vo.commentReg_date}</div>
					</div>
				</div>
			</div>
			<div class='col align-self-center text-end'>
				<span class='reply-dropdown'><i class='bi bi-three-dots-vertical'></i></span>
				<div class='reply-menu'>
					<c:choose>
						<c:when test="${sessionScope.member.userId==vo.userId}">
							<div class='deleteReplyAnswer reply-menu-item' data-replyNum='${vo.recipeCommentNum}' data-answer='${vo.parentCommentNum}'>삭제</div>
							<div class='hideReplyAnswer reply-menu-item'>숨김</div>
						</c:when>
						<c:when test="${sessionScope.member.role==0 }">
							<div class='deleteReplyAnswer reply-menu-item' data-replyNum='${vo.recipeCommentNum}' data-answer='${vo.parentCommentNum}'>삭제</div>
							<div class='hideReply reply-menu-item'>숨김</div>
						</c:when>
						<c:otherwise>
							<div class='notifyReplyAnswer reply-menu-item'>신고</div>
							<div class='hideReply reply-menu-item'>숨김</div>
						</c:otherwise>
					</c:choose>
				</div>
			</div>
		</div>

		<div class='p-2'>
			${vo.commentContent}
		</div>
	</div>
</c:forEach>
