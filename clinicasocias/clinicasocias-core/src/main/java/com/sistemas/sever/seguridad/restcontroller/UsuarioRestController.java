package com.sistemas.sever.seguridad.restcontroller;

import java.io.IOException;
import java.text.SimpleDateFormat;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sistemas.seguridad.api.UsuarioService;

@Controller
@RequestMapping("/seguridad/usuario")
//@SessionAttributes({ SeguridadWebBean.HTTP_SESSION_USUARIO_LOGUEADO,
//		SeguridadWebBean.HTTP_SESSION_FUNCIONALIDADES_PERMITIDAS })
//public class UsuarioRestController extends HasarRestController {
public class UsuarioRestController {

	/*
	 * NOTA:
	 * Para poder trabajar con @SessionAttributes hay que estar seguro que la sesion todavia esta activa. Se soluciona poniendo un listener
	 * que detecta sesiones invalidas
	 */
	
	SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy HH:mm");

//	@Autowired
//	private UsuarioBean usuarioBean;
//	@Autowired
//	private SeguridadWebBean seguridadWebBean;

	@Autowired
	private UsuarioService usuarioService;
	
	@RequestMapping(value="/loguear", method=RequestMethod.POST)
	public void loguear(HttpServletRequest request, HttpServletResponse response) {

	
		System.out.println("llegue");
		System.out.println(usuarioService);
		System.out.println(request.getParameter("user"));
		System.out.println(request.getParameter("password"));
		try {
//			if( usuarioService.login(request.getParameter("user"),request.getParameter("password"),request.getSession())!=false){
			usuarioService.loguear(request.getParameter("user"), request.getParameter("password"),request.getSession());
			    RequestDispatcher view = request.getRequestDispatcher("/index.jsp");
			    try {
					view.forward(request, response);
				} catch (IOException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				} catch (ServletException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} 
//			}else{
//				throw new LoginException("Usuario incorrecto");
//			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	
}
//