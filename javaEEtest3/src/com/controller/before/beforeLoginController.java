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

import com.service.before.RegisterInitService;
import com.service.before.RegisterInitServiceImpl;
import com.service.before.UserService;

import com.po.before.MyUser;
@Controller
@RequestMapping("/before")
public class beforeLoginController {
	@Autowired
	private UserService userService;
	@Autowired
	private RegisterInitService RegisterInitImpl;
	@RequestMapping("/login")
	public String userlogin(@ModelAttribute("userlogin") MyUser userlogin,Model model, HttpSession session, String code)
	{
		//退出一直不可以应该是求pasd值语句出问题了
		//应该要把这些判断函数搬出外面
		//清除session里的msg的值
		model.addAttribute("msg", " ");
		//将用户名存到session中，如果在支付或者下载文件时取出session值然后判断是否是会员
		session.setAttribute("unamex", userlogin.getUname());
		session.setAttribute("userlogin",userlogin);
		//return "/before/mainBefore";
		return  userService.login(userlogin, model, session, code);
		
		
 } 
	@RequestMapping("/toLogin")
	public String tologin(Model model) {
		model.addAttribute("msg", " ");
		//清除session
		model.addAttribute("userlogin", new MyUser());
		//由于映射是小写，所以这个也得是小写?return "/before/Login";
		return "/before/login";
	}
	
	@RequestMapping("/register")
	public String register(@ModelAttribute("userlogin") MyUser userlogin,Model model, HttpSession session, String code)
	{
		//model.addAttribute("userlogin", new MyUser());
		//退出一直不可以应该是求pasd值语句出问题了
		//应该要把这些判断函数搬出外面
		//清除session里的msg的值
		model.addAttribute("msg", " ");
		//初始化表,进行查询操作. select * from reallyupload
		if(RegisterInitImpl==null)
		{
			System.out.println("控制器类的RegisterInitImpl对象为空");
		}
		else
		{
			System.out.println("控制器类的RegisterInitImpl对象存在");
//			RegisterInitImpl.init(userlogin);
			RegisterInitImpl.test(userlogin.getUname());
		}
		
		return  userService.register(userlogin, model, session, code);
		
		
 } 
	@RequestMapping("/toregister")
	public String register(Model model)
	{
		model.addAttribute("userlogin", new MyUser());

		return "/before/register";
	}
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		//清除session
		session.invalidate();
		//model.addAttribute("admindetail", new admindetail());
		return "redirect:/before/toLogin";
	}
	
}
