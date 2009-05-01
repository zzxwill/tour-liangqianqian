package mybean.data;
import java.sql.*;
import java.awt.*;
import javax.swing.*;

public class Line {
   String tour_line_name="";
   String hot_tour_line="";
   String tour_line_intro="";
   StringBuffer backNews=new StringBuffer();
   public void setTour_line_name(String name)
   {
       tour_line_name=name;
   }
   public void setTour_line_intro(String intro)
   {
       tour_line_intro=intro;
   }
   public void setHot_tour_line(String hot)
   {
       hot_tour_line=hot;
   }
   public void setBackNews(StringBuffer s)
   {
       backNews=s;
   }
   public String getTour_line_name()
   {
       return tour_line_name;
   }
   public String getTour_line_intro()
   {
       return tour_line_intro;
   }
   public String getHot_tour_line()
   {
       return hot_tour_line;
   }
   public StringBuffer getBackNews()
   {
       return backNews;
   }
}
