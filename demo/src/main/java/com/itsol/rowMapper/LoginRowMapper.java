package com.itsol.rowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.itsol.domain.Login;

public class LoginRowMapper implements RowMapper<Login>{

	public Login mapRow( ResultSet rs, int rowNum ) throws SQLException {
		Login login = new Login();
		login.setId(rs.getString("ID"));
		login.setCode(rs.getString("CODE"));
		login.setName(rs.getString("NAME"));
		login.setPassWord(rs.getString("PASSWORD"));
		return login;
	}

}
