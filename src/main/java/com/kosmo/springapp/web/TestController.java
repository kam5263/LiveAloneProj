package com.kosmo.springapp.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TestController {
	@RequestMapping("/Admin/AdminHome.do")
	public String home() {
		return "Admin/AdminHome.at";
	}
	@RequestMapping("/Admin/Member/Members.do")
	public String member() {
		return "Admin/Member/Members.at";
	}
	@RequestMapping("/Admin/Tip/Board.do")
	public String board() {
		return "Admin/Tip/Board.at";
	}
}
