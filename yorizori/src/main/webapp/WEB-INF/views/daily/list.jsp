<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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

</script>

<div class="container">
	<div class="body-container">	
		<div class="body-title">
			<h3><img src="${pageContext.request.contextPath}/resources/images/dailycook.png"> DAILY COOK </h3>
		</div>
		
		<div class="body-main">

	        <div class="row board-list-header">
	            <div class="col-auto me-auto">
	            	0개(0/0 페이지)
	            </div>
	            <div class="col-auto">&nbsp;</div>
	        </div>				
			
	
			 <div class="row">
			 	<c:forEach var="dto" items="" varStatus="status">
			 		<div class="col-md-4 col-lg-3 p-1 item">
			 			<a href="" title="">
			 				<img class="img-fluid img-thumbnail w-100 h-100" src="">
			 			</a>
					</div>
			 	</c:forEach>
			 </div>
			
			<div class="page-box">
				${dataCount == 0 ? "등록된 게시물이 없습니다." : paging}
			</div>

			<div class="row board-list-footer">
				<div class="col">
					<button type="button" class="btn btn-light" onclick="">새로고침</button>
				</div>
				<div class="col-6 text-center">
					<form class="row" name="searchForm" action="" method="post">
						<div class="col-auto p-1">
							<select name="condition" class="form-select">
								<option value="all" >제목+내용</option>
								<option value="userName" >작성자</option>
								<option value="reg_date" >등록일</option>
								<option value="subject" >제목</option>
								<option value="content" >내용</option>
							</select>
						</div>
						<div class="col-auto p-1">
							<input type="text" name="keyword" value="" class="form-control">
						</div>
						<div class="col-auto p-1">
							<button type="button" class="btn btn-light" onclick="searchList()"> <i class="bi bi-search"></i> </button>
						</div>
					</form>
				</div>
				<div class="col text-end">
					<button type="button" class="btn btn-light" onclick="">글올리기</button>
				</div>
			</div>

		</div>
	</div>
</div>