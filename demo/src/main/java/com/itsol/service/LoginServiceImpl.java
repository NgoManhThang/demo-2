package com.itsol.service;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.itsol.dao.LoginDao;
import com.itsol.domain.Login;

@Service
@Transactional
public class LoginServiceImpl implements LoginService {
	private Logger log = LoggerFactory.getLogger(LoginServiceImpl.class);

	@Autowired
	LoginDao loginDao;

	public boolean checkLogin( Login login, HttpSession session ) {
		Login loginResult = loginDao.findEmployeeById(login);
		if(loginResult != null && loginResult.getPassWord().equals(login.getPassWord())) {
			session.setAttribute("loginInfo", loginResult);
			return true;
		}
		return false;
	}
}
