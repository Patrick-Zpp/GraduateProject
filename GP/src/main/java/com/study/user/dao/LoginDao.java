package com.study.user.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.stereotype.Repository;

import com.study.user.DBhelper;
import com.study.user.model.user;

@Repository
public class LoginDao {
    //鍒ゆ柇鐢ㄦ埛鍚嶅拰瀵嗙爜鏄惁姝ｇ‘
	public user login(String username, String password) {
		Connection con = DBhelper.connect();
		PreparedStatement stat = null;
		String sqlString = "select * from user where uid='"+username+"' and pwd='"+password+"'";
				
		try{
			stat =con.prepareStatement(sqlString);
			stat.execute(sqlString);
				
			ResultSet rs = stat.executeQuery();
			System.out.println("dao``````"+rs);
			if(rs.next()){
				System.out.println("rs~~~~hase");
				//杩斿洖username鍜寀serID
				user user = new user();
				user.setUname(rs.getString("uname"));
				user.setUid(rs.getString("uid"));
				
				stat.close();
				rs.close();
				con.close();
				return user;
			}
	     }catch(SQLException e){
	    	 e.printStackTrace();
	    	 }
		
		//濡傛灉鏁版嵁搴撴病琚叧闂紝鍒欏叧闂�
				if(con!=null){
						try {
						con.close();
					} catch (SQLException e) {
						e.printStackTrace();
					} 			
				}	
		return null;
	     }
    
	//鍒ゆ柇鐢ㄦ埛瀛樹笉瀛樺湪
	public boolean isAccount(String username) {
		Connection con = DBhelper.connect();
		PreparedStatement stat = null;
		String sqlString = "select * from user where uid='"+username+"'";
				
		try{
			stat =con.prepareStatement(sqlString);
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
   
	//妫�煡鏄惁閭楠岃瘉杩囦簡
	public boolean checkActive(String userid) {
		Connection con = DBhelper.connect();
		PreparedStatement stat = null;
		String sqlString = "select * from customercard where cusid='"+userid+"'";
				
		try{
			stat =con.prepareStatement(sqlString);
			stat.execute(sqlString);	
			ResultSet rs = stat.executeQuery();
			
			if(rs.next()){
				String status = rs.getString("status");
				if(status.equals("Not Activated")){
					return false;
				}
			}
			
			
		}catch(SQLException e){
	    	 e.printStackTrace();
	     }finally{
	    	try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}	 
	     }
		
		return true;
	}
}
