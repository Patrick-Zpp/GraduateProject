package com.study.user.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.swing.JOptionPane;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.study.user.Sendmail;
import com.study.user.model.user;
import com.study.user.service.RegisterService;

@Controller
public class RegisterController {
	@Resource
	RegisterService registerservice;
	
	@Resource
	HttpServletRequest request;
	
	@RequestMapping(value="/register", method=RequestMethod.POST)
	public String register(@RequestParam String uname,@RequestParam String IdNum,@RequestParam String email,@RequestParam String pwd){
			
		 try {
			
			//鍒ゆ柇杩欎簺瀛楁鏄惁鍚堟硶
			registerservice.isCorrect(uname,IdNum,email,pwd);
			
			//鍒ゆ柇鏄惁鏈夐摱琛屽崱
			registerservice.isCard(uname,IdNum);
			
			//鍒ゆ柇鏄惁宸茬粡娉ㄥ唽杩囦簡
			registerservice.isExist(IdNum);
			
			//鎵ц娉ㄥ唽
			user user =new user();
			user=registerservice.register(uname,IdNum,email,pwd);
			
			//娉ㄥ唽鎴愬姛鏃跺皢缃戜笂閾惰鐨勭姸鎬佹敼涓簄ot activated.
			registerservice.changeActive(IdNum);
			
			//濡傛灉娉ㄥ唽鎴愬姛锛屽垯鍙戦�涓�潯閭欢
			Sendmail send = new Sendmail(user,"activemail");
			send.start();
			
			request.setAttribute("flag", "yes");
			
		} catch (Exception e){
		   request.setAttribute("message", e.getMessage());
		   return "register";
		}
								
		//杩斿洖娉ㄥ唽鎴愬姛椤甸潰
		return"register";
	}
}
