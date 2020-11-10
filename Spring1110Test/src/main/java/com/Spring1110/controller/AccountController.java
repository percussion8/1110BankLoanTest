package com.Spring1110.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.Spring1110.domain.AccountDTO;
import com.Spring1110.domain.LoanDTO;
import com.Spring1110.service.AccountService;
import com.Spring1110.service.LoanService;

import lombok.AllArgsConstructor;

@Controller
@RequestMapping("/bank/*")
@AllArgsConstructor
public class AccountController {
	private AccountService service;
	private LoanService loanserv;
	
	@GetMapping("/all")
	public void list(Model model) {
		model.addAttribute("all", service.getList());
	}
	
	@GetMapping("/balance")
	public void balance(@RequestParam("free_serial") String free_serial, Model model) {
		model.addAttribute("bal", service.getBalance(free_serial));
		model.addAttribute("history", service.getSerial(free_serial));
		model.addAttribute("serial", free_serial);
	}
	
	@GetMapping("/depwid")
	public void depwid(@RequestParam("free_serial") String serial, Model model) {
		model.addAttribute("review", service.getLatest(serial));
		
	}
	
	@PostMapping("/depwid")
	public String depwid(AccountDTO account, RedirectAttributes rttr) {
		service.register(account);
		rttr.addFlashAttribute("result", account.getFree_record());
		return "redirect:/bank/all";
	}
	
	@GetMapping("/loan")
	public void loan(@RequestParam("serial") String serial, Model model) {
		model.addAttribute("seriloan", loanserv.loanGetSerial(serial));
		model.addAttribute("loanserial", serial);
	}
	
	@GetMapping("/depwidloan")
	public void loanDeposit(@RequestParam("deploan")String loanserial, Model model) {
		model.addAttribute("loanLat", loanserv.loanGetLat(loanserial));
	}
	
	@PostMapping("/depwidloan")
	public String loanInsert(LoanDTO loan, RedirectAttributes rttr) {
		loanserv.loanRegister(loan);
		rttr.addFlashAttribute("result", loan.getLawn_balance());
		return "redirect:/bank/loan?serial=" + loan.getSerial();
	}
	

}
