package org.model;
import java.sql.*;
public class MessBoar {	
	private int id;	
	private String name;	
	private Date time;	
	private String title;	
	private String message;	
	public int getId() {		
		return id;	
	}	
	public void setId(int id) {		
		this.id=id;	
	}	
	public String getName() {		
		return name;	
	}	
	public void setName(String name) {		
		this.name=name;	
	}	
	public Date getTime() {		
		return time;	
	}	
	public void setTime(Date time) {		
		this.time=time; 
	} 
	public String getTitle() {		
		return title;	
	}	
	public void setTitle(String title) {		
		this.title=title;	
	}	
	public String getMessage() {		
		return message;	
	}	
	public void setMessage(String message) {		
		this.message=message;	
	}
	@Override
	public String toString() {
		return "MessBoar [id=" + id + ", name=" + name + ", time=" + time + ", title=" + title + ", message=" + message
				+ "]";
	}
	
	
}
