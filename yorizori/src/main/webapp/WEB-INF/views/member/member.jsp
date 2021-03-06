<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<style type="text/css">
@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap');
.signUpBody * { font-family: 'Noto Sans KR', sans-serif; }
.signUpBody { width: 1200px; margin: 0 auto; }


label {
	padding: 15px;
    line-height: 1em;
    color: #000000;
    margin-bottom: 10px;
	text-align: center;
    font-weight: bold;
}

#nickName, #userPwd, #userPwd2, #birth, #userName {
	display: block;
    width: 600px;
    height: 60px;
    padding: 0 20px;
    border: 0;
    border-radius: 12px;
    background: #f7f8fb;
    font-size: 1.6rem;
    font-weight: 400;
    color: #777777;
    box-sizing: border-box;
}

#selectEmail {
	display: block;
    width: 166px;
    height: 60px;
    padding: 0 20px;
    border: 0;
    border-radius: 12px;
    background: #f7f8fb;
    font-size: 1.6rem;
    font-weight: 400;
    color: #777777;
    box-sizing: border-box;
    text-align: center;
}

#selectEmail1 {
	display: block;
    width: 200px;
    height: 60px;
    padding: 0 20px;
    border: 0;
    border-radius: 12px;
    background: #f7f8fb;
    font-size: 1.6rem;
    font-weight: 400;
    color: #777777;
    box-sizing: border-box;
}

#selectEmail2 {
	display: block;
    width: 200px;
    height: 60px;
    padding: 0 20px;
    border: 0;
    border-radius: 12px;
    background: #f7f8fb;
    font-size: 1.6rem;
    font-weight: 400;
    color: #777777;
    box-sizing: border-box;
}

#tel1 {
	display: block;
    width: 166px;
    height: 60px;
    padding: 0 20px;
    border: 0;
    border-radius: 12px;
    background: #f7f8fb;
    font-size: 1.6rem;
    font-weight: 400;
    color: #777777;
    box-sizing: border-box;
    text-align: center;
}

#tel2 {
	display: block;
    width: 196px;
    height: 60px;
    padding: 0 20px;
    border: 0;
    border-radius: 12px;
    background: #f7f8fb;
    font-size: 1.6rem;
    font-weight: 400;
    color: #777777;
    box-sizing: border-box;
    text-align: center;
}

#tel3 {
	display: block;
    width: 196px;
    height: 60px;
    padding: 0 20px;
    border: 0;
    border-radius: 12px;
    background: #f7f8fb;
    font-size: 1.6rem;
    font-weight: 400;
    color: #777777;
    box-sizing: border-box;
    text-align: center;
}

#addr1 {
	display: block;
    width: 600px;
    height: 50px;
    padding: 0 20px;
    border: 0;
    border-radius: 12px;
    background: #f7f8fb;
    font-size: 1.6rem;
    font-weight: 400;
    color: #777777;
    box-sizing: border-box;
}

#addr2 {
	display: block;
    width: 600px;
    height: 50px;
    padding: 0 20px;
    border: 0;
    border-radius: 12px;
    background: #f7f8fb;
    font-size: 1.6rem;
    font-weight: 400;
    color: #777777;
    box-sizing: border-box;
}

#tel {
	width: 450%;
}

#zipSearch, #idcheck {
	float: left;
    display: block;
    width: 140px;
    height: 60px;
    padding: 0 10px;
    margin-left: 5px;
    margin-bottom: 10px;
    border-radius: 12px;
    background: #f44502;
    font-size: 1.2rem;
    font-weight: 400;
    line-height: 60px;
    color: #ffffff;
    text-align: center;
    float: none;
    display: inline-block;
}


#userId {
	display: block;
    height: 60px;
    padding: 0 20px;
    border: 0;
    border-radius: 12px;
    background: #f7f8fb;
    font-size: 1.6rem;
    font-weight: 400;
    color: #777777;
    box-sizing: border-box;
    display: inline-block;
    width: 452px;
}

#zip {
 	display: block;
    height: 60px;
    padding: 0 20px;
    border: 0;
    border-radius: 12px;
    background: #f7f8fb;
    font-size: 1.6rem;
    font-weight: 400;
    color: #777777;
    box-sizing: border-box;
    display: inline-block;
    width: 457px;
 }



#agree {
	margin: 20px;
}

button {	
    -webkit-font-smoothing: antialiased;
    font-family: 'Noto Sans', sans-serif;
    color: #000000;
    letter-spacing: -0.03em;
    word-break: keep-all;
    margin: 0;
    padding: 0;
    -webkit-text-size-adjust: none;
    border: 0;
    outline: 0;
    font-size: 100%;
}

