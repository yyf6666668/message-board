package org.db;
import java.sql.*; 
public class DBconn {	
	public static Connection conn;     
	//Connection�������ӣ�	//�������ݿ�	
	public static Connection getConn(){		
		try{			//����ע��SQLSever��JDBC����			
			Class.forName("com.mysql.jdbc.Driver");			//��д�����ַ������������һ�ȡ����			
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
		