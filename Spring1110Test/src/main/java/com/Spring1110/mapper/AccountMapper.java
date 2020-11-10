package com.Spring1110.mapper;

import java.util.List;

import com.Spring1110.domain.AccountDTO;

public interface AccountMapper {
	public void insert(AccountDTO acc); //새 계좌생성
	public List<AccountDTO> getList(); //전체계좌 히스토리 조회
	public List<AccountDTO> getSerial(String serial); //계좌 히스토리 조회
	public AccountDTO getLat(String serial); //계좌의 마지막 히스토리 조회
	//public void add(AccountDTO acc); //입/출금
	public float getBalance(String serial); //잔액조회

}
