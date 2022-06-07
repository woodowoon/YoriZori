<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<style type="text/css">
.body-title {
    -webkit-font-smoothing: antialiased;
    font-family: 'Noto Sans', sans-serif;
    letter-spacing: -0.03em;
    word-break: keep-all;
    text-align: center;
    margin: 0;
    padding: 0;
    -webkit-text-size-adjust: none;
    border: 0;
    outline: 0;
    font-size: 4.4rem;
    font-weight: 700;
    line-height: 1em;
    color: #000000;
}

label {
	padding: 15px;
	display: block;
    line-height: 1em;
    color: #000000;
    margin-bottom: 10px;
	text-align: center;
    font-weight: bold;
}

h3 {
	font-size: 100%;
    margin-bottom: 7%;
}

.body-container {
	font-size: 25px
	
}

.col-sm-10 {
	margin-bottom: 50px;
}

#userNickname, #userPwd, #userPwd2, #birth, #tel, #email, #addr{
	display: block;
    width: 100%;
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

#tel {
	width: 200%;
}

#zipSearch, #idcheck {
	float: left;
    display: block;
    width: 100%;
    max-width: 120px;
    height: 60px;
    padding: 0 10px;
    margin-left: 5px;
    margin-bottom: 10px;
    border-radius: 12px;
    background: #f44502;
    font-size: 1.5rem;
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
    width: 72%;
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
    width: 72%;
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
    display: block;
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

.select {
	width:10%;
}

</style>


<div class="container">
	<div class="body-container">	
		<div class="body-title">
			<h3 style="	font-size: 100%; margin-bottom: 7%;"> yorizori 회원가입 </h3>
		</div>
		    		
		<div class="body-main">

			<form name="memberForm" method="post">
				<div class="row mb-3">
					<label class="col-sm-2 col-form-label" for="userId">아이디</label>
					<div class="col-sm-10">
			            <input type="text" name="userId" id="userId" class="form-control" autocomplete="off" placeholder="아이디를 입력해주세요">			 
						<button type="button" id="idcheck" class="btn btn-light" onclick="userIdCheck();">중복검사</button>
					</div>
				</div>	

				
				<div class="row mb-3">
					<label class="col-sm-2 col-form-label" for="userNickname">닉네임</label>
					<div class="col-sm-10">
			            <input type="text" name="Nickname" id="userNickname" class="form-control" autocomplete="off" placeholder="닉네임을 입력해주세요.">			 
			        </div>
			    </div>
			 
				<div class="row mb-3">
					<label class="col-sm-2 col-form-label" for="userPwd">패스워드</label>
					<div class="col-sm-10">
			            <input type="password" name="userPwd" id="userPwd" class="form-control" autocomplete="off" placeholder="패스워드를 입력해주세요.">			 
			        </div>
			    </div>
			    
			    <div class="row mb-3">
			        <label class="col-sm-2 col-form-label" for="userPwd2">패스워드 확인</label>
			        <div class="col-sm-10">
			            <input type="password" name="userPwd2" id="userPwd2" class="form-control" autocomplete="off" placeholder="패스워드 확인 더 입력해주세요.">
			        </div>
			    </div>
			 
			    <div class="row mb-3">
			        <label class="col-sm-2 col-form-label" for="birth">생년월일</label>
			        <div class="col-sm-10">
			            <input type="date" name="birth" id="birth" class="form-control" value="" placeholder="생년월일">
			        </div>
			    </div>
			
			    <div class="row mb-3">
			        <label class="col-sm-2 col-form-label" for="selectEmail">이메일</label>
						<div class="col-sm-10">
			            <input type="email" name="email" id="email" class="form-control" value="" placeholder="이메일을 입력해주세요.">
			        	</div>	
				</div>
			    
			    <div class="row mb-3">
			        <label class="col-sm-2 col-form-label" for="tel">전화번호</label>
			        <div class="col-sm-10 row">
						<div class="col-sm-3 pe-1">
							<input type="text" name="tel" id="tel" class="form-control" value="" placeholder="전화번호를 입력해주세요.">
						</div>
			        </div>
			    </div>
			
			    <div class="row mb-3">
			        <label class="col-sm-2 col-form-label" for="zip">우편번호</label>
			        <div class="col-sm-5">
			       		<div class="input-group">
			           		<input type="text" name="zip" id="zip" class="form-control" placeholder="우편번호" value="" readonly="readonly">
		           			<button class="btn btn-light" id="zipSearch" type="button" style="margin-left: 3px;" onclick="daumPostcode();">우편번호 검색</button>
			           	</div>
					</div>
			    </div>
		
			    <div class="row mb-3">
			        <label class="col-sm-2 col-form-label" for="addr">주소</label>
			        <div class="col-sm-10">
			       		<div>
			           		<input type="text" name="addr" id="addr" class="form-control" placeholder="기본 주소" value="" readonly="readonly">
			           	</div>
					</div>
			    </div>
			    
			     <div class="row mb-3">
			        <label class="col-sm-2 col-form-label" for="food">Q. 가장 선호하는 음식은 ?</label>
			        <div class="col-sm-10">
			        <div class="select">
     					<input type="radio" id="select1" name="korea"><label for="select1">한식</label>
    				    <input type="radio" id="select2" name="america"><label for="select2">양식</label>
    				    <input type="radio" id="select3" name="japan"><label for="select3">일식</label>
    				    <input type="radio" id="select4" name="china"><label for="select4">중식</label>
    				    <input type="radio" id="select5" name="else"><label for="select5">기타</label>
					</div>
			       </div>
			    </div>
			    
		
			    <div class="input-box">
					<span class="input-tit">마케팅 수신동의</span>
						<div class="check-box">
						<label for="mrktYn" class="check"><input type="checkbox" name="mrktYn" id="mrktYn" value="Y" >
						<span class="label"></span><span>할인쿠폰, 혜택, 이벤트 알림 받기</span></label>
				        </div>
				</div>
				
				<div class="comment-message">
								<div class="normal_cont-inputbox">
									<div class="input-box">
										<div class="check-box center">
											<label for="agreeYn" class="check"><input type="checkbox" name="agreeYn" id="agreeYn" value="Y">
											<span class="label"></span>본인은 만 14세 이상이며, 이용약관에 동의합니다</label>
										</div>
									</div>
								</div>
							</div>
			     
			    <div class="row mb-3">
			        <div class="text-center" >
			            <button type="button" name="sendButton" class="btn" onclick=""> <i class="bi bi-check2"></i>가입완료</button>
			        </div>
			    </div>
			
			    <div class="row">
					<p class="form-control-plaintext text-center"></p>
			    </div>
			</form>

		</div>
	</div>
</div>

					   