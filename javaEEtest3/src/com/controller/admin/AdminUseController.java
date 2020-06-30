package com.controller.admin;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.po.before.MyUser;
import com.service.admin.AdminUsesService;
@Controller
@RequestMapping("/adminUse")
public class AdminUseController {
	@Autowired
	private AdminUsesService adminUsesService;
	@RequestMapping("/selectUse")
	public String selectGoods(Model model, Integer pageCur, String act) {
		return adminUsesService.selectuser(model, pageCur, act);
	}
	/**
	 * add“≥√Ê≥ı ºªØ
	 */
	@RequestMapping("/toAddUse")
	public String toAddGoods(Model model){
		model.addAttribute("myUser", new MyUser());
		return "admin/adduse";
	}
	@RequestMapping("/adduse")
	public String adduse(MyUser myUser,Model model){
		
		
		return adminUsesService.insertuser(myUser, model);
	}
	@RequestMapping("/selectAuser")
	public String selectauser(String uname,Model model) {

		return adminUsesService.selectAGoods(model, uname);
	}
	@RequestMapping("/updateuse")
	public String tupdateuse(MyUser myUser,Model model){
		
		return adminUsesService.updateuse(myUser, model);
	}
	@RequestMapping("deleteAuse")
	public String deleteAuse(String uname,Model model) {

		return adminUsesService.deleteAGoods(uname, model);
	}
	
}
