package com.sistemas.core.seguridad;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.sistemas.core.commons.SQLBean;
import com.sistemas.seguridad.api.UsuarioBean;
import com.sistemas.seguridad.entities.Usuario;



public class UsuarioImplBean extends SQLBean implements UsuarioBean {

	@Override
	public Usuario loguear(String userName, String password) {
		// TODO Logica de acceso a datos
//		String test = this.getJdbcTemplate().queryForObject("SELECT username FROM usuarios WHERE username = ?", String.class, "test");
//		System.out.println("El usuario es:" + test );		
//		return true;

		final RowMapper<Usuario> rowMapper=new RowMapper<Usuario>() {

			@Override
			public Usuario mapRow(ResultSet resulset, int arg1) throws SQLException {
				Usuario usuario = new Usuario();
				usuario.setUserName(resulset.getString("username")); 
				return usuario;
			}
		};
		final Usuario data = this.getJdbcTemplate().queryForObject("SELECT username FROM usuarios WHERE username = ?",rowMapper, "test");
		
		System.out.println("El usuario es:" + data.getUserName() );
		return data;
	}

}
