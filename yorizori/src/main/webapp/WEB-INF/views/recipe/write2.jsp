<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<style type="text/css">
main {
    font-family: 'Noto Sans KR', sans-serif;
    color: #000000; letter-spacing: -0.03em;
}

.body-container {
	max-width: 1300px;
}

.ck.ck-editor {
	max-width: 97%;
}
.ck-editor__editable {
    min-height: 250px;
}
.ck-content .image>figcaption {
	min-height: 25px;
}

.body-title h3 {
	color: #5d5758;
	border-bottom: 3px solid #5d5758;
}

.write-form tr .td1 {
	border-top: 2px solid #5d5758;
}

.table-light {
	--bs-table-bg: #F8EFFB;
	color: #5d5758;
	box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
}

tbody, tr {
	border-bottom-style: solid;

}

.btn-dark {
	color: #5d5758;
	background-color: #faf7e1;
	border-color: #777071;
}
.btn-dark:hover, .btn-dark:focus, .btn-dark:active {
	color: #5d5758;
	background-color: #faf7e1;
	border-color: #777071;
}
.btn-light {
	color: #5d5758;
	background-color: #faf7e1;
	border-color: #777071;
}
.btn-light:hover, .btn-light:focus, .btn-light:active {
	color: #5d5758;
	background-color: #faf7e1;
	border-color: #777071;
}

.form-check-input:checked {
	background-color: #faf7e1;
	border-color: #5d5758;
}

.field1 {
	width: 400px;
	float: left;
	padding-top: 0px;
}

.field1 {
	position: relative;
}

fieldset {
    display: block;
    margin-inline-start: 2px;
    margin-inline-end: 2px;
    padding-block-start: 0.35em;
    padding-inline-start: 0.75em;
    padding-inline-end: 0.75em;
    padding-block-end: 0.625em;
    min-inline-size: min-content;
}
.sec_recommend form {
	width: 770px;
	overflow: hidden;
	margin: 25px auto;
}

.field1 input {
    box-sizing: border-box;
    width: 595px;
    height: 59px;
    background: #fff;
    border: #5d5758 solid 1px;
    float: left;
    padding-left: 20px;
    font-size: 20px;
    color: #000;
    margin-bottom: 9px;
    outline: none;
}

.field1 .btn_search {
	display: none;
}

input, button, img {
	vertical-align: middle;
}

button, a {
    outline: none;
    text-decoration: none;
    color: #444;
    padding: 0;
    margin: 0;
    cursor: pointer;
}

button {
    font-family: Microsoft YaHei,'NS','돋움',Dotum,'굴림',Gulim,Helvetica,sans-serif;
    font-size: 12px;
}

.btn-list {
	color: #ffffff; background-color: #f44502; font-size: 14px;
	border-radius: 9999px; padding: 13px 40px; margin: 0 10px;
}
.btn-white {
	color: #f44502; background-color: #ffffff; font-size: 14px;
	border-radius: 9999px; padding: 13px 30px; border: 1px solid #f44502;
}

.field1 input {
	box-sizing: border-box;
    width: 500px;
    height: 59px;
    background: #fff;
    border: #5d5758 solid 1px;
    float: left;
    padding-left: 20px;
    font-size: 20px;
    color: #000;
    margin-bottom: 9px;
    outline: none;
    line-height: 64px\0;
}

.field1>ul {
	height: 270px;
    border: 1px solid #5d5758;
    background: #fff;
    float: left;
    overflow-x: hidden;
    overflow-y: visible;
}

.field2 {
	width: 525px;
	float: right;
	padding-top: 0px;
	margin-top: 0px;
}

.big_sort {
	width: 190px;
    margin-right: 9px;
    box-sizing: border-box;
    padding-left: 0px;
}

.big_sort li a {
    color: #5d5758;
    display: block;
    line-height: 44px;
    padding-left: 18px;
}

.big_sort li {
    font-size: 15px;
    border-bottom: 1px solid #5d5758;
    list-style: none;
}

.small_sort {
	width: 300px;
    height: 270px;
    float: left;
    padding: 10px 13px;
    box-sizing: border-box;
    font-family: Microsoft YaHei,'NS';
    box-sizing: border-box;
}

