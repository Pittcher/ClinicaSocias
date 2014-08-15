package com.sistemas.seguridad.api;

import java.security.InvalidKeyException;

import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;

public interface CriptHelper {
	public String encryt(String texto) throws IllegalBlockSizeException, BadPaddingException, InvalidKeyException ;
	public String decryt(String texto) throws IllegalBlockSizeException, BadPaddingException, InvalidKeyException ;
}
