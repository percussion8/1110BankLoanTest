package com.Spring1110.mapper;

import java.util.List;

import com.Spring1110.domain.LoanDTO;

public interface LoanMapper {
	public void loaninsert(LoanDTO loan);
	public List<LoanDTO> loanSerial(String serial);
	public LoanDTO loanLat(String serial);
}
