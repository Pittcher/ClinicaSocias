package com.sistemas.mwr40.server.common;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class SessionTimeOutFilter implements Filter  {

	private FilterConfig filterConfig;
	private boolean expiro = false;
	
	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain filterChain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		HttpServletResponse httpResponse = (HttpServletResponse) response;
		HttpSession session = ((HttpServletRequest) request).getSession(false);

//		if (session != null && !session.isNew()){
//			System.out.println("IS new : "+ session.isNew());
//			if(expiro){
//				httpResponse.sendRedirect("/loginmwr40.jsp");
//			}else{
//				filterChain.doFilter(request, response);
//			}
//			
//			expiro= false;
//		}else{
//			System.out.println("Session es NUll: ");
//			expiro= true;
//			filterChain.doFilter(request, response);
//		}
//		
		filterChain.doFilter(request, response);
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub
		this.filterConfig = arg0;
	}

}
