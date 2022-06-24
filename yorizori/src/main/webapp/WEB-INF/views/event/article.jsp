<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<style type="text/css">
.body-container {
	max-width: 800px;
}
</style>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/boot-board.css" type="text/css">

<script type="text/javascript">
<c:if test="${sessionScope.member.userId==dto.userId || sessionScope.member.role==0}">
	function deleteOk(num, mode) {
	    if(confirm("게시글을 삭제 하시 겠습니까 ? ")) {
	    	let query = "num="+num+"&mode="+mode+"&${query}";
		    let url = "${pageContext.request.contextPath}/event/delete?" + query;
	    	location.href = url;
		}
	}
</c:if>
</script>

<script type="text/javascript">
function login() {
	location.href="${pageContext.request.contextPath}/member/login";
}

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

<body>
	<div class="event">
	<h2>이벤트</h2>
	</div>
</body>

<div class="e-container">
	<div class="event-title">
		<div class="body-container">
			<h3><i class="icofont-sale-discount"></i>할인 이벤트</h3>
		</div>
		<div class="body-main">
				
			<table class="table mb-0">
				<thead>
					<tr>
						<td colspan="2" align="center">
							${dto.subject}
						</td>
					</tr>
					<tr>
						<td style="text-align: center;">
							${dto.startTime} ~ ${dto.expireTime}
						</td>
					</tr>
				</thead>
				
				<tbody>
					<tr>
						<td width="50%">
						이름 : 
							<c:choose>
									<c:when test="${sessionScope.member.role == 0 }">${dto.userName}</c:when>
									<c:otherwise>관리자</c:otherwise>
							</c:choose>	
						</td>
						<td align="right">
							${dto.reg_date} | 조회 ${dto.hitCount}
						</td>		
					</tr>
					
					<tr>
						<td>${dto.content}</td>
					</tr>
				</tbody>
			</table>
			
			<table class="table table-borderless">
				<tr>
					<td width="50%">
						<c:choose>
							<c:when test="${sessionScope.member.userId==dto.userId}">
								<button type="button" class="btn btn-light" onclick="location.href='${pageContext.request.contextPath}/event/update?num=${dto.num}&page=${page}';">수정</button>
							</c:when>
							<c:otherwise>
								<button type="button" class="btn btn-light" disabled="disabled">수정</button>
							</c:otherwise>
						</c:choose>
				    	
						<c:choose>
				    		<c:when test="${sessionScope.member.role == 0}">
				    			<button type="button" class="btn btn-light" onclick="deleteOk();">삭제</button>
				    		</c:when>
				    		<c:otherwise>
				    			<button type="button" class="btn btn-light" disabled="disabled">삭제</button>
				    		</c:otherwise>
				    	</c:choose>
					</td>
					<td class="text-end">
						<button type="button" class="btn btn-light" onclick="location.href='${pageContext.request.contextPath}/event/list?${query}';">리스트</button>
					</td>
				</tr>
			</table>
		</div>
	</div>	
</div>
