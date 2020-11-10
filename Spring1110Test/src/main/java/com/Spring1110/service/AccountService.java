package com.Spring1110.service;

import java.util.List;

import com.Spring1110.domain.AccountDTO;

public interface AccountService {
	public void register(AccountDTO acc);
	public List<AccountDTO> getList();
	public List<AccountDTO> getSerial(String serial);
	public AccountDTO getLatest(String serial);
	public float getBalance(String serial);
	
}
