package mybean.data;

import java.awt.*;

import javax.swing.*;

public class Register  {
    String user_name="",user_key="",sex="",email="";
    String backNews;
    public void setUser_name(String name)
     {
         user_name=name;
     }
     public String getUser_name()
     {
         return user_name;
     }
     public void setUser_key(String key)
     {
         user_key=key;
     }
     public String getUser_key()
     {
         return user_key;
     }
     public void setSex(String xingbie)
     {
         sex=xingbie;
     }
     public String getSex()
     {
         return sex;
     }
     public void setEmail(String mail)
     {
         email=mail;
     }
     public String getEmail()
     {
         return email;
     }
     public void setBackNews(String s)
     {
         backNews=s;
     }
     public String getBackNews()
     {
         return backNews;
     }

}
