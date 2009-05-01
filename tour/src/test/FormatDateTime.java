package test;
import java.text.*;
import java.util.Date;
public class FormatDateTime {
    
    public static String toLongDateString(Date dt){
        SimpleDateFormat myFmt=new SimpleDateFormat("yyyy年MM月dd日 HH时mm分ss秒 E ");        
        return myFmt.format(dt);
    }
   
    public static String toShortDateString(Date dt){
        SimpleDateFormat myFmt=new SimpleDateFormat("yy年MM月dd日 HH时mm分");        
        return myFmt.format(dt);
    }    
   
    public static String toLongTimeString(Date dt){
        SimpleDateFormat myFmt=new SimpleDateFormat("HH mm ss SSSS");        
        return myFmt.format(dt);
    }
    public static String toShortTimeString(Date dt){
        SimpleDateFormat myFmt=new SimpleDateFormat("yy/MM/dd HH:mm");        
        return myFmt.format(dt);
    }
   
    public static void main(String[] args) {

        Date now=new Date();

        System.out.println(FormatDateTime.toLongDateString(now));
        System.out.println(FormatDateTime.toShortDateString(now));
        System.out.println(FormatDateTime.toLongTimeString(now));
        System.out.println(FormatDateTime.toShortTimeString(now));
    }    
   
}