.small_sort li {
    float: left;
    margin: 0 0 16px;
    margin-top: 0px;
    margin-right: 0px;
    margin-bottom: 16px;
    margin-left: 0px;
    list-style: none;
}

.field2 dl {
    border: 1px solid #5d5758;
    background: #fff;
    position: relative;
}

.field2 dt {
    height: 59px;
    font-size: 20px;
    padding: 10px 15px;
    font-family: Microsoft YaHei,'NSL';
    box-sizing: border-box;
    color: #5d5758;
    border-bottom: 1px solid #5d5758;
    line-height: 40px\0;
}

dt {
	display: block;
}

.field2 dd {
	height: 277px;
	box-sizing: border-box;
}

.field2 dd ul {
    height: 205px;
    padding: 12px 0;
    overflow-x: hidden;
    overflow-y: visible;
    box-sizing: border-box;
}

.field2 dd .btn {
    position: absolute;
    left: 0;
    right: 0;
    bottom: 0;
    padding: 12px 16px;
    background-color: #fff;
}

ol, ul {
	list-style: none;
}

.inner {
	position: relative;
    width: 1024px;
    margin: auto;

}


ul {
	display: block;
    list-style-type: disc;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    padding-inline-start: 40px;
}

dl {
    display: block;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
}

.field2 dd ul li.no-content {
    float: none;
    font-size: 13px;
    color: #5d5758;
    text-align: center;
    margin-top: 80px;
    padding: 0;
}

.field2 dd ul li {
    float: left;
    margin-bottom: 9px;
}

.no-content {
    text-align: center; 
    color: #b7b7b7;
    font-size: 20px; 
    padding-top: 100px; 
}

.no-content {
    color: #b7b7b7;
    text-align: center; 
}

.field2 dd .btn button {
    width: 150px;
    height: 48px;
    border-radius: 5px;
    border: 1px solid #5d5758;
    background: #fff;
    color: #5d5758;
    font-size: 15px;
    line-height: 54px\0;
}


</style>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/boot-board.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/tabs.css" type="text/css">

<script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendor/ckeditor5/ckeditor.js"></script>

<style type="text/css">
.write-form .img-viewer {
	cursor: pointer;
	border: 1px solid #ccc;
	width: 45px;
	height: 45px;
	border-radius: 45px;
	background-image: url("${pageContext.request.contextPath}/resources/images/add_photo.png");
	position: relative;
	z-index: 9999;
	background-repeat : no-repeat;
	background-size : cover;
}
</style>

<script type="text/javascript">
function sendOk() {
	var f = document.recipeForm;
	var str;

	// 값 가져오기
	// window.editor.getData();
	// 값 셋팅
	    // window.editor.setData('<p>example</p>');
	
	str = window.editor.getData().trim();
    if(! str) {
        alert("내용을 입력하세요. ");
        window.editor.focus();
        return;
    }
	f.content.value = str;

	f.action="${pageContext.request.contextPath}/recipe/${mode}";
	f.submit();
}
</script>

<script type="text/javascript">
function login() {
	location.href="${pageContext.request.contextPath}/member/login";
}

// 나중에 작업하든가 말든가 우선 포기..
function ingredient() {
	var dlg = $("#member-dialog").dialog({
		  autoOpen: false,
		  modal: true,
		  buttons: {
		       " 닫기 " : function() {
		    	   $(this).dialog("close");
		       }
		  },
		  height: 540,
		  width: 830,
		  title: "재료",
		  close: function(event, ui) {
		  }
	});

	// let url = "${pageContext.request.contextPath}/admin/memberManage/detaile";
	// let query = "recipeNum="+recipeNum;
	
	const fn = function(data){
		// $('#member-dialog').html(data);
		dlg.dialog("open");
	};
	// ajaxFun(url, "post", query, "html", fn);
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
				alert("요청 처리가 실패했습니다.");
				return false;
			}
	    	
			console.log(jqXHR.responseText);
		}
	});
}

