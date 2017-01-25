package com.study.user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;


public class DBhelper {
    public static Connection connect() {
    	 String dbDriver="com.mysql.jdbc.Driver";
    	 //MySQL鐨勭鍙ｅ彿锛岄攣瀹氳繘绋嬶紱study锛氭墍闇�繛鎺ョ殑鏁版嵁搴撶殑鍚嶇О
    	 
    	 //String driverName = "com.mysql.jdbc.Driver";   //鍔犺浇JDBC椹卞姩  

    	 String dbUrl = "jdbc:mysql://localhost:3306/bank?useUnicode=true&characterEncoding=utf8";   //杩炴帴鏈嶅姟鍣ㄥ拰鏁版嵁搴搒ample  

    	 String dbUser = "root";   //榛樿鐢ㄦ埛鍚� 

    	 String dbPassword = "";
    	 
/*         String dbUrl="jdbc:mysql://localhost:3306/study?useUnicode=true&characterEncoding=utf8";
         String dbUser="root";
         String dbPassword="";*/
         try {           
             Class.forName(dbDriver).newInstance();
             //Connection con=DriverManager.getConnection(dbUrl,dbUser,dbPassword);
             Connection con=DriverManager.getConnection(dbUrl,dbUser,dbPassword);
             System.out.println("Success");
             return con;
         } catch (Exception ex) {
         	System.out.println("Fail! Error:"+ex.toString());
             return null;
         }
    }
    public static void closeResult(ResultSet rs) {
        try {
            rs.close();
        } catch (SQLException e) {
        }
    }
    public static void closePreparedStatement(PreparedStatement ps) {
        try {
            ps.close();
        } catch (SQLException e) {
        }
    }
    public static void closeConneciton(Connection con) {
        try {
            con.close();
        } catch (SQLException e) {
        }
    }
}

