package com.itsol.dao;

import java.util.HashMap;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import com.itsol.domain.Login;
import com.itsol.rowMapper.LoginRowMapper;
import com.itsol.utils.BundlesUtils;

@Repository
public class LoginDaoImpl implements LoginDao{
	private Logger log = LoggerFactory.getLogger(LoginDaoImpl.class);

	@Autowired
	private NamedParameterJdbcTemplate nameParameterJdbcTemplate;

	public Login findEmployeeById( Login login ) {
		Login loginResult = null;
		String sql = BundlesUtils.getStringById(BundlesUtils.FOLDER_SQL, "sql", "login");
		Map<String, String> maps = new HashMap<String, String>();
		maps.put("p_id", login.getId());
		try {
			loginResult = nameParameterJdbcTemplate.queryForObject(sql, maps, new LoginRowMapper());
		} catch (EmptyResultDataAccessException eRDA) {
			return loginResult;
		} catch (Exception e) {
			log.error(e.getMessage(), e);
		}
		return loginResult;
	}
}