#food {
	font-size: 25px;
}

.check {
    -webkit-font-smoothing: antialiased;
    font-family: 'Noto Sans', sans-serif;
    letter-spacing: -0.03em;
    word-break: keep-all;
    margin: 0;
    padding: 0;
    -webkit-text-size-adjust: none;
    border: 0;
    outline: 0;
    display: flex;
    align-items: center;
    position: relative;
    font-size: 1.6rem;
    font-weight: 400;
    line-height: 1em;
    color: #777777;
    cursor: pointer;
    margin-bottom: 10px;
    margin-right: 0;
}

.comment-message {
    margin-bottom: 100px;
}

.label {
    -webkit-font-smoothing: antialiased;
    font-family: 'Noto Sans', sans-serif;
    letter-spacing: -0.03em;
    word-break: keep-all;
    font-weight: 400;
    line-height: 1em;
    color: #777777;
    cursor: pointer;
    margin: 0;
    padding: 0;
    -webkit-text-size-adjust: none;
    border: 0;
    outline: 0;
    font-size: 100%;
    position: relative;
    width: 16px;
    height: 16px;
    margin-right: 10px;
    vertical-align: middle;
    background: url(/portal/img/contents/ico_checkbox_off.png)50% 50% /16px 16px no-repeat;
    box-sizing: border-box;
}

.btn {
    margin: 0;
    border: 0;
    cursor: pointer;
    font-family: 'Noto Sans', sans-serif !important;
    display: block;
    width: 50%;
    padding: 20px 30px;
    border-radius: 9999px;
    box-sizing: border-box;
    background: #f44502;
    margin-left: 30%;
    font-size: 30px;
}

.btn1 {
    margin: 20px;
    border: 0;
    cursor: pointer;
    font-family: 'Noto Sans', sans-serif !important;
    display: inline-block;
    width: 200px;
    padding: 10px 0;
    border-radius: 9999px;
    box-sizing: border-box;
    background: #f44502;
    font-size: 28px;
}

.signUpTitle { text-align: center; margin: 40px 0 70px; }
.signUpTitle img { display: inline-block; width: 100px; }
.signUpTitle h3 { display: inline-block; font-size: 45px; font-weight: bold; vertical-align: middle; margin: 0 0 0 30px; }
.signUpBody .row > * { width: auto; }
.signUpBody .row > label { width: 300px; font-size: 28px; margin-left: 90px; }
.signUpBody .select label { font-size: 24px; }
.signUpBody .form-check-label { font-size: 24px; }
.signUpBody .btn-area { width: 100%; }
</style>

