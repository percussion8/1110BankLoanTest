<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ include file="../include/header2.jsp" %>
          <!-- DataTales Example -->
          <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">DataTables 예제</h6>
            </div>
            <div class="card-body">
              <div class="table-responsive">
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
                  <c:forEach items="${all}" var="acc">
                    <tr>
                     <td><c:out value="${acc.free_record}"/></td>
                     <td><c:out value="${acc.free_name}"/></td>
                     <td><c:out value="${acc.free_password}"/></td>
                     <td><a href='/bank/balance?free_serial=<c:out value="${acc.free_serial}"/>'><c:out value="${acc.free_serial}"/></a></td>
                     <td><c:out value="${acc.deposit}"/></td>
                     <td><c:out value="${acc.withdraw}"/></td>
                   </c:forEach>
                  </tbody>
                </table>
                 <!-- End of DataTales Example -->
                 


  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>
  
 

  <%@ include file="../include/footer2.jsp" %>