<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>대출 입/출금 페이지</title>
</head>
<body>

 <form action="/bank/depwidloan" role="form" method="post">
                <div class="form-group">
                    <label>이름</label><input type="text" class="form-control" name="lawn_name"
                    	value="${loanLat.lawn_name}" readonly="readonly">
                </div>
                <div class="form-group">
                    <label>계좌번호</label><input type="text" class="form-control" name="serial"
                    	value="${loanLat.serial}" readonly="readonly">
                </div>
                <div class="form-group">
                    <label>대출 총액</label><input type="text" class="form-control" name="lawn_amount"
                    	value="${loanLat.lawn_amount}" readonly="readonly">
                </div>
                <div class="form-group">
                    <label>출금액</label><input type="text" class="form-control" name="lawn_withdraw">
                </div>
                <div class="form-group">
                    <label>잔액</label><input type="text" class="form-control" name="lawn_balance"
                    	value="${loanLat.lawn_balance}">
                </div>
                
                <button type="submit" class="btn btn-default">전송</button>
                <button type="reset" class="btn btn-default">초기화</button>
            </form>

</body>
</html>