package com.cetpa;

import java.sql.*;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

@WebListener
public class ConnectionListener implements ServletContextListener
{
	public void contextInitialized(ServletContextEvent evt)
	{
		ServletContext context=evt.getServletContext();
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
     	    Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbc2","root","mysql");
     	    Statement stlist=cn.createStatement();
     	    context.setAttribute("list", stlist);
     	    PreparedStatement psselect=cn.prepareStatement("select * from employeedetails where eid=?");
     	    context.setAttribute("select",psselect);
     	    PreparedStatement psinsert=cn.prepareStatement("insert into employeedetails values(?,?,?,?,?,?,?)");
     	    context.setAttribute("insert",psinsert);
     	    PreparedStatement psedit=cn.prepareStatement("update employeedetails set firstname=?,lastname=?,phoneno=?,emailid=?,department=?,salary=? where eid=?");
     	    context.setAttribute("edit",psedit);
     	    PreparedStatement psdelete=cn.prepareStatement("delete from employeedetails where eid=?");
     	    context.setAttribute("delete",psdelete);
		}catch(Exception ex)
		{
			System.out.println(ex);
		}
		
	}

}
