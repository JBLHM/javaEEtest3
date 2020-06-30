package com.service.admin;
import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.po.before.MyUser;
public interface AdminUsesService {
	//添加用户
	//public String addAuse(MyUser myuser);
	public String deleteAGoods(String uname, Model model);
	//查询用户
	public String selectuser(Model model, Integer pageCur, String act);
	//添加用户
	public String insertuser(MyUser myuser,Model model);
	//查询某个用户
	public String selectAGoods(Model model, String uname);
	
	public String updateuse(MyUser myUser,Model model);
}
