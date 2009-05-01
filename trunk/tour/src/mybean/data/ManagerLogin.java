package mybean.data;
public class ManagerLogin
{
    String manager_name;
    String manager_key;
    String backNews="";
    boolean success=false;
    public void setManager_name(String name)
    {
        manager_name=name;
    }
    public String getManager_name()
    {
        return manager_name;
    }
    public void setManager_key(String key)
    {
        manager_key=key;
    }
    public String getManager_key()
    {
        return manager_key;
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
