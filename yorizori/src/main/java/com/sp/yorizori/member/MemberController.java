package com.sp.yorizori.member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller("member.memberController")
@RequestMapping(value = "/member/*")
public class MemberController {
	
	@Autowired
	private MemberService service;
	
	
	@RequestMapping(value = "login", method = RequestMethod.GET)
	public String loginForm() {
		return ".member.login";
	}
	
	@RequestMapping(value = "login", method = RequestMethod.POST)
	public String loginSubmit(
			@RequestParam String userId,
			@RequestParam String userPwd,
			HttpSession session,
			Model model) {
		
		Member dto = service.loginMember(userId);
		if(dto == null || ! userPwd.equals(dto.getUserPwd())) {
			model.addAttribute("message", "아이디 또는 패스워드가 일치하지 않습니다.");
			return ".member.login";
		}
		
		SessionInfo info = new SessionInfo();
		info.setRole(dto.getRole());
		info.setUserId(dto.getUserId());
		info.setUserName(dto.getUserName());
		info.setCountryNum(dto.getCountryNum());
		
		session.setMaxInactiveInterval(30 * 60);
		
		session.setAttribute("member", info);
		
		String uri = (String) session.getAttribute("preLoginURI");
		session.removeAttribute("preLoginURI");
		if (uri == null) {
			uri = "redirect:/";
		} else {
			uri = "redirect:" + uri;
		}

		return uri;
	}
	
	@RequestMapping(value = "logout")
	public String logout(HttpSession session) {
		session.removeAttribute("member");

		session.invalidate();
		
		return "redirect:/";
	}
}
