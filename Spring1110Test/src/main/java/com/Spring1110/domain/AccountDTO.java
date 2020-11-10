package com.Spring1110.domain;

import lombok.Data;

@Data
public class AccountDTO {
	private int free_record;
	private String free_name;
	private String free_password;
	private String free_serial;
	private float deposit;
	private float withdraw;
	private float balance;
	private char avail;
}
