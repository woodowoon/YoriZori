<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<h3 style="font-size: 15px; padding-top: 10px;"><i class="icofont-double-right"></i> 재료</h3>
<table class="table td-border mx-auto my-10">
	<tr>
		
	</tr>
	
</table>

<form id="deteailedMemberForm" name="deteailedMemberForm" method="post">
	<h3 style="font-size: 15px; padding-top: 10px;"><i class="icofont-double-right"></i> 유저 상태 변경</h3>
	
	<table class="table td-border mx-auto my-5">
		<tr>
			<td class="wp-15 text-center bg-light">계정상태</td>
			<td class="ps-5">
				
			</td>
		</tr>
		<tr>
			<td class="pe-7 text-center bg-light">메 모</td>
			<td class="ps-5">
				<input type="text" name="memo" id="memo" class="form-control" style="width: 95%;">
			</td>
		</tr>
	</table>
	
	
</form>

<div id="memberStateDetaile" style="display: none;">
	<table class="table table-border mx-auto my-10">
		<thead>
			<tr class="bg-light">
				<th>내용</th>
				<th width="130">변경아이디</th>
				<th width="200">등록일</th>
			</tr>
		</thead>
		
		<tbody>
			<c:forEach var="vo" items="${listState}">
				<tr>
					
				</tr>
			</c:forEach>
	  
			
		</tbody>
	</table>  
</div>
