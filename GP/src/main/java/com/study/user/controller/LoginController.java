package com.study.user.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.support.SessionStatus;

import com.study.user.model.user;
import com.study.user.service.LoginService;

@Controller
public class LoginController {
	@Resource
	LoginService service;
	
	@Resource
	HttpServletRequest request;
	
	@RequestMapping(value="/doLogin")
	public String doLogin(@RequestParam String userid,@RequestParam String password,ModelMap map){
			
		try {
			//鍒ゆ柇鏄惁涓虹┖
			service.isEmpty(userid,password);
			//鍒ゆ柇鐢ㄦ埛鍚嶆槸鍚﹀瓨鍦�
			service.isAccount(userid);
			
			//妫�祴鐢ㄦ埛鍚嶅拰璐﹀彿鏄惁鍖归厤
			user user = new user();
			user = service.login(userid,password);	
			
			//妫�煡鐢ㄦ埛鏄惁娉ㄥ唽浜嗕絾娌℃湁婵�椿閭楠岃瘉
			service.checkActive(userid);
			
			HttpSession session = request.getSession(true);
			session.setAttribute("user", user);		
			session.setMaxInactiveInterval(60*60);

		} catch (Exception e) {
			request.setAttribute("error", e.getMessage());
			return "login";
		}
			
		return "main_success";
	}
	
	@RequestMapping(value="/doLogout")
	public void logout(HttpServletRequest request, HttpServletResponse response, SessionStatus status) throws IOException{
		String flag = request.getParameter("flag");
		System.out.println(flag);
		
		response.setCharacterEncoding("utf-8");
		response.setStatus(200);
		PrintWriter out = response.getWriter();
		
		if(flag.equals("true")){
			System.out.println(flag);
			status.setComplete();	
			out.print("2");
			/*return "main";*/
		}else{
			System.out.println("no");
			out.print("3");
			/*return "main_success";*/
		}

	}
	
}