<script type="text/javascript">
function memberOk() {
	const f = document.memberForm;
	let str;

	str = f.userId.value;
	if( !/^[a-z][a-z0-9_]{4,9}$/i.test(str) ) { 
		alert("???????????? ?????? ?????? ?????????. ");
		f.userId.focus();
		return;
	}

	let mode = "${mode}";
	if(mode === "member" && f.userIdValid.value === "false") {
		str = "????????? ?????? ????????? ???????????? ???????????????.";
		$("#userId").parent().find(".help-block").html(str);
		f.userId.focus();
		return;
	}
	
	str = f.userPwd.value;
	if( !/^(?=.*[a-z])(?=.*[!@#$%^*+=-]|.*[0-9]).{5,10}$/i.test(str) ) { 
		alert("??????????????? ?????? ?????? ?????????. ");
		f.userPwd.focus();
		return;
	}

	if( str !== f.userPwd2.value ) {
        alert("??????????????? ???????????? ????????????. ");
        f.userPwd.focus();
        return;
	}
	
	
    str = f.userName.value;
    if( !/^[???-???]{2,5}$/.test(str) ) {
        alert("????????? ?????? ???????????????. ");
        f.nickName.focus();
        return;
    }
    

    str = f.birth.value;
    if( !str ) {
        alert("??????????????? ???????????????. ");
        f.birth.focus();
        return;
    }
    
    str = f.tel1.value;
    if( !str ) {
        alert("??????????????? ???????????????. ");
        f.tel1.focus();
        return;
    }

    str = f.tel2.value;
    if( !/^\d{3,4}$/.test(str) ) {
        alert("????????? ???????????????. ");
        f.tel2.focus();
        return;
    }

    str = f.tel3.value;
    if( !/^\d{4}$/.test(str) ) {
    	alert("????????? ???????????????. ");
        f.tel3.focus();
        return;
    }
    
    str = f.email1.value.trim();
    if( !str ) {
        alert("???????????? ???????????????. ");
        f.email1.focus();
        return;
    }

    str = f.email2.value.trim();
    if( !str ) {
        alert("???????????? ???????????????. ");
        f.email2.focus();
        return;
    }

   	f.action = "${pageContext.request.contextPath}/member/${mode}";
    f.submit();
}

function changeEmail() {
    const f = document.memberForm;
	    
    let str = f.selectEmail.value;
    if(str !== "direct") {
        f.email2.value = str; 
        f.email2.readOnly = true;
        f.email1.focus(); 
    }
    else {
        f.email2.value = "";
        f.email2.readOnly = false;
        f.email1.focus();
    }
}

function userIdCheck() {
	// ????????? ?????? ??????
	let userId = $("#userId").val();

	if(!/^[a-z][a-z0-9_]{4,9}$/i.test(userId)) { 
		var str = "???????????? 5~10??? ????????????, ???????????? ???????????? ???????????? ?????????.";
		$("#userId").focus();
		$("#userId").parent().find(".help-block").html(str);
		return false;
	}
	
	let url = "${pageContext.request.contextPath}/member/userIdCheck";
	let query = "userId=" + userId;
	$.ajax({
		type:"POST"
		,url:url
		,data:query
		,dataType:"json"
		,success:function(data) {
			let passed = data.passed;

			if(passed === "true") {
				let str = "<span style='color:blue; font-weight: bold;'>" + userId + "</span> ???????????? ???????????? ?????????.";
				$(".userId-box").find(".help-block").html(str);
				$("#userIdValid").val("true");
			} else {
				let str = "<span style='color:red; font-weight: bold;'>" + userId + "</span> ???????????? ???????????? ????????????.";
				$(".userId-box").find(".help-block").html(str);
				$("#userId").val("");
				$("#userIdValid").val("false");
				$("#userId").focus();
			}
		}
	});
}
</script>

<div class="signUp">
	<div class="signUpBody">
		<div class="signUpTitle">
			<img src="${pageContext.request.contextPath}/resources/images/logo.png">	
			<h3>???????????? </h3>
		</div>    		
		<div class="body-main">

			<form name="memberForm" method="post">
				<div class="row mb-3">
					<label class="col-form-label" for="userId">?????????</label>
					<div class="userId-box">
			            <input type="text" name="userId" id="userId" class="form-control" placeholder="???????????? ??????????????????" value="${dto.userId}"
			            		${mode=="update" ? "readonly='readonly' ":""}
			            		placeholder="?????????">
			            <c:if test="${mode=='member'}">			 
							<button type="button" id="idcheck" class="btn btn-light" onclick="userIdCheck();">????????????</button>
							<small class="form-control-plaintext help-block">???????????? 5~10??? ????????????, ???????????? ???????????? ???????????? ?????????.</small>
						</c:if>
						<c:if test="${mode=='member'}">
						</c:if>	
				
					</div>
				</div>
				
				<div class="row mb-3">
					<label class="col-form-label" for="userName">??????</label>
					<div class="">
			            <input type="text" name="userName" id="userName" class="form-control" autocomplete="off" placeholder="????????? ??????????????????." value="${dto.userName}">			 
			        </div>
			    </div>
			    
				<div class="row mb-3">
					<label class="col-form-label" for="nickName">?????????</label>
					<div class="">
			            <input type="text" name="nickName" id="nickName" class="form-control" autocomplete="off" placeholder="???????????? ??????????????????." value="${dto.nickName}">			 
			        </div>
			    </div>
			 
				<div class="row mb-3">
					<label class="col-form-label" for="userPwd">????????????</label>
					<div class="">
			            <input type="password" name="userPwd" id="userPwd" class="form-control" autocomplete="off" placeholder="??????????????? ??????????????????.">			 
			        </div>
			    </div>
			    
			    <div class="row mb-3">
			        <label class="col-form-label" for="userPwd2">???????????? ??????</label>
			        <div class="">
			            <input type="password" name="userPwd2" id="userPwd2" class="form-control" autocomplete="off" placeholder="???????????? ?????? ??? ??????????????????.">
			        </div>
			    </div>
			 
			    <div class="row mb-3">
			        <label class="col-form-label" for="birth">????????????</label>
			        <div class="">
			            <input type="date" name="birth" id="birth" class="form-control" value="${dto.birth}" placeholder="????????????">
			            <small class="form-control-plaintext">??????????????? 2000-01-01 ???????????? ?????? ?????????.</small>
			        </div>
			    </div>
			
			    <div class="row mb-3">
			        <label class="col-form-label" for="selectEmail">?????????</label>
						<div class="row">
						<div class="col-3 pe-0">
							<select name="selectEmail" id="selectEmail" class="form-select" onchange="changeEmail();">
								<option value="">??? ???</option>
								<option value="naver.com" ${dto.email2=="naver.com" ? "selected='selected'" : ""}>?????????</option>
								<option value="gmail.com" ${dto.email2=="gmail.com" ? "selected='selected'" : ""}>??????</option>
								<option value="hanmail.net" ${dto.email2=="hanmail.net" ? "selected='selected'" : ""}>??????</option>
								<option value="direct">????????????</option>
							</select>
						</div>
						
						<div class="col input-group">
							<input type="text" id="selectEmail1" name="email1" class="form-control" maxlength="30" value="${dto.email1}" >
						    <span class="input-group-text p-1" style="border: none; background: none;">@</span>
							<input type="text" id="selectEmail2" name="email2" class="form-control" maxlength="30" value="${dto.email2}" readonly="readonly">
						</div>		
	
			        </div>
			    </div>
			    
			    <div class="row mb-3">
			        <label class="col-form-label" for="tel">????????????</label>
			        <div class="row">
						<div class="col-sm-3 pe-1">
							<input type="text" name="tel1" id="tel1" class="form-control" value="${dto.tel1}" maxlength="3">
						</div>
						<div class="col-sm-1 px-1" style="width: 2%;">
							<p class="form-control-plaintext text-center">-</p>
						</div>
						<div class="col-sm-3 px-1">
							<input type="text" name="tel2" id="tel2" class="form-control" value="${dto.tel2}" maxlength="4">
						</div>
						<div class="col-sm-1 px-1" style="width: 2%;">
							<p class="form-control-plaintext text-center">-</p>
						</div>
						<div class="col-sm-3 ps-1">
							<input type="text" name="tel3" id="tel3" class="form-control" value="${dto.tel3}" maxlength="4">
						</div>
			        </div>
			    </div>
				<!-- 
			<form name="memberForm" method="post">
				<div class="row mb-3">
					<label class="col-sm-2 col-form-label" for="userId">?????????</label>
					<div class="col-sm-10 userId-box">
			            <input type="text" name="userId" id="userId" class="form-control" placeholder="???????????? ??????????????????" value="${dto.userId}"
			            		${mode=="update" ? "readonly='readonly' ":""}
			            		placeholder="?????????">
			            <c:if test="${mode=='member'}">			 
							<button type="button" id="idcheck" class="btn btn-light" onclick="userIdCheck();">????????????</button>
							<small class="form-control-plaintext help-block">???????????? 5~10??? ????????????, ???????????? ???????????? ???????????? ?????????.</small>
						</c:if>
						<c:if test="${mode=='member'}">
						</c:if>
				 -->
			    <div class="row mb-3">
			        <label class="col-form-label" for="zip">????????????</label>
			        <div class="col-sm-6">
			       		<div class="input-group">
			           		<input type="text" name="zip" id="zip" class="form-control" placeholder="????????????" value="${dto.zip}" readonly="readonly">
		           			<button class="btn btn-light" id="zipSearch" type="button" style="margin-left: 3px;" onclick="daumPostcode();">???????????? ??????</button>
			           	</div>
					</div>
			    </div>
				<!-- 
					<button class="btn btn-light" id="zipSearch" type="button" style="margin-left: 3px;" onclick="daumPostcode();">???????????? ??????</button>
				 -->
			    <div class="row mb-3">
			        <label class="col-form-label" for="addr1">??????</label>
			        <div class="">
			       		<div>
			           		<input type="text" name="addr1" id="addr1" class="form-control" placeholder="?????? ??????" value="${dto.addr1}" readonly="readonly">
			           	</div>
			       		<div style="margin-top: 5px;">
			       			<input type="text" name="addr2" id="addr2" class="form-control" placeholder="?????? ??????" value="${dto.addr2}">
						</div>
					</div>
			    </div>
			    
			     <div class="row mb-3">
			        <label class="col-form-label" for="countryNum">?????? ???????????? ?????? ?</label>
			        <div class="col-sm-9">
			        <div class="select">
			        	<!-- 
     					<input type="radio" id="select1" name="korea"><label for="select1">??????</label>
    				    <input type="radio" id="select2" name="america"><label for="select2">??????</label>
    				    <input type="radio" id="select3" name="japan"><label for="select3">??????</label>
    				    <input type="radio" id="select4" name="china"><label for="select4">??????</label>
    				    <input type="radio" id="select5" name="else"><label for="select5">??????</label>
    				    <select name="selectEmail" id="selectEmail" class="form-select" onchange="changeEmail();">
								<option value="">??? ???</option>
								<option value="naver.com" ${dto.email2=="naver.com" ? "selected='selected'" : ""}>????????? ??????</option>
								<option value="gmail.com" ${dto.email2=="gmail.com" ? "selected='selected'" : ""}>??? ??????</option>
								<option value="hanmail.net" ${dto.email2=="hanmail.net" ? "selected='selected'" : ""}>??? ??????</option>
								<option value="hotmail.com" ${dto.email2=="hotmail.com" ? "selected='selected'" : ""}>??? ??????</option>
								<option value="direct">????????????</option>
						</select>
						<br>
						-->
						<!--
						<input type="checkbox" id="select1" name="korea"><label for="select1">??????</label>
    				    <input type="checkbox" id="select2" name="america"><label for="select2">??????</label>
    				    <input type="checkbox" id="select3" name="japan"><label for="select3">??????</label>
    				    <input type="checkbox" id="select4" name="china"><label for="select4">??????</label>
    				    <input type="checkbox" id="select5" name="else"><label for="select5">??????</label>
    				    -->
    				    
				
						<input type="radio" id="select1" name="countryNum" value="1"><label for="select1">??????</label>
    				    <input type="radio" id="select2" name="countryNum" value="2"><label for="select2">??????</label>
    				    <input type="radio" id="select3" name="countryNum" value="3"><label for="select3">??????</label>
    				    <input type="radio" id="select4" name="countryNum" value="4"><label for="select4">??????</label>

    				    
    				    
					</div>
			       </div>
			    </div>
			    
		
			    <div class="row mb-3">
			        <label class="col-form-label" for="agree">?????? ??????</label>
					<div class="col-sm-8">
						<input type="checkbox" id="agree" name="agree"
							class="form-check-input"
							checked="checked"
							style="margin-left: 0;"
							onchange="form.sendButton.disabled = !checked">
						<label class="form-check-label">
							<a href="https://www.linktoviatris.co.kr/user/services" class="text-decoration-none">????????????</a>??? ???????????????.
						</label>
					</div>
			    </div>
			     
			    <div class="row mb-3">
			        <div class="text-center btn-area">
			            <button type="button" name="sendButton" class="btn1 btn-primary" onclick="memberOk();"> ${mode=="member"?"????????????":"????????????"} <i class="bi bi-check2"></i></button>
			            <button type="button" class="btn1 btn-danger" onclick="location.href='${pageContext.request.contextPath}/';"> ${mode=="member"?"????????????":"????????????"} <i class="bi bi-x"></i></button>
						<input type="hidden" name="userIdValid" id="userIdValid" value="false">
			        </div>
			    </div>
			
			    <div class="row">
					<p class="form-control-plaintext text-center">${message}</p>
			    </div>
			</form>

		</div>
	</div>
</div>

<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
    function daumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // ???????????? ???????????? ????????? ??????????????? ????????? ????????? ???????????? ??????.

                // ??? ????????? ?????? ????????? ?????? ????????? ????????????.
                // ???????????? ????????? ?????? ?????? ????????? ??????('')?????? ????????????, ?????? ???????????? ?????? ??????.
                var fullAddr = ''; // ?????? ?????? ??????
                var extraAddr = ''; // ????????? ?????? ??????

                // ???????????? ????????? ?????? ????????? ?????? ?????? ?????? ?????? ????????????.
                if (data.userSelectedType === 'R') { // ???????????? ????????? ????????? ???????????? ??????
                    fullAddr = data.roadAddress;

                } else { // ???????????? ?????? ????????? ???????????? ??????(J)
                    fullAddr = data.jibunAddress;
                }

                // ???????????? ????????? ????????? ????????? ???????????? ????????????.
                if(data.userSelectedType === 'R'){
                    //??????????????? ?????? ?????? ????????????.
                    if(data.bname !== ''){
                        extraAddr += data.bname;
                    }
                    // ???????????? ?????? ?????? ????????????.
                    if(data.buildingName !== ''){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // ?????????????????? ????????? ?????? ????????? ????????? ???????????? ?????? ????????? ?????????.
                    fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
                }

                // ??????????????? ?????? ????????? ?????? ????????? ?????????.
                document.getElementById('zip').value = data.zonecode; //5?????? ??????????????? ??????
                document.getElementById('addr1').value = fullAddr;

                // ????????? ???????????? ????????? ????????????.
                document.getElementById('addr2').focus();
            }
        }).open();
    }
</script>

								   