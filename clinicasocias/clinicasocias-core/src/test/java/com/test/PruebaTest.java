package com.test;


import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;

import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.ShortBufferException;
import javax.crypto.spec.SecretKeySpec;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.sistemas.seguridad.api.CriptHelper;
import com.sistemas.seguridad.api.UsuarioBean;

@ContextConfiguration(locations={"/clinicasocias-core-context.xml"})
@RunWith(SpringJUnit4ClassRunner.class)

public class PruebaTest {

	@Autowired
	private UsuarioBean usuario;
	
	@Autowired
	private CriptHelper crip;
	
	@Test
	public void testUser() throws InvalidKeyException, IllegalBlockSizeException, BadPaddingException{
		String texto = "Prueba1";
		System.out.println(texto);
		
		String textoec= crip.encryt(texto);
		System.out.println(textoec);
		
		String textodesc= crip.decryt(textoec);
		System.out.println(textodesc);
	}

//	@Test
	public void testCript() throws NoSuchAlgorithmException, NoSuchProviderException, NoSuchPaddingException, InvalidKeyException, ShortBufferException, IllegalBlockSizeException, BadPaddingException{
		try{
			 
//		    KeyGenerator keygenerator = KeyGenerator.getInstance("DES");
//		    SecretKey myDesKey = keygenerator.generateKey();
 
		    Cipher desCipher;
 
		    // Create the cipher 
		    desCipher = Cipher.getInstance("DES/ECB/PKCS5Padding");
 
		    // Initialize the cipher for encryption
		    //K$n1;4nO
		    SecretKeySpec keyKun = new SecretKeySpec("K$n1;4nO".getBytes(), "DES");
		    desCipher.init(Cipher.ENCRYPT_MODE, keyKun);
 
		    //sensitive information
		    byte[] text = "No body can see me".getBytes();
 
		    System.out.println("Text [Byte Format] : " + text);
		    System.out.println("Text : " + new String(text));
 
		    // Encrypt the text
		    byte[] textEncrypted = desCipher.doFinal(text);
 
		    System.out.println("Text Encryted : " + textEncrypted);
 
		    // Initialize the same cipher for decryption
		    desCipher.init(Cipher.DECRYPT_MODE, keyKun);
 
		    // Decrypt the text
		    byte[] textDecrypted = desCipher.doFinal(textEncrypted);
 
		    System.out.println("Text Decryted : " + new String(textDecrypted));
 
		}catch(NoSuchAlgorithmException e){
			e.printStackTrace();
		}catch(NoSuchPaddingException e){
			e.printStackTrace();
		}catch(InvalidKeyException e){
			e.printStackTrace();
		}catch(IllegalBlockSizeException e){
			e.printStackTrace();
		}catch(BadPaddingException e){
			e.printStackTrace();
		} 
	}
}