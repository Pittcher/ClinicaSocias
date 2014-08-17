package com.sistemas.seguridad.api;

import java.security.InvalidKeyException;

import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;

import com.sistemas.seguridad.entities.Usuario;

public interface UsuarioBean {

	public Usuario loguear(String userName, String password) throws InvalidKeyException, IllegalBlockSizeException, BadPaddingException ;
	public boolean crearUsuario(String userName, String password)  throws  InvalidKeyException, IllegalBlockSizeException, BadPaddingException ;
}
