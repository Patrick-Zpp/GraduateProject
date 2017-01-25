package com.study.user.service;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.study.user.dao.RegisterDao;
import com.study.user.model.user;

@Service
public class RegisterService {
	
	@Resource 
	RegisterDao dao;
	public user register(String uname,String IdNum,String email, String pwd) throws Exception{
		user user=new user();
		if(dao.register(uname, IdNum, email, pwd)){
			user.setUname(uname);
			user.setUid(IdNum);
			user.setEmail(email);
		   return user;
		}else{
			throw new Exception("Fail to register a new account.");
		}
	}
	public void isExist(String idNum) throws Exception {
		if(dao.isExist(idNum)){
			throw new Exception("You have already registered an account.");
		}
	}
	public void isCorrect(String uname, String idNum, String email, String pwd) throws Exception {
		 if (uname==null || uname=="")
		  {
			 throw new Exception("Your username can not be empty.");
		  }		 		 
		 //判断用户id是否为空
		 if (idNum==null || idNum=="")
		  {
			 throw new Exception("User Id number can not be empty.");
		  }		 
		 //判断邮箱是否为空
		 if (email==null || email=="")
		  {
			 throw new Exception("email can not be empty.");
		  }
		 //判断密码是否为空
		 if (pwd==null || pwd=="")
		  {
			 throw new Exception("password can not be empty.");
		  }	
	}
	
	//判断是否有银行卡
	public void isCard(String uname, String idNum) throws Exception {
		
		if(!dao.isCard(uname,idNum)){
			//无银行卡
			throw new Exception("Your don't have a DebitCard. If you want to use the service of this bank, please open a debit card first. ");
		}
		
	}
	public void changeActive(String idNum) {
		dao.changActive(idNum);
		
	}
}