<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ include file="../include/header2.jsp" %>
          <!-- DataTales Example -->
          <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">대출조회</h6>
            </div>
            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-bordered dt-responsive nowrap" id="dataTable" width="100%" cellspacing="0">
                 <thead>
                    <tr>
                      <th>#번호</th>
                      <th>예금주</th>
                      <th>계좌번호</th>
                      <th>대출 총액</th>
                      <th>출금</th>
                      <th>잔액</th>
                    </tr>
                  </thead>
                  <tfoot>
                    <tr>
                      <th>#번호</th>
                      <th>예금주</th>
                      <th>계좌번호</th>
                      <th>대출 총액</th>
                      <th>출금</th>
                      <th>잔액</th>
                    </tr>
                  </tfoot>
                  <tbody>
                  <c:forEach items="${seriloan}" var="loan">
                    <tr>
                     <td><c:out value="${loan.record}"/></td>
                     <td><c:out value="${loan.lawn_name}"/></td>
                     <td><c:out value="${loan.serial}"/></td>
                     <td><c:out value="${loan.lawn_amount}"/></td>
                     <td><c:out value="${loan.lawn_withdraw}"/></td>
                     <td><c:out value="${loan.lawn_balance}"/></td>
                   </c:forEach>
                  </tbody>
                </table>
                 <!-- End of DataTales Example -->
                 
<button type="button" id="loanUse" class="btn btn-info">대출입/출금</button>

  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>
  
<script>
  	$(document).ready(function(){
  		
		
		$("#loanUse").on("click", function () {
			self.location = "/bank/depwidloan?deploan=<c:out value='${loanserial }'/>";
		})
		
  	});
  
  
  </script>
 

  <%@ include file="../include/footer2.jsp" %>