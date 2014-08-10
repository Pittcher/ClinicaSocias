package com.sistemas.seguridad.api;

import javax.servlet.http.HttpSession;

public interface UsuarioService {

	public boolean loguear(String userName, String password,HttpSession session);
}
