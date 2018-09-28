package com.itsol.service;

import javax.servlet.http.HttpSession;

import com.itsol.domain.Login;

public interface LoginService {
	public boolean checkLogin( Login login , HttpSession session);
}
