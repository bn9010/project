package com.main.mail;
import javax.mail.MessagingException;
import javax.mail.event.MailEvent;

/**
* @author Ray
*
*/
public class PostMan {

/**
 * @param args
 */
public static void main(String[] args) {
	String from="wpdn695@gmail.com"; //메일 보내는사람
	String to="wpdn695@naver.com"; //메일 보낼사람
	String cc="cc@daum.net"; //참조
	String subject=" 잘가는지 확인중입니다"; //제목
	String content="안녕하세요 \n G-mail을 이용한 메일 발송에제입니다.\n 불편드려 죄송합니다."; //내용
	
	if (from.trim().equals("")) {
		System.out.println("보내는 사람을 입력하지 못햇습니다 확인바랍니다");
	}		
	else if (to.trim().equals("")) {
		System.out.println("받는사람을 입력하지 않았습니다.");
	}
	else {

		
		try {
			Sendmail sm=new Sendmail();
			sm.sendEmail(from, to, cc, subject, content);
			System.out.println("메일전송완료");
		} catch (MessagingException me) {
			System.out.println("메일전송 실패");
			System.out.println("실패이유 : "+me.getMessage());
			
		}
		catch (Exception e) {
			System.out.println("메일전송실패");
			System.out.println("실패이유 : "+e.getMessage());
			
			}
		}
	}
}
