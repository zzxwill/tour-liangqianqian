package mybean.data;
import java.util.Date;
import java.text.SimpleDateFormat;
public class LiuYan {
    String board_title="";
    String board_context="";
    String board_name="";
    String board_time="";
    String backNews="";
    public void setBoard_name(String name){
        board_name=name;
    }
    public void setBoard_Context(String context){
       board_context=context;
   }
   public void setBoard_time(String s){
       board_time=s;
   }
   public void setBoard_title(String title)
   {
       board_title=title;
   }
   public void setBackNews(String s){
       backNews=s;
   }
   public String getBoard_name(){
       return board_name;
   }
   public String getBoard_context(){
       return board_context;
   }
   public String getBoard_time(){
        return board_time;
   }
    public String getBoard_title(){
       return board_title;
   }
   public String getBackNews(){
       return backNews;
   }
}
