package com.semillerojava.demoversion.util;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

public class EncriptarPassword {

	public static void main (String[] arg) {
	
		  var password = "321";
		  System.out.println("Password sin Encritar "+ password);
		  System.out.println("Password Encritado "+ encriptarPassword(password));
}
	
	  //encriptar
public static String encriptarPassword(String password) {
	  BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
	  return encoder.encode(password);
}
	  
	  
}
