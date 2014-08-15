package com.sistemas.core.commons;

import java.security.InvalidKeyException;

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
		return new String(desCipher.doFinal(texto.getBytes()));
	}

	@Override
	public String decryt(String texto) throws IllegalBlockSizeException, BadPaddingException, InvalidKeyException {
		// TODO Auto-generated method stub
		desCipher.init(Cipher.DECRYPT_MODE, this.keyKun);
		return new String(desCipher.doFinal(texto));
	}

}
