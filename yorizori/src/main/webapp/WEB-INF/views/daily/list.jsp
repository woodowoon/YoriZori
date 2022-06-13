<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<style type="text/css">
.body-container {
	max-width: 800px;
}

.item {
	min-height: 230px;
}

h3 img {
	width: 23%;
}

.btn {
    padding: 10px;
    border-radius: 12px;
    background: #f44502;
    line-height: 1em;
    color: #fff;
    text-align: center;
    margin-right: 0;	
}

.col {
	line-height: 40px;
}
</style>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/boot-board.css" type="text/css">

<script type="text/javascript">
function searchList() {
	const f = document.searchForm;
	f.submit();
}
</script>

<div class="container">
	<div class="body-container">	
		<div class="body-title">
			<h3><img src="${pageContext.request.contextPath}/resources/images/dailycook.png"> DAILY COOK </h3>
		</div>
		
		<div class="body-main">

	        <div class="row board-list-header">
	            <div class="col-auto me-auto">
	            	${dataCount}개(${page}/${total_page} 페이지)
	            </div>
	            <div class="col-auto">&nbsp;</div>
	        </div>				
			
			<table class="table table-hover board-list">
				<thead class="table-light">
					<tr>
						<th class="bw-60">번호</th>
						<th>제목</th>
						<th class="bw-100">작성자</th>
						<th class="bw-70">조회수</th>
						<th class="bw-50">파일</th>
					</tr>
				</thead>
				
				<tbody>
					<c:forEach var="dto" items="${list}">
						<tr>
							<td>${dto.listNum}</td>
							<td class="left">
								<a href="${articleUrl}&dailyNum=${dto.dailyNum}" class="text-reset">${dto.subject}</a>
								<c:if test="${dto.replyCount!=0}">(${dto.replyCount})</c:if>
							</td>
							<td>${dto.userName}</td>
							<td>${dto.hitCount}</td>
							<td>
								<c:if test="${not empty dto.dailyPhotoName}">
								<i class="bi bi-file-arrow-down"></i>
								</c:if>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			
			<div class="page-box">
				${dataCount == 0 ? "등록된 게시물이 없습니다." : paging}
			</div>

			<div class="row board-list-footer">
				<div class="col">
					<button type="button" class="btn btn-light" onclick="location.href='${pageContext.request.contextPath}/daily/list';">새로고침</button>
				</div>
				<div class="col-6 text-center">
					<form class="row" name="searchForm" action="${pageContext.request.contextPath}/daily/list" method="post">
						<div class="col-auto p-1">
							<select name="condition" class="form-select">
								<option value="all" ${condition=="all"?"selected='selected'":""}>제목+내용</option>
								<option value="userName" ${condition=="userName"?"selected='selected'":""}>작성자</option>
								<option value="subject" ${condition=="subject"?"selected='selected'":""}>제목</option>
								<option value="dailyContent" ${condition=="dailyContent"?"selected='selected'":""}>내용</option>
							</select>
						</div>
						<div class="col-auto p-1">
							<input type="text" name="keyword" value="${keyword}" class="form-control">
						</div>
						<div class="col-auto p-1">
							<button type="button" class="btn btn-light" onclick="searchList()"> <i class="bi bi-search"></i> </button>
						</div>
					</form>
				</div>
				<div class="col text-end">
					<button type="button" class="btn btn-light" onclick="location.href='${pageContext.request.contextPath}/daily/write';">글올리기</button>
				</div>
			</div>

		</div>
	</div>
</div>	