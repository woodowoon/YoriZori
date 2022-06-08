<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<style type="text/css">
.body-container {
	max-width: 800px;
}

h3 img {
	width: 7%;
}
</style>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/boot-board.css" type="text/css">

<script type="text/javascript">

</script>

<div class="container">
	<div class="body-container">	
		<div class="body-title">
			<h3> <img src="${pageContext.request.contextPath}/resources/images/dailyarticle.png"> DAILY COOK 오늘의 한 끼  </h3>
		</div>
		
		<div class="body-main">

			<table class="table mb-0">
				<thead>
					<tr>
						<td colspan="2" align="center">
							제목
						</td>
					</tr>
				</thead>
				
				<tbody>
					<tr>
						<td width="50%">
							이름 : 						
						</td>
						<td align="right">
						
						</td>
					</tr>

					<tr>
						<td colspan="2" style="border-bottom: none;">
							<img src="" 
								class="img-fluid img-thumbnail w-100 h-auto">
						</td>
					</tr>
											
					<tr>
						<td colspan="2">
							내용
						</td>
					</tr>
					
					<tr>
						<td colspan="2">
							이전글 :
							<c:if test="">
								<a href=""></a>
							</c:if>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							다음글 :
							<c:if test="">
								<a href=""></a>
							</c:if>
						</td>
					</tr>
				</tbody>
			</table>
			
			<table class="table table-borderless">
				<tr>
					<td width="50%">
						<c:choose>
							<c:when test="">
								<button type="button" class="btn btn-light" onclick="">수정</button>
							</c:when>
							<c:otherwise>
								<button type="button" class="btn btn-light" disabled="disabled">수정</button>
							</c:otherwise>
						</c:choose>
				    	
						<c:choose>
				    		<c:when test="">
				    			<button type="button" class="btn btn-light" onclick="deleteOk();">삭제</button>
				    		</c:when>
				    		<c:otherwise>
				    			<button type="button" class="btn btn-light" disabled="disabled">삭제</button>
				    		</c:otherwise>
				    	</c:choose>
					</td>
					<td class="text-end">
						<button type="button" class="btn btn-light" onclick="">리스트</button>
					</td>
				</tr>
			</table>

		</div>
	</div>
</div>