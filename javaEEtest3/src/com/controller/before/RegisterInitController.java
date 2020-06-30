package com.controller.before;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;


import com.service.before.UserService;
import com.service.before.moneyService;
import com.po.before.MyUser;
@Controller
@RequestMapping("/before修改版")
public class RegisterInitController {
	@Autowired
	private UserService userService;
	@Autowired
	private moneyService moneyService;
	@RequestMapping("/register")
	public String register(@ModelAttribute("userlogin") MyUser userlogin,Model model, HttpSession session, String code)
	{
		//model.addAttribute("userlogin", new MyUser());
		//退出一直不可以应该是求pasd值语句出问题了
		//应该要把这些判断函数搬出外面
		//清除session里的msg的值
		model.addAttribute("msg", " ");
		return  userService.register(userlogin, model, session, code);
		
		
 } 
	@RequestMapping("/toregister")
	public String register(Model model)
	{
		model.addAttribute("userlogin", new MyUser());

		return "/before/register";
	}
	
	
}
