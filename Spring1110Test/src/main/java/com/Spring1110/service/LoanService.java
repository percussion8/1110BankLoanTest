package com.Spring1110.service;

import java.util.List;

import com.Spring1110.domain.LoanDTO;

public interface LoanService {
	public void loanRegister(LoanDTO loan);
	public List<LoanDTO> loanGetSerial(String serial);
	public LoanDTO loanGetLat(String serial);
}
