package com.test;


import java.nio.ByteBuffer;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.util.Arrays;

import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.ShortBufferException;
import javax.crypto.spec.SecretKeySpec;

import org.apache.commons.codec.DecoderException;
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
	
	
//	@Test
	public void testTTT() throws DecoderException{
		String text = "LOLO";
		System.out.println(text);
		System.out.println(text.getBytes());
		
		System.out.println(new String( text.getBytes()));
		
		System.out.println(new String( text.getBytes()).toCharArray() );
		
		byte[] btext = text.getBytes();
		System.out.println("btext:" + btext);
		
//		String texto2b = btext.toString();
//		System.out.println("texto2b: " + texto2b);
//		System.out.println("texto2b: " + texto2b.getBytes());
		
//		System.out.println("test11111: " +texto2b.toCharArray());
		
	}
	
	@Test
	public void testUser() throws InvalidKeyException, IllegalBlockSizeException, BadPaddingException{
		String texto = "Prueba1";
		System.out.println(texto);
		
		String textoec= crip.encryt(texto);
		System.out.println("Test_Cryp"+textoec);
		
		String textodesc= crip.decryt(textoec);
		System.out.println("Test_Decr:" + textodesc);
	}

//	@Test
	public void testCriptXX() throws NoSuchAlgorithmException, NoSuchProviderException, NoSuchPaddingException, InvalidKeyException, ShortBufferException, IllegalBlockSizeException, BadPaddingException{
		try{
 
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
//		    System.out.println("for (byte b : textEncrypted)");
//		    for (byte b : textEncrypted) {
//				System.out.println(b);
//			}
		    
		    String textoEncriptado = Arrays.toString(textEncrypted).replace("[", "").replace("]","").trim();
		    
		    byte[] bufferch = new byte[textoEncriptado.split(",").length];
		    String [] arrsss = textoEncriptado.split(",");
//		    System.out.println("for(int i = 0; i<bufferch.length;i++){");
		    for(int i = 0; i<bufferch.length;i++){
//		    	System.out.println(arrsss[i]);
		    	bufferch[i]=Integer.valueOf(arrsss[i].trim()).byteValue();
		    }
		    
		    System.out.println(" bufferch __ " + bufferch);
		    System.out.println(" bufferchAAA __ " + Arrays.toString(bufferch) );
		    
		    System.out.println("Text PREDecryted : " + Arrays.toString(textEncrypted));
		    System.out.println( "  bufferch:  " + bufferch);

		    byte[] textDecrypted = desCipher.doFinal(bufferch);	    
		     
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
//		    byte[] textDecrypted = desCipher.doFinal(textEncrypted);
		    System.out.println("for (byte b : textEncrypted)");
		    for (byte b : textEncrypted) {
				System.out.println(b);
			}
//		    System.out.println("char[] arrcah= Arrays.toString(textEncrypted).toCharArray();");
//		    char[] arrcah= Arrays.toString(textEncrypted).toCharArray();
//		    for (char c : arrcah) {
//				System.out.println(c);
//			}
		    
		    
//		    System.out.println( Integer.valueOf("-114"));
		    
		    ByteBuffer bbfr = ByteBuffer.allocate(Arrays.toString(textEncrypted).length());
		    
		    
		    byte[] bufferch = new byte[Arrays.toString(textEncrypted).split(",").length];
		    String [] arrsss = Arrays.toString(textEncrypted).split(",");
		    System.out.println("for(int i = 0; i<bufferch.length;i++){");
		    for(int i = 0; i<bufferch.length;i++){
		    	System.out.println(arrsss[i]);
		    	bufferch[i]=Integer.valueOf(arrsss[i].replace("[", "").replace("]","").trim()).byteValue();
//		    	bbfr.putInt(Integer.valueOf(arrsss[i].replace("[", "").replace("]","").trim()));
		    }
		    
		    System.out.println(" bufferch __ " + bufferch);
		    System.out.println(" bufferchAAA __ " + Arrays.toString(bufferch) );
		    
		    System.out.println(" bbfr -> " + bbfr.array());
		    System.out.println(" bbfrAA -> " + Arrays.toString(bbfr.array()));
		    
		    System.out.println("Text PREDecryted : " + Arrays.toString(textEncrypted));
		    System.out.println( "  bufferch:  " + bufferch);
//		    byte[] textDecrypted = desCipher.doFinal(Arrays.toString(textEncrypted).getBytes());
//		    byte[] textDecrypted = desCipher.doFinal(bbfr.array());
		    byte[] textDecrypted = desCipher.doFinal(bufferch);	    
		     
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