$(function() {
	var img = "${dto.imageFilename}";
	if( img ) { // 수정인 경우
		img = "${pageContext.request.contextPath}/uploads/photo/" + img;
		$(".write-form .img-viewer").empty();
		$(".write-form .img-viewer").css("background-image", "url("+img+")");
	}
	
	$(".write-form .img-viewer").click(function(){
		$("form[name=recipeForm] input[name=selectFile]").trigger("click"); 
	});
	
	$("form[name=recipeForm] input[name=selectFile]").change(function(){
		var file=this.files[0];
		if(! file) {
			$(".write-form .img-viewer").empty();
			if( img ) {
				img = "${pageContext.request.contextPath}/uploads/photo/" + img;
				$(".write-form .img-viewer").css("background-image", "url("+img+")");
			} else {
				img = "${pageContext.request.contextPath}/resources/images/add_photo.png";
				$(".write-form .img-viewer").css("background-image", "url("+img+")");
			}
			return false;
		}
		
		if(! file.type.match("image.*")) {
			this.focus();
			return false;
		}
		
		var reader = new FileReader();
		reader.onload = function(e) {
			$(".write-form .img-viewer").empty();
			$(".write-form .img-viewer").css("background-image", "url("+e.target.result+")");
		}
		reader.readAsDataURL(file);
	});
});
</script>

<div class="container">
	<div class="body-container">	
		<div class="body-title">
			<h2><i class="bi bi-book-half"></i> 레시피 등록하기 </h2>
		</div>
		
		<div class="body-main">
		    
			<form name="recipeForm" method="post">
				<table class="table mt-5 write-form">
					<tr>
						<td class="table-light col-sm-2" scope="row">상황별</td>
						<td>
							<div class="row">
								<div class="col-sm-4 pe-1">
									<select name="groupCategoryNum" class="form-select">
										<option value="">:: 상황별 요리 ::</option>
										<c:forEach var="vo" items="${caseCategory}">
											<option value="${vo.caseNum}"  ${dto.caseNum==vo.caseNum?"selected='selected'":""}>${vo.caseName}</option>									
										</c:forEach>
									</select>
								</div>
							</div>
						</td>
					</tr>
					<tr>
						<td class="table-light col-sm-2" scope="row">나라별</td>
						<td>
							<div class="row">
								<div class="col-sm-4 pe-1">
									<select name="groupCategoryNum" class="form-select">
										<option value="">:: 나라별 요리 ::</option>
										<c:forEach var="vo" items="${countryCategory}">
											<option value="${vo.countryNum}"  ${dto.countryNum==vo.countryNum?"selected='selected'":""}>${vo.countryName}</option>									
										</c:forEach>
									</select>
								</div>
							</div>
						</td>
					</tr>
					<tr>
						<td class="table-light col-sm-2" scope="row">제 목 입 력</td>
						<td>
							<input type="text" name="subject" class="form-control" value="${dto.subject}">
						</td>
					</tr>
					<tr>
						<td class="table-light col-sm-2" scope="row">작성자명</td>
 						<td>
							<p class="form-control-plaintext">${sessionScope.member.nickName}</p>
						</td>
					</tr>
					
					<tr>
						<td  class="table-light col-sm-2" scope="row"> 메인 사진 </td>
						<td>
							<div class="img-viewer"></div>
							<input type="file" name="selectFile" accept="image/*" class="form-control" style="display: none;">
						</td>
					</tr>
					
					<tr>
						<td class="table-light col-sm-2" scope="row">요 리 내 용</td>
						<td>
							<div class="editor"></div>
							<input type="hidden" name="content">
						</td>
					</tr>
					<tr>
						<td class="table-light col-sm-2" scope="row">음 식 정 보</td>
						<td>
							<div class="row g-3">
							  <div class="col-sm-7" style="float: left; width:60%;">
							    <input type="text" class="form-control" placeholder="음식명을 입력하세요.">
							  </div>
							  <div class="col-sm-3" style="float: left; width:30%;">
							    <input type="text" class="form-control" placeholder="조리분량">
							  </div>
							  <div style="float:left; width:9%; padding-top: 10px; padding-left: 0px;">
							  	<h6>인분</h6>
							  </div>
							  
