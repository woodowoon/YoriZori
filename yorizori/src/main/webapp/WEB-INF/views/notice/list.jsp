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
    padding: 15px;
    border-radius: 12px;
    background: #FFFFCC;
    line-height: 1em;
    color: #808080;
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
			<h3><img src="${pageContext.request.contextPath}/resources/images/notice.png"> 공지사항 </h3>
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
						<th class="bw-60" style="background: #FFFFCC;">번호</th>
						<th style="background: #FFFFCC;">제목</th>
						<th class="bw-100" style="background: #FFFFCC;">작성자</th>
						<th class="bw-100" style="background: #FFFFCC;">작성일</th>
						<th class="bw-70" style="background: #FFFFCC;">조회수</th>
						<th class="bw-50" style="background: #FFFFCC;">파일</th>
					</tr>
				</thead>
				
				<tbody>
					<c:forEach var="dto" items="${noticeList}">
						<tr>
							<td><span class="badge bg-primary">공지</span></td>
							<td class="left">
								<a href="${articleUrl}&num=${dto.num}" class="text-reset">${dto.subject}</a>
							</td>
							<td>관리자</td>
							<td>${dto.reg_date}</td>
							<td>${dto.hitCount}</td>
							<td>
								<c:if test="${dto.fileCount != 0}">
									<a href="${pageContext.request.contextPath}/notice/zipdownload?num=${dto.num}" class="text-reset"><i class="bi bi-file-arrow-down"></i></a>
								</c:if>
							</td>
						</tr>
					</c:forEach>
									
					<c:forEach var="dto" items="${list}">
						<tr>
							<td>${dto.listNum}</td>
							<td class="left">
								<a href="${articleUrl}&num=${dto.num}" class="text-reset">${dto.subject}</a>
							</td>
							<td>관리자</td>
							<td>${dto.reg_date}</td>
							<td>${dto.hitCount}</td>
							<td>
								<c:if test="${dto.fileCount != 0}">
									<a href="${pageContext.request.contextPath}/notice/zipdownload?num=${dto.num}" class="text-reset"><i class="bi bi-file-arrow-down"></i></a>
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
					<button type="button" class="btn btn-light" onclick="location.href='${pageContext.request.contextPath}/notice/list';">새로고침</button>
				</div>
				<div class="col-6 text-center">
					<form class="row" name="searchForm" action="${pageContext.request.contextPath}/notice/list" method="post">
						<div class="col-auto p-1">
							<select name="condition" class="form-select">
								<option value="all" ${condition=="all"?"selected='selected'":""}>제목+내용</option>
								<option value="userName" ${condition=="userName"?"selected='selected'":""}>작성자</option>
								<option value="reg_date" ${condition=="reg_date"?"selected='selected'":""}>등록일</option>
								<option value="subject" ${condition=="subject"?"selected='selected'":""}>제목</option>
								<option value="content" ${condition=="content"?"selected='selected'":""}>내용</option>
							</select>
						</div>
						<div class="col-auto p-1">
							<input type="text" name="keyword" value="${keyword}" class="form-control">
						</div>
						<div class="col-auto p-1">
							<button type="button" class="btn btn-light" onclick="searchList()" style="padding: 12px;"> <i class="bi bi-search"></i> </button>
						</div>
					</form>
				</div>
				<div class="col text-end">
					<c:if test="${sessionScope.member.role == 0}">
						<button type="button" class="btn btn-light" onclick="location.href='${pageContext.request.contextPath}/notice/write';">글올리기</button>
					</c:if>
				</div>
			</div>

		</div>
	</div>
</div>