package com.service.before;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.dao.before.registerinitDao;
import com.dao.before.UserDao;
import com.po.before.MyUser;
import com.po.before.Registerinit;

@Service("userService")
@Transactional
/**加上注解@Transactional,可以指定这个类需要受Spring的事务管理
注意@Transactional只能针对public属性范围内的方法添加，
本案例并不需要处理事务，在这里只是告诉读者如何使用事务*/
public class UserServiceImpl implements UserService{
	@Autowired
	private UserDao userDao;

	@Override
	
	public String register( MyUser userlogin, Model model, HttpSession session, String code) {
		//model.addAttribute("userlogin", new MyUser());
		////测试注释掉这些
	
		if(!code.equalsIgnoreCase(session.getAttribute("code").toString())) {
			model.addAttribute("msg", "验证码错误！");
			return "before/register";
		}
		
		//测试注释掉这些
		int n = userDao.register(userlogin);
		if(n > 0) {
			//引入另一个RegisterImpl
//			RegisterInitServiceImpl registerInitImpl=new RegisterInitServiceImpl();
//			registerInitImpl.init(userlogin);
			return "before/mainBefore";
		}else {
			model.addAttribute("msg", "注册失败！");
			return "before/register";
		}
	}
	@Override
	public String login( MyUser userlogin, Model model, HttpSession session, String code) {
		//添加这行代码会报404错误model.addAttribute("userlogin", new MyUser());
		//测试注释掉这些

		if(!code.equalsIgnoreCase(session.getAttribute("code").toString())) {
			model.addAttribute("msg", "验证码错误！");
			return "before/login";
		}
		
		//测试注释掉这些
		MyUser ruser = null;
		List<MyUser> list = userDao.login(userlogin);
		if(list.size() > 0) {
			ruser = list.get(0);
		}
		if(ruser != null) {
			session.setAttribute("bruser", ruser);
			return "before/mainBefore";
		}else {
			model.addAttribute("msg", "用户名或密码错误！");
			return "before/Login";
		}
}
	
}
