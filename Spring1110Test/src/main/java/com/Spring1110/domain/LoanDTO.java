package com.Spring1110.domain;

import lombok.Data;

@Data
public class LoanDTO {
	private int record;
	private String lawn_name;
	private float lawn_amount;
	private float lawn_withdraw;
	private float lawn_balance;
	private String serial;
}
