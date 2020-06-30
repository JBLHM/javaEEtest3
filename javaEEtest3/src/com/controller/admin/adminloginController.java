package com.controller.admin;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import com.dao.admin.adminlogindao;
import com.po.admin.admindetail;
@Controller
@RequestMapping("/admindetail")
public class adminloginController {
	@Autowired
	private adminlogindao adminlogindao;
	
	@RequestMapping("/adminlogin")
	public String adminlogin(@ModelAttribute("admindetail") admindetail admindetail,BindingResult result,Model model,HttpSession session)
	{
		//退出一直不可以应该是求pasd值语句出问题了
		//应该要把这些判断函数搬出外面
		//清除session里的msg的值
		model.addAttribute("msg", " ");
		
		String pasd=adminlogindao.checkadmin(admindetail.getAdminName());
		//String pasd="666666";
		//使用形参接收参数时还需要将请求参数存到model中
					if(pasd.equals(admindetail.getAdminPassword()))
			{
				session.setAttribute("admindetail", admindetail);
						model.addAttribute("msg", "密码正确，正在进入主界面中...");
				return "/admin/admin-main";
			}
				
					else
					{
				model.addAttribute("msg", "用户名或密码错误，请重新登陆");
				return "/admin/login" ;
					}
				
			
		
		
			
		
		
	}
	@RequestMapping("/tologin")
	public String tologin(Model model) {
		//清除session
		model.addAttribute("admindetail", new admindetail());
		return "/admin/login";
	}

	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		//清除session
		session.invalidate();
		//model.addAttribute("admindetail", new admindetail());
		return "redirect:/admindetail/tologin";
	}
	//测试是否登陆
	
	
}
