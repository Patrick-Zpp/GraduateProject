package com.study.user.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.stereotype.Repository;

import com.study.user.DBhelper;

@Repository
public class RegisterDao {
	
	public boolean register(String uname,String IdNum,String email, String pwd){
	Connection con = DBhelper.connect();
	PreparedStatement stat = null;
	
	String sqlString = "insert into user(uname,uid,email,pwd) values('"+uname+"','"+IdNum+"','"+email+"','"+pwd+"')";
			

		try {
			stat = con.prepareStatement(sqlString);				
		    int rs = stat.executeUpdate();
		
		   if(rs>0){
			   stat.close();
				con.close();
			   return true;
		   }else{
			   stat.close();
				con.close();
			  return false;
		        }
		   } catch (SQLException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		 }finally{
			 try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		 }
		
		//濡傛灉鏁版嵁搴撴病琚叧闂紝鍒欏叧闂�
				if(con!=null){
						try {
						con.close();
					} catch (SQLException e) {
						e.printStackTrace();
					} 			
				}
		return false;		
}
    
	//鍒ゆ柇鐢ㄦ埛鏄惁宸茬粡娉ㄥ唽杩囦簡
	 public boolean isExist(String idNum) {
		 Connection con = DBhelper.connect();
		 PreparedStatement stat = null;
			
		 String sqlString = "select * from user where uid='"+idNum+"'";
					
		 try {
		 	  stat = con.prepareStatement(sqlString);
			  stat.execute(sqlString);
						
			  ResultSet rs = stat.executeQuery();
		      if(rs.next()){
		    	   stat.close();
		    	    rs.close();
					con.close();
		    	  return true;
		    	  }
		      }catch (SQLException e){
		    	  e.printStackTrace();
		      }finally{
		    	  try {
					con.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		      }
		 
		//濡傛灉鏁版嵁搴撴病琚叧闂紝鍒欏叧闂�
			if(con!=null){
					try {
					con.close();
				} catch (SQLException e) {
					e.printStackTrace();
				} 			
			}
		 return false;
	}

	 //鍒ゆ柇鏄惁鏈夐摱琛屽崱
	public boolean isCard(String uname, String idNum) {
		
		Connection con = DBhelper.connect();
		 PreparedStatement stat = null;
			
		 String sqlString = "select * from customercard where cusid = '"+idNum+"'";
					
		 try {
		 	  stat = con.prepareStatement(sqlString);
			  stat.execute(sqlString);
						
			  ResultSet rs = stat.executeQuery();
		      if(rs.next()){
		    	   stat.close();
		    	    rs.close();
					con.close();
		    	  return true;
		    	  }
		      }catch (SQLException e){
		    	  e.printStackTrace();
		      }finally{
		    	  try {
					con.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		      }
		 
		//濡傛灉鏁版嵁搴撴病琚叧闂紝鍒欏叧闂�
			if(con!=null){
					try {
					con.close();
				} catch (SQLException e) {
					e.printStackTrace();
				} 			
			}
		return false;	
	}

	
	
	public void changActive(String idNum) {
		Connection con = DBhelper.connect();
		 PreparedStatement stat = null;
			
		 String sqlString = "update customercard set status = 'Not Activated' where cusid = '"+idNum+"'";
					
		 try {
		 	  stat = con.prepareStatement(sqlString);
			  stat.execute(sqlString);
						
			  int r = stat.executeUpdate();
		      
			  if(r>0){
				  System.out.println("change to not avtivated");
			  }
			  
		      }catch (SQLException e){
		    	  e.printStackTrace();
		      }finally{
		    	  try {
					con.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		      }
		
	}
}
