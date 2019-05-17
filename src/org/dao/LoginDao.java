package org.dao;
import java.sql.*;
import org.model.*;
import org.db.*;
import java.util.ArrayList;
public class LoginDao {	
	Connection conn=DBconn.getConn(); ;                                      //���ݿ����Ӷ���	
	PreparedStatement pstmt;	
	public Login checkLogin(String name,String password){ //��֤�û�������		
		try{	
			System.out.println("---geageag"+name);
			pstmt=conn.prepareStatement("select id,userName,password,role from loginss where userName=? " + " and password=?");			
			pstmt.setString(1, name);                     //����SQL������			
			pstmt.setString(2, password);                 //����SQL������			
			ResultSet rs=pstmt.executeQuery();          //ִ�в�ѯ�����ؽ����			
			if(rs.next()){                                //ͨ��JavaBean����ֵ				
				Login login=new Login();				
				login.setId(rs.getInt("id"));
				login.setName(rs.getString("userName"));				
				login.setPassword(rs.getString("password"));				
				login.setRole(rs.getInt("role"));
				login.setName(name);
				System.out.println(login+"--------------------");
				return login;                             //����JavaBean����			
			}			
			return null;                                  //��֤ʧ�ܷ���null		
		}catch(Exception e){			
				e.printStackTrace();			
				return null;		
			}	
	}	
	public  ArrayList<MessBoar> findMbInfo(){		
		try{			
			ArrayList<MessBoar> al=new ArrayList<MessBoar>();			
			pstmt=conn.prepareStatement("select * from messagess");			
			ResultSet rs=pstmt.executeQuery();
			while(rs.next()){				
				MessBoar mb=new MessBoar();				
				mb.setId(rs.getInt(1));				
				mb.setName(rs.getString("name"));				
				mb.setTime(rs.getDate(3));				
				mb.setTitle(rs.getString(4));				
				mb.setMessage(rs.getString(5));				
				al.add(mb);	
				System.out.println(mb);
			}			
			return al;		
		}catch(Exception e){			
			e.printStackTrace();			
			return null;		
			}	
	}		
	public String getName(int id){			
		String name=null;			
		try{				
			pstmt=conn.prepareStatement("select userName from loginss where id=?");				
			pstmt.setInt(1, id);				
			ResultSet rs=pstmt.executeQuery();				
			while(rs.next()){					 
				name=rs.getString(1);				
				}				
			return name;			
		}catch(Exception e){				
				e.printStackTrace();				
				return null;			
		}		
	} 		
	public boolean addInfo(MessBoar mb){			
		try{				
			pstmt=conn.prepareStatement("insert into messagess(name,time,title,message) values(?,?,?,?)");						
			pstmt.setString(1, mb.getName());				
			pstmt.setDate(2, mb.getTime());				
			pstmt.setString(3, mb.getTitle());				
			pstmt.setString(4, mb.getMessage());				
			pstmt.executeUpdate();				
			return true;			
		}catch(Exception e){				
				e.printStackTrace();				
				return false;			
			}		
	}		
	public boolean insertUser(String name,String password){			
		try{				
			pstmt=conn.prepareStatement("insert into loginss(userName,password,role)values(?,?,?)");				
			pstmt.setString(1, name);				
			pstmt.setString(2, password);								
			pstmt.setInt(3, 0);	
			pstmt.executeUpdate();				
			return true;			
		}catch(Exception e){				
				e.printStackTrace();				
				return false;			
			}		
	}  
}
			
