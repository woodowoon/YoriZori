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

<style type="text/css">
.write-form .img-viewer {
	cursor: pointer;
	border: 1px solid #ccc;
	width: 45px;
	height: 45px;
	background-image: url("${pageContext.request.contextPath}/resources/images/add_photo.png");
	position: relative;
	z-index: 9999;
	background-repeat : no-repeat;
	background-size : cover;
}

h3 img {
	width: 7%;
}

.btn {
    padding: 10px; border-radius: 12px;
    background: #f44502;
    line-height: 1em;
    color: #fff;
    text-align: center;
    margin-right: 0;
    border: none;	
}


</style>

<script type="text/javascript">

</script>

<div class="container">
	<div class="body-container">	
		<div class="body-title">
			<h3><img src="${pageContext.request.contextPath}/resources/images/dailywrite.png"> 오늘의 한 끼를 작성해주세요 ! </h3>
		</div>
		
		<div class="body-main">
		
			<form name="photoForm" method="post" enctype="multipart/form-data">
				<table class="table mt-5 write-form">
					<tr>
						<td class="table-light col-sm-2" scope="row">제 목</td>
						<td>
							<input type="text" name="subject" class="form-control" value="">
						</td>
					</tr>
					
					<tr>
						<td class="table-light col-sm-2" scope="row">작성자명</td>
 						<td>
							<p class="form-control-plaintext"></p>
						</td>
					</tr>

					<tr>
						<td class="table-light col-sm-2" scope="row">내 용</td>
						<td>
							<textarea name="content" id="content" class="form-control"></textarea>
						</td>
					</tr>
					
					<tr>
						<td class="table-light col-sm-2" scope="row">이미지</td>
						<td>
							<div class="img-viewer"></div>
							<input type="file" name="selectFile" accept="image/*" class="form-control" style="display: none;">
						</td>
					</tr>

				</table>
				
				<table class="table table-borderless">
 					<tr>
						<td class="text-center">
							<button type="button" class="btn btn-dark" onclick="sendOk();">&nbsp;<i class="bi bi-check2"></i></button>
							<button type="reset" class="btn btn-light">다시입력</button>
							<button type="button" class="btn btn-light" onclick="">&nbsp;<i class="bi bi-x"></i></button>
							<c:if test="">
								<input type="hidden" name="num" value="">
								<input type="hidden" name="imageFilename" value="">
								<input type="hidden" name="page" value="">
							</c:if>
						</td>
					</tr>
				</table>
			</form>
		
		</div>
	</div>
</div>
