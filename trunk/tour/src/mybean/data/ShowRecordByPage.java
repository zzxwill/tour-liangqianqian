package mybean.data;
import java.sql.*;
import com.sun.rowset.*;
import java.awt.*;
import com.sun.rowset.*;

import javax.swing.*;

public class ShowRecordByPage {
    int pageSize=3;
    int pageAllCount=0;
    int showPage=1;
    StringBuffer presentPageResult;
    CachedRowSetImpl rowSet=null;
    public void setRowSet(CachedRowSetImpl set)
    {
        rowSet=set;
    }
    public CachedRowSetImpl getRowSet()
    {
        return rowSet;
    }

    public void setPageSize(int size)
    {
        pageSize=size;
    }
    public int getPageSize()
    {
        return pageSize;
    }
    public int getPageAllCount()
    {
        return pageAllCount;
    }
    public void setPageAllCount(int n)
    {
        pageAllCount=n;
    }
    public void setShowPage(int n)
    {
        showPage=n;
    }
    public int getShowPage()
    {
        return showPage;
    }
    public void setPresentPageResult(StringBuffer p)
    {
        presentPageResult=p;
    }
    public StringBuffer getPresentPageResult()
    {
        return presentPageResult;
    }
}
