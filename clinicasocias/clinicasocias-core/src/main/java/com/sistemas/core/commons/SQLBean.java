package com.sistemas.core.commons;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.simple.SimpleJdbcTemplate;

public abstract class SQLBean{
	
	private SimpleJdbcTemplate jdbcTemplate;
	
	@Autowired
	public void setDataSource(DataSource dataSource) {
		this.jdbcTemplate = new SimpleJdbcTemplate(dataSource);
	}
	
	public SimpleJdbcTemplate getJdbcTemplate() {
		return this.jdbcTemplate;
	}
}
