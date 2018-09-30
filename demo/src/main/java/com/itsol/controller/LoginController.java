package com.itsol.controller;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.itsol.domain.Login;
import com.itsol.service.LoginService;
import com.itsol.utils.BundlesUtils;

@Controller
public class LoginController {

	@Autowired
	private LoginService loginService;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String loginGet( Model model ) {
		Login login = new Login();
		model.addAttribute("login", login);
		return "login"; // ログイン画面の表示
	}

	@RequestMapping(value = "/", method = RequestMethod.POST)
	public String loginPost( @Valid Login login, Errors errors, Model model, HttpSession session ) {
		if( errors.hasErrors() ) {
			return "login";
		}
		boolean checkLogin = loginService.checkLogin(login, session);
		if( checkLogin ) {
			return "redirect:/list-member";
		}
		model.addAttribute("loginFail", BundlesUtils.getStringById("", "messages", "loginFail"));
		return "login";
	}
}
