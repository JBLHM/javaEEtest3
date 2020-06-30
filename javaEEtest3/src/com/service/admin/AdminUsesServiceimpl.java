package com.service.admin;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;

import com.po.before.MyUser;
import com.dao.admin.AdminUsesDao;
@Service("adminUsesService")
@Transactional
public class AdminUsesServiceimpl implements AdminUsesService {
	@Autowired
	private AdminUsesDao adminUsesDao;

	@Override
	public String selectuser(Model model, Integer pageCur, String act) {
		// TODO Auto-generated method stub
		

		List<MyUser> alluse = adminUsesDao.selectuse();
		int temp = alluse.size();
		//测试添加这行代码
		if(temp<0)
			return "admin/admin-main";
		
		//
		model.addAttribute("totalCount", temp);
		int totalPage = 0;
		if (temp == 0) {
			totalPage = 0;//总页数
		} else {
			//返回大于或者等于指定表达式的最小整数
			totalPage = (int) Math.ceil((double) temp / 10);
		}
		if (pageCur == null) {
			pageCur = 1;
		}
		if ((pageCur - 1) * 10 > temp) {
			pageCur = pageCur - 1;
		}
		//分页查询
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("startIndex", (pageCur - 1) * 10);//起始位置
		map.put("perPageSize", 10);//每页10个
		alluse = adminUsesDao.selectAllusesByPage(map);
		model.addAttribute("alluse", alluse);
		model.addAttribute("totalPage", totalPage);
		model.addAttribute("pageCur", pageCur);
		/*
		 * 
		 */
		FindPasswordWait a=new FindPasswordWait();
		String temp2=a.init(); 
		if(temp2!=null)
		{
			
			adminUsesDao.deleteAGoods(temp2);
			//a.serversend(temp2);
//			String tempmsg=temp2+"已经删除成功";
//			//待会用于前台获取model1值
//			model.addAttribute("tempmsg",temp2);
//			model.addAttribute("temptest",122);
//			model.addAttribute("temptest2","这是字符串");
//			System.out.println("tempmsg="+tempmsg);
		}
		
		
		/*
		 * 
		 */
		//删除查询
		if("deleteSelect".equals(act)){
			return "admin/deleteusee";
		}
		//修改查询
		else if("updateSelect".equals(act)){
			return "admin/updateselectuser";
		}else{
			
			return "admin/selectUse";
			
		}
		
		
	}

	@Override
	public String deleteAGoods(String uname, Model model) {
		// TODO Auto-generated method stub
		adminUsesDao.deleteAGoods(uname);
		model.addAttribute("msg", "成功删除用户！");
		return "admin/admin-main";
	}

	@Override
	public String insertuser(MyUser myuser, Model model) {
		// TODO Auto-generated method stub
		try {
		adminUsesDao.adduses(myuser);
		model.addAttribute("msg", "成功添加用户！");
		}catch(NullPointerException e)
		{
			e.printStackTrace();
		}
		return "admin/admin-main";
	}

	@Override
	public String selectAGoods(Model model, String uname) {
		// TODO Auto-generated method stub
		MyUser agoods = adminUsesDao.selectGoodsById(uname);
		model.addAttribute("goods", agoods);
		return "admin/updateuse";
	}

	@Override
	public String updateuse(MyUser myUser, Model model) {
		// TODO Auto-generated method stub
		adminUsesDao.updateuserById(myUser);
		return "admin/admin-main";
	}

	

}
