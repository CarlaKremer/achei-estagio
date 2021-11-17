package Model;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;
import javax.activation.DataHandler;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import javax.mail.util.ByteArrayDataSource;

public class Email {
    
    private String emailDestinatario;
    private String assunto;
    private String id;
    private String nome;
    
    private InputStream arquivo;
    private InputStream arquivo2;


    public InputStream getArquivo() {
        return arquivo;
    }

    public void setArquivo(InputStream arquivo) {
        this.arquivo = arquivo;
    }
    
        public InputStream getArquivo2() {
        return arquivo2;
    }

    public void setArquivo2(InputStream arquivo2) {
        this.arquivo2 = arquivo2;
    }

    public String getEmailDestinatario() {
        return emailDestinatario;
    }

    public void setEmailDestinatario(String emailDestinatario) {
        this.emailDestinatario = emailDestinatario;
    }

    public String getAssunto() {
        return assunto;
    }

    public void setAssunto(String assunto) {
        this.assunto = assunto;
    }

    public String getId() {
        return id;
    }

    public void setid(String id) {
        this.id = id;
    }
    
    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }


    public boolean enviarGmail() throws IOException {
        boolean retorno = false;
        Properties props = new Properties();
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.socketFactory.port", "465");
        props.put("mail.smtp.socketFactory.class",
                "javax.net.ssl.SSLSocketFactory");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.port", "465");

        Session s = Session.getInstance(props,new javax.mail.Authenticator() {
                    protected PasswordAuthentication getPasswordAuthentication() {
                        return new PasswordAuthentication("achei.estagi@gmail.com", "7V9hkRh6kHV4Vc"); 
                    }
                });

        try {
            MimeMessage message = new MimeMessage(s);
            //destinatario e rementente
            message.setFrom(new InternetAddress("achei.estagi@gmail.com"));
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(this.emailDestinatario));
            
            //primeira parte email texto
            MimeBodyPart txt = new MimeBodyPart();
            txt.setText("Documentação final de "+this.nome+", Id: "+this.id);
            
            //segunda parte email com anexo
            MimeBodyPart arq = new MimeBodyPart();
            //anexando arquivo
            ByteArrayDataSource ds = new ByteArrayDataSource(this.arquivo, "application/pdf"); 
            arq.setDataHandler(new DataHandler(ds));
            arq.setFileName("ficha.pdf");
            
            //terceira parte email com anexo
            MimeBodyPart arq2 = new MimeBodyPart();
            //anexando arquivo
            ByteArrayDataSource ds2 = new ByteArrayDataSource(this.arquivo2, "application/pdf"); 
            arq2.setDataHandler(new DataHandler(ds2));
            arq2.setFileName("declaracao.pdf");
            
            //mp.addBodyPart(messageBodyPart);
            //junta partes do email
            Multipart mp = new MimeMultipart();
            mp.addBodyPart(txt);
            mp.addBodyPart(arq);
            mp.addBodyPart(arq2);
            
            //seta conteúdo e assunto
            message.setContent(mp);
            message.setSubject(this.assunto);
            
            //envia
            Transport.send(message);
            
            retorno = true;

        } catch (MessagingException e) {
            retorno = false;
            e.printStackTrace();
        }
        return retorno;
    }
}