package com.seguridad;

import java.security.InvalidKeyException;

import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.sistemas.seguridad.api.UsuarioBean;

@ContextConfiguration(locations={"/clinicasocias-core-context.xml"})
@RunWith(SpringJUnit4ClassRunner.class)

public class SeguridadTest {

	@Autowired
	private UsuarioBean usuario;
	
	@Test
	public void createUsuarioTest(){
		try {
			usuario.crearUsuario("test", "test123");
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
	}
	
//	@Test
	public void lolo(){
		
		// No se rebierte sin la Key
	    String textoEncriptado = "-26, 53, 87, 61, -85, 88, -113, -97".replace("[", "").replace("]","").trim();
    
	    byte[] bufferch = new byte[textoEncriptado.split(",").length];
	    String [] arrsss = textoEncriptado.split(",");
	    for(int i = 0; i<bufferch.length;i++){
	    	bufferch[i]=Integer.valueOf(arrsss[i].trim()).byteValue();
	    }
		System.out.println(new String(bufferch));
	}	
}
