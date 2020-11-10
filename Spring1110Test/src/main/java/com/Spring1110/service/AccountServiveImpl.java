package com.Spring1110.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.Spring1110.domain.AccountDTO;
import com.Spring1110.domain.LoanDTO;
import com.Spring1110.mapper.AccountMapper;
import com.Spring1110.mapper.LoanMapper;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class AccountServiveImpl implements AccountService, LoanService{
	private AccountMapper mapper;
	private LoanMapper mapper2;

	@Override
	public void register(AccountDTO acc) {
		System.out.println("서비스에서 register");
		mapper.insert(acc);
	}


	@Override
	public AccountDTO getLatest(String serial) {
		System.out.println("시스템에서 계좌로 최신조회");
		return mapper.getLat(serial);
	}

	@Override
	public List<AccountDTO> getList() {
		System.out.println("서비스에서 전체조회");
		return mapper.getList();
	}


	@Override
	public List<AccountDTO> getSerial(String serial) {
		System.out.println("서비스에서 계좌로 이력 조회");
		return mapper.getSerial(serial);
	}


	@Override
	public float getBalance(String serial) {
		System.out.println("서비스에서 잔액 조회");
		return mapper.getBalance(serial);
	}


	@Override
	public void loanRegister(LoanDTO loan) {
		System.out.println("loan서비스에서 register");
		mapper2.loaninsert(loan);
	}


	@Override
	public List<LoanDTO> loanGetSerial(String serial) {
		System.out.println("loan서비스에서 계좌로 조회");
		return mapper2.loanSerial(serial);
	}


	@Override
	public LoanDTO loanGetLat(String serial) {
		System.out.println("loan서비스에서 계좌로 최신조회");
		return mapper2.loanLat(serial);
	}
	
	

}
