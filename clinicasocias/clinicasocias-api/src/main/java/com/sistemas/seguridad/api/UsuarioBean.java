package com.sistemas.seguridad.api;

import com.sistemas.seguridad.entities.Usuario;

public interface UsuarioBean {

	public Usuario loguear(String userName, String password);
}
