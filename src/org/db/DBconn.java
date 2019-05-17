package org.db;
import java.sql.*; 
public class DBconn {	
	public static Connection conn;     
	//Connection对象（链接）	//连接数据库	
	public static Connection getConn(){		
		try{			//加载注册SQLSever的JDBC驱动			
			Class.forName("com.mysql.jdbc.Driver");			//编写链接字符串，创建并且获取链接			
			conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/messageboard","root","123456");			
			return conn;		
		}catch(Exception e){			
				e.printStackTrace();			
				return null;		
			}	
	}	
	public static void CloseConn(){		
		try{			
			conn.close();		
		}catch(Exception e){			
				e.printStackTrace();		
		}	
	}
}
		