<!-- 주의 문구탓에 주석, 나중에 작업할때 풀고 작업할것. -->

							
						  	<input name="utf8" type="hidden" value="✓">
						  	<input type="hidden" name="sort" value="rlv">
								<fieldset class="field1">
						            <input type="text" class="search-ingre ui-autocomplete-input" placeholder="재료명으로 검색해보세요." autocomplete="off">
						            <button class="btn_search">검색</button>
						            <ul class="big_sort">
						                  <li><a class="selected" data-id="1" href="javascript:;">곡류</a></li>
						                  
						            </ul>
						            
						            <ul class="small_sort">
						             
						            	<li><a href="javascript:;"><em></em><img src="${pageContext.request.contextPath}/resources/images/rice.jpg"><strong>귀리</strong></a></li>
						            </ul>
					          	</fieldset>
					          <fieldset class="field2">
					            <dl>
					              <dt>
					            	 선택 된 재료
					              </dt>
					              <dd>
					                <ul class="selected-ingre">
					                  <li class="no-content">재료를 선택해주세요.</li>
					                </ul>
					                <div class="btn">
					                  <button type="submit">재료등록확정</button>
					                </div>
					              </dd>
					            </dl>
					          </fieldset>

							</div>
						</td>
					</tr>
					<tr>
						<td>
							재료
						</td>
						<td>
							<button type="button" class="btn" onclick="ingredient()">재료선택</button>
						</td>
					</tr>
					
					<tr>
						<td class="table-light col-sm-2" scope="row">조리시간</td>
						<td>
							<input type="text" style="width:23%" name="" class="form-control" value=""
							 placeholder="총 분소요를 숫자만 써주세요.">
						</td>
					</tr>
					<tr>
						<td class="table-light col-sm-2" scope="row">태 그</td>
						<td>
							<input type="text" style="width:45%" name="" class="form-control" value=""
							 placeholder="주재료,목적 등을 태그로 남겨주세요. 예) 돼지고기, 술안주">
						</td>
					</tr>
					<tr>
						<td class="table-light col-sm-2" scope="row">난 이 도</td>
						<td>
							<div class="row">
								<div class="col-sm-4 pe-1" style="width:15%;">
									<select name="groupCategoryNum" class="form-select">
										<option value="">:: 난이도 ::</option>
										<option value="상">상</option>
										<option value="중">중</option>
										<option value="하">하</option>
									</select>
								</div>
							</div>
						</td>
					</tr>
					
				</table>
				
				<table class="table table-borderless">
 					<tr>
						<td class="text-center">
							<button type="button" class="btn btn-dark" onclick="sendOk();">${mode=='update'?'수정완료':'등록하기'}&nbsp;<i class="bi bi-check2"></i></button>
							<button type="reset" class="btn btn-light">다시입력</button>
							<button type="button" class="btn btn-light" onclick="location.href='${pageContext.request.contextPath}';">${mode=='update'?'수정취소':'등록취소'}&nbsp;<i class="bi bi-x"></i></button>
							<c:if test="${mode=='update'}">
								<input type="hidden" name="num" value="${dto.num}">
								<input type="hidden" name="page" value="${page}">
								<input type="hidden" name="group" value="${group}">
							</c:if>
						</td>
					</tr>
				</table>
			</form>
		
		</div>
	</div>
</div>

<script type="text/javascript">
	ClassicEditor
		.create( document.querySelector( '.editor' ), {
			fontFamily: {
	            options: [
	                'default',
	                '맑은 고딕, Malgun Gothic, 돋움, sans-serif',
	                '나눔고딕, NanumGothic, Arial'
	            ]
	        },
	        fontSize: {
	            options: [
	                9, 11, 13, 'default', 17, 19, 21
	            ]
	        },
			toolbar: {
				items: [
					'heading','|',
					'fontFamily','fontSize','bold','italic','fontColor','|',
					'alignment','bulletedList','numberedList','|',
					'imageUpload','insertTable','sourceEditing','blockQuote','mediaEmbed','|',
					'undo','redo','|',
					'link','outdent','indent','|',
				]
			},
			image: {
	            toolbar: [
	                'imageStyle:full',
	                'imageStyle:side',
	                '|',
	                'imageTextAlternative'
	            ],
	
	            // The default value.
	            styles: [
	                'full',
	                'side'
	            ]
	        },
			language: 'ko',
			ckfinder: {
		        uploadUrl: '${pageContext.request.contextPath}/image/upload' // 업로드 url (post로 요청 감)
		    }
		})
		.then( editor => {
			window.editor = editor;
		})
		.catch( err => { 
			console.error( err.stack );
		});
</script>
