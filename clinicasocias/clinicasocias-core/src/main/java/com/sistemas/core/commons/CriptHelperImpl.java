package com.sistemas.core.commons;

import java.security.InvalidKeyException;
import java.util.Arrays;

import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.spec.SecretKeySpec;

import com.sistemas.seguridad.api.CriptHelper;

public class CriptHelperImpl implements CriptHelper {

	private Cipher desCipher;
	private SecretKeySpec keyKun;
	
	public CriptHelperImpl(){
	    
		try{
			
		    desCipher = Cipher.getInstance("DES/ECB/PKCS5Padding");
		    keyKun = new SecretKeySpec("K$n1;4nO".getBytes(), "DES");
	    
		}catch(Exception e){
			System.out.println(e.getStackTrace());
		}
	}
	
	@Override
	public String encryt(String texto) throws IllegalBlockSizeException, BadPaddingException, InvalidKeyException {
		// TODO Auto-generated method stub
		desCipher.init(Cipher.ENCRYPT_MODE, this.keyKun);
		System.out.println("bytes" + desCipher.doFinal(texto.getBytes()));
		System.out.println("toestring"+ desCipher.doFinal(texto.getBytes()).toString());
//		return desCipher.doFinal(texto.getBytes()).toString();
		return Arrays.toString(desCipher.doFinal(texto.getBytes())).replace("[", "").replace("]","").trim();
//		return desCipher.doFinal(texto.getBytes()).toString();
	}

	@Override
	public String decryt(String texto) throws IllegalBlockSizeException, BadPaddingException, InvalidKeyException {
		// TODO Auto-generated method stub
		desCipher.init(Cipher.DECRYPT_MODE, this.keyKun);
//		return new String(desCipher.doFinal(texto.getBytes()));
//		System.out.println("Decrip_Bytes" + texto.getBytes());
//		System.out.println("Descrip_toSt" + desCipher.doFinal(texto.getBytes()).toString());
		
//		return desCipher.doFinal(texto.getBytes()).toString();
//		System.out.println("Decrip_Bytes" + texto.toCharArray());
	    String textoEncriptado = texto.replace("[", "").replace("]","").trim();
	    
	    System.out.println("textoEncriptado: " + textoEncriptado);
	    
	    byte[] bufferch = new byte[textoEncriptado.split(",").length];
	    String [] arrsss = textoEncriptado.split(",");
	    for(int i = 0; i<bufferch.length;i++){
	    	System.out.println(arrsss[i]);
	    	bufferch[i]=Integer.valueOf(arrsss[i].trim()).byteValue();
	    }
	    
		return new String(desCipher.doFinal(bufferch));
		
//		return desCipher.doFinal(bufferch).toString();
	}

}
