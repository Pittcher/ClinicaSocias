package com.sistemas.core.seguridad;

import java.security.InvalidKeyException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.RowMapper;

import com.sistemas.core.commons.SQLBean;
import com.sistemas.seguridad.api.CriptHelper;
import com.sistemas.seguridad.api.UsuarioBean;
import com.sistemas.seguridad.entities.Usuario;



public class UsuarioImplBean extends SQLBean implements UsuarioBean {

	@Autowired
	private CriptHelper cripto;
	
	@Override
	public Usuario loguear(String userName, String password) throws InvalidKeyException, IllegalBlockSizeException, BadPaddingException {
		// TODO Logica de acceso a datos
//		String test = this.getJdbcTemplate().queryForObject("SELECT username FROM usuarios WHERE username = ?", String.class, "test");
//		System.out.println("El usuario es:" + test );		
//		return true;

		final RowMapper<Usuario> rowMapper=new RowMapper<Usuario>() {

			@Override
			public Usuario mapRow(ResultSet resulset, int arg1) throws SQLException {
				Usuario usuario = new Usuario();
				usuario.setUserName(resulset.getString("username"));
				usuario.setPassword(resulset.getString("password"));
				return usuario;
			}
		};
		final Usuario data = this.getJdbcTemplate().queryForObject("SELECT username,password FROM usuarios WHERE username = ?",rowMapper, userName);
		
		System.out.println("El usuario es:" + data.getUserName() );
		if(cripto.encryt(password).equals(data.getPassword())){
			return data;
		}else{
			return null;
		}
		

	}

	@Override
	public boolean crearUsuario(String userName, String password) throws  InvalidKeyException, IllegalBlockSizeException, BadPaddingException {
		// TODO Auto-generated method stub
		this.getJdbcTemplate().update("INSERT INTO usuarios(username,password) VALUES (?,?)", userName,cripto.encryt(password));
		return true;
	}

}
