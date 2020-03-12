package singh.mahabir.chat.mypack;

import java.util.Properties;
import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;


public class SendMailSSL {
    public static void send(String sendto,String pass) {
        final String userName = "mahabirsingh2014@gmail.com"; // define id from which u want to send mail
        final String password = "Hareram28@"; // define password
        
        Properties props = new Properties();
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "465");
        props.put("mail.smtp.socketFactory.port", "465");
        props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
        props.put("mail.smtp.auth", "true");
        
        Session emailSession = Session.getDefaultInstance(props, new Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication(){
                return new PasswordAuthentication(userName, password);
            }
        });
        
        try{
            Message message = new MimeMessage(emailSession);
            message.setFrom(new InternetAddress("mahabirsingh2014@gmail.com"));
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(sendto));
            message.setSubject("your forget password is");
            message.setText(pass);
            Transport.send(message);
            System.out.println(message.getSize()+"\n"+message.getSubject());
        }catch(MessagingException ex){
            ex.printStackTrace();
        }
    }
}
