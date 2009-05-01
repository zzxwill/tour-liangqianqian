package mybean.data;
public class Login
{
    String user_name;
    String user_key;
    String backNews="";
    boolean success=false;
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
    public void setBackNews(String s)
    {
        backNews=s;
    }
    public String getBackNews()
    {
        return backNews;
    }
    public void setSuccess(boolean b)
    {
        success=b;
    }
    public boolean getSuccess()
    {
        return success;
    }
}
