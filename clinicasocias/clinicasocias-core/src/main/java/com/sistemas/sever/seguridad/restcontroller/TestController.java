//package com.sistemas.sever.seguridad.restcontroller;
//
//import java.io.IOException;
//import java.util.ArrayList;
//import java.util.HashMap;
//import java.util.List;
//
//import javax.servlet.RequestDispatcher;
//import javax.servlet.ServletException;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;
//
//import org.codehaus.jackson.map.ObjectMapper;
//import org.springframework.http.HttpHeaders;
//import org.springframework.http.HttpStatus;
//import org.springframework.http.ResponseEntity;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.bind.annotation.RequestParam;
//import org.springframework.web.bind.annotation.ResponseBody;
//
//import com.sistemas.seguridad.entities.Usuario;
//
//@Controller
//public class TestController {
//	// , produces = "application/json; charset=utf-8"
//	// ,  headers = {"content-type=application/json"}
//    @RequestMapping(value = "/test", method = RequestMethod.POST)
//    public @ResponseBody
//    ResponseEntity<String> sendMessage(HttpSession session, @RequestParam String intxnId, @RequestParam String message, HttpServletRequest request, HttpServletResponse response) {
//
//        System.out.println("Send Message UTF-8 ----------------- " + message);
//
//        String json = null;
//        HashMap<String, String> result = new HashMap<String, String>();
//        result.put("name", "test");
//        result.put("message", message);
//        result.put("time", "time");
//        ObjectMapper map = new ObjectMapper();
//        if (!result.isEmpty()) {
//            try {
//                json = map.writeValueAsString(result);
//                System.out.println("Send Message  :::::::: : " + json);
//            } catch (Exception e) {
//                e.printStackTrace();
//            }
//        }
//        HttpHeaders responseHeaders = new HttpHeaders(); 
//        responseHeaders.add("Content-Type", "application/json; charset=utf-8"); 
//        return new ResponseEntity<String>(json, responseHeaders, HttpStatus.CREATED);
//    }
//    
//    @RequestMapping(value = "/test", method = RequestMethod.GET)
//    public void lolote (HttpServletRequest request, HttpServletResponse response){
//    	System.out.println("LOLOTE:TESTCONTORELLE");
//	    RequestDispatcher view = request.getRequestDispatcher("/index.jsp");
//	    try {
//			view.forward(request, response);
//		} catch (IOException e1) {
//			// TODO Auto-generated catch block
//			e1.printStackTrace();
//		} catch (ServletException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}     	
//    }
//    
//    
//    @RequestMapping(value = "/testusu", method = RequestMethod.POST)
//    public @ResponseBody
//    ResponseEntity<String> sentestUsuario(HttpSession session, @RequestParam String intxnId, @RequestParam String message, HttpServletRequest request, HttpServletResponse response) {
//
//        System.out.println("Send Message UTF-8 ----------------- " + message);
//        String json = null;
//        
//        List<Usuario> result = new ArrayList<Usuario>();
//        
//        Usuario user1 = new Usuario();
//        user1.setApellido("apellido1");
//        
//        Usuario user2 = new Usuario();
//        user2.setApellido("apel22");
//        
//        result.add(user1);
//        result.add(user2);
//        
//        ObjectMapper map = new ObjectMapper();
//        if (!result.isEmpty()) {
//            try {
//                json = map.writeValueAsString(result);
//                System.out.println("Send Message  :::::::: : " + json);
//            } catch (Exception e) {
//                e.printStackTrace();
//            }
//        }
//        HttpHeaders responseHeaders = new HttpHeaders(); 
//        responseHeaders.add("Content-Type", "application/json; charset=utf-8"); 
//        return new ResponseEntity<String>(json, responseHeaders, HttpStatus.CREATED);
//    }
//    
//    @RequestMapping(value = "/testresponseuser", method = RequestMethod.POST)
////    @ResponseBody
//    public  @ResponseBody List<UsuarioDTO>   testResponseUsuario(HttpSession session, @RequestParam String intxnId, @RequestParam String message, HttpServletRequest request, HttpServletResponse response) {
//
//        System.out.println("Send Message UTF-8 ----------------- " + message);
//        String json = null;
//        
//        List<UsuarioDTO> result = new ArrayList<UsuarioDTO>();
//        
//        UsuarioDTO user1 = new UsuarioDTO();
//        user1.setNombre("apellido1");
//        
//        UsuarioDTO user2 = new UsuarioDTO();
//        user2.setNombre("apel22");
//        
//        result.add(user1);
//        result.add(user2);
//        
////		final Response<Fetch<UsuarioDTO>> responsed = new Response<Fetch<UsuarioDTO>>();
////		final Fetch<UsuarioDTO> fetch = new Fetch<UsuarioDTO>();
////		fetch.setData(result);
////		fetch.setStatus("0");
////		fetch.setStartRow(0);
////
////		responsed.setResponse(fetch);		
////		
////        System.out.println("Send Message  :::::::: : " + responsed);
////        return responsed;		
//        System.out.println("Send Message  :::::::: : " + result);
//        return result;
//    }
//}