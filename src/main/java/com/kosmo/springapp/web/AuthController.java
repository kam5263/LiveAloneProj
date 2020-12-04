package com.kosmo.springapp.web;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.kosmo.springapp.service.impl.MemberServiceImpl;

@Controller
@RequestMapping("/Auth/")
public class AuthController {
	
	@Resource(name = "memberService")
	private MemberServiceImpl memberService;
	
	@Resource(name = "bcryptPasswordEncoder")
	private BCryptPasswordEncoder bcryptPasswordEncoder;
	
	@RequestMapping("Login.do")
	public String login() {
		
		return "/Auth/Login.tiles";
	}
	@RequestMapping("Logout.do")
	public String logout() {
		
		return "home.tiles";	
	}
	@RequestMapping(value="Register.do", method=RequestMethod.GET)
	public String register() {
		return "/Auth/Register.tiles";
	}
	@RequestMapping(value="Register.do", method=RequestMethod.POST)
	public String registerpost(@RequestParam Map map, @RequestParam List<String> allergy, Model model) {
		//비밀번호 암호화
		String password = bcryptPasswordEncoder.encode(map.get("password").toString());
		System.out.println(password);
		map.put("password", password);
		//주소는 도로명 주소만 저장 (ex. 경기도 의왕시 보식골로 13)
		map.put("address", map.get("address1"));
		
		int affectedMember = memberService.insertMember(map);
		if(affectedMember == 1) {
			int affectedAuth = memberService.insertAuth(map);
			if(affectedAuth == 1) {
				for(String item : allergy) {
					map.put("allergy", item);
					memberService.insertAllergy(map);
				}
			}
		}
		model.addAttribute("username",map.get("username"));
		return "/Auth/SuccessRegi.tiles";
	}
	@RequestMapping("Mypage.do")
	public String mypage() {
		
		return "/Auth/Mypage.tiles";
	}
}
