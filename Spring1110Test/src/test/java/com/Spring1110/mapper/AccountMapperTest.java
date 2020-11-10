package com.Spring1110.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.Spring1110.domain.AccountDTO;
import com.Spring1110.domain.LoanDTO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(
		"file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class AccountMapperTest {
	@Setter(onMethod_=@Autowired)
	private AccountMapper mapper;
	@Setter(onMethod_=@Autowired)
	private LoanMapper mapper2;
	
	//@Test
	public void testInsert() {
		AccountDTO acc = new AccountDTO();
		acc.setFree_name("Talong");
		acc.setFree_password("0000");
		acc.setFree_serial("01-10-26");
		acc.setDeposit(200);
		acc.setWithdraw(0);
		mapper.insert(acc);
	}
	
	//@Test
	public void testGetLat() {
		log.info(mapper.getLat("96-03-15"));
	}
	
	//@Test
	public void testGetList() {
		mapper.getList().forEach(i->log.info(i));
	}
	
	//@Test
	public void testGetSerial() {
		mapper.getSerial("96-03-15").forEach(i->log.info(i));
	}
	
	//@Test
	public void testGetBalance() {
		log.info(mapper.getBalance("96-03-15"));
	}
	
	//@Test
	public void testLoanInsert() {
		LoanDTO loan = new LoanDTO();
		loan.setLawn_name("Monica");
		loan.setSerial("96-03-15");
		loan.setLawn_amount(7000);
		loan.setLawn_withdraw(500);
		loan.setLawn_balance(5500);
		mapper2.loaninsert(loan);
	}
	
	//@Test
	public void testLoanSerial() {
		mapper2.loanSerial("96-03-15").forEach(i->log.info(i));
	}
	
	//@Test
	public void testLoanLat() {
		log.info(mapper2.loanLat("96-03-15"));
	}
	
	
	
}
