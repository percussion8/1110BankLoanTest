<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>입/출금 페이지</title>
</head>
<body>

 <form action="/bank/depwid" role="form" method="post">
                <div class="form-group">
                    <label>이름</label><input type="text" class="form-control" name="free_name"
                    	value='<c:out value="${review.free_name}"/>' readonly="readonly">
                </div>
                <div class="form-group">
                    <label>비밀번호</label><input type="text" class="form-control" name="free_password"
                    	value='<c:out value="${review.free_password}"/>' readonly="readonly">
                </div>
                <div class="form-group">
                    <label>계좌</label><input type="text" class="form-control" name="free_serial"
                    	value='<c:out value="${review.free_serial}"/>' readonly="readonly">
                </div>
                <div class="form-group">
                    <label>입금액</label><input type="text" class="form-control" name="deposit">
                </div>
                <div class="form-group">
                    <label>출금액</label><input type="text" class="form-control" name="withdraw">
                </div>
                
                <button type="submit" class="btn btn-default">전송</button>
                <button type="reset" class="btn btn-default">초기화</button>
            </form>

</body>
</html>