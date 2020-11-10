<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>잔액/대출조회</title>
</head>
<body>
<%@ include file="../include/header2.jsp" %>

<p><input type="text" value='<c:out value="${serial }"/>' name="serial" readonly="readonly"> 예금주의 잔액은 <input type="text" name="balance" id="balance" value='<c:out value="${bal }"/>' readonly="readonly">만원 입니다.</p>

<button type="button" id="depwid" class="btn btn-info">입/출금</button>
<button type="button" id="loanbtn" class="btn btn-info">대출확인</button>
<input type="hidden" id="goloan" class="btn btn-info" value="대출">

<table class="table table-bordered dt-responsive nowrap" id="dataTable" width="100%" cellspacing="0">
                 <thead>
                    <tr>
                      <th>#번호</th>
                      <th>예금주</th>
                      <th>비밀번호</th>
                      <th>계좌번호</th>
                      <th>입금</th>
                      <th>출금</th>
                    </tr>
                  </thead>
                  <tfoot>
                    <tr>
                      <th>#번호</th>
                      <th>예금주</th>
                      <th>비밀번호</th>
                      <th>계좌번호</th>
                      <th>입금</th>
                      <th>출금</th>
                    </tr>
                  </tfoot>
                  <tbody>
                  <c:forEach items="${history}" var="his">
                    <tr>
                     <td><c:out value="${his.free_record}"/></td>
                     <td><c:out value="${his.free_name}"/></td>
                     <td><c:out value="${his.free_password}"/></td>
                     <td><c:out value="${his.free_serial}"/></td>
                     <td><c:out value="${his.deposit}"/></td>
                     <td><c:out value="${his.withdraw}"/></td>
                   </c:forEach>
                  </tbody>
                </table>



<div class="modal" id="myModal" tabindex="-1" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <p>대출이 가능합니다</p>
      </div>
      <div class="modal-footer">
        <button type="button" id="goloan" class="btn btn-primary" data-dismiss="modal">확인</button>
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>


 <script>
  	$(document).ready(function(){
  		var balance = $("#balance").val();
  		
  		$("#loanbtn").on("click", function() {
  			console.log(balance);
  			checkModal(balance);
		})
  		
  		history.replaceState({}, null, null); //히스토리가 스텍에 쌓이는 상태는 모달창을 보여주지 않기 위해 추가함
  		//histody.replaceState(stateObj, title, [url])
  		function checkModal(balance) {

  			if (balance >= 500.0) {
  				$("#goloan").attr("type", "button");
  				$("#myModal").modal("show");
  			} else if (balance < 500.0) {
  				$(".modal-body").html(
  						"대출이 불가능합니다.");
  				$("#goloan").attr("type", "hidden");
  				$("#myModal").modal("show");
  			}
  			
  			$("#myModal").modal("show");
  		}
  		
  		$("#depwid").on("click", function() {
			self.location = "/bank/depwid?free_serial=<c:out value='${serial }'/>";
		})
		
		$("#goloan").on("click", function () {
			self.location = "/bank/loan?serial=<c:out value='${serial }'/>";
		})
		
  	});
  
  
  </script>




  <%@ include file="../include/footer2.jsp" %>