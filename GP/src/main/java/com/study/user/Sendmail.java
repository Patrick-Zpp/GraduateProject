package com.study.user;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import com.study.user.model.user;

public class Sendmail extends Thread {
        //鐢ㄤ簬缁欑敤鎴峰彂閫侀偖浠剁殑閭
    /*private String from = "gacl@sohu.com";*/
    private String from = "zpp825703911@163.com";
        //閭鐨勭敤鎴峰悕
    private String username = "zpp825703911";
        //閭鐨勫瘑鐮�
    private String password = "shit56BY2";
        //鍙戦�閭欢鐨勬湇鍔″櫒鍦板潃
    private String host = "smtp.163.com";
    
    private String mailPurpose ="";
    
/*    private User user;
    public Sendmail(User user){
        this.user = user;
    }*/
    private user user;
    public Sendmail(user user, String s){
    	this.user = user;
    	this.mailPurpose=s;
    }
       
    private String emailaddress;
    public Sendmail(String emailaddress){
    	this.emailaddress = emailaddress;
    }

    /* 閲嶅啓run鏂规硶鐨勫疄鐜帮紝鍦╮un鏂规硶涓彂閫侀偖浠剁粰鎸囧畾鐨勭敤鎴�
     * @see java.lang.Thread#run()
     */
    @Override
    public void run() {
        try{
            Properties prop = new Properties();
            prop.setProperty("mail.host", host);
            prop.setProperty("mail.transport.protocol", "smtp");
            prop.setProperty("mail.smtp.auth", "true");
            Session session = Session.getInstance(prop);
            session.setDebug(true);
            Transport ts = session.getTransport();
            ts.connect(host, username, password);
            /*Message message = createEmail(session,user);*/
            Message message = createEmail(session);
            ts.sendMessage(message, message.getAllRecipients());
            ts.close();
        }catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
    
    /*public Message createEmail(Session session,User user) throws Exception{*/
    public Message createEmail(Session session) throws Exception{  
        MimeMessage message = new MimeMessage(session);
        message.setFrom(new InternetAddress(from));
        message.setRecipient(Message.RecipientType.TO, new InternetAddress(user.getEmail()));
        /*message.setRecipient(Message.RecipientType.TO, new InternetAddress(emailaddress));*/
        
        
        if(mailPurpose=="activemail"){
       	 message.setSubject("Active your online banking account");
       }else if(mailPurpose=="resetmail"){
       	 message.setSubject("Reset your password");
       }  
        
        String info = "Dear "+user.getUname()+",<br>You have just applied for a change of password."+
        		"If you want to change your password. <a href=\"http://localhost:8080/user/reset\">Please click here.</a>";
        String activeInfo="Congratulations!"+user.getUname()+
        		". <br>You created an online-bank account successfully, if you want to activate your online bank account <a href=\"http://localhost:8080/user/activate?uid="+user.getUid()+"\">click here</a>";
        
        if(mailPurpose=="activemail"){
        	message.setContent(activeInfo, "text/html;charset=UTF-8");
            message.saveChanges();
        }else if(mailPurpose=="resetmail"){
        	message.setContent(info, "text/html;charset=UTF-8");
            message.saveChanges();
        } 
        return message;
    }
}


