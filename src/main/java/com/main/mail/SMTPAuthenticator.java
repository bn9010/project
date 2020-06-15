package com.main.mail;

import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;

public class SMTPAuthenticator extends Authenticator{
protected PasswordAuthentication getPasswordAuthentication() {
	String username ="wpdn695@gmail.com"; //gmail사용
	String password ="jehyung10"; //패스워드
	return new PasswordAuthentication(username, password);
}
}
