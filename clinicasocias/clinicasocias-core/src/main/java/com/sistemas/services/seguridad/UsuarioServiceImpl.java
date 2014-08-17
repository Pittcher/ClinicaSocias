package com.sistemas.services.seguridad;

import java.security.InvalidKeyException;

import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import com.sistemas.seguridad.api.UsuarioBean;
import com.sistemas.seguridad.api.UsuarioService;
import com.sistemas.seguridad.entities.Usuario;

public class UsuarioServiceImpl implements UsuarioService {

	@Autowired
	private UsuarioBean usuarioBean;
	
	public static final String HTTP_SESSION_USUARIO_LOGUEADO = "usuarioLogueado";
	public static final String HTTP_SESSION_FUNCIONALIDADES_PERMITIDAS = "funcionalidadesPermitidos";
	public static final String HTTP_SESSION_NOMBRE_USUARIO = "nombreUsuario";
	
	public boolean loguear(String userName, String password,HttpSession session){
		
		Usuario usuario;
		try {
			usuario = this.usuarioBean.loguear(userName, password);
//			HttpSession session = RequestFactoryServlet.getThreadLocalRequest().getSession();
			session.setAttribute(HTTP_SESSION_USUARIO_LOGUEADO, usuario);			
//			session.setAttribute(HTTP_SESSION_FUNCIONALIDADES_PERMITIDAS, usuarioBean.obtenerFuncionalidades(usuario));
			session.setAttribute(HTTP_SESSION_NOMBRE_USUARIO, usuario.getUserName());
			//////////////////////////
		} catch (InvalidKeyException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalBlockSizeException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (BadPaddingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	return true;
		
//		return usuarioBean.loguear(userName, password);
	}
}
