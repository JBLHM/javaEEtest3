package com.service.before;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.before.UserDao;
import com.po.before.MyUser;
@Service("FindPasswordService")
@Transactional
public class FindPasswordServiceImpl implements FindPasswordService{

	@Autowired
	private UserDao userDao;
	@Override
	public String findpassword(MyUser userlogin) {
		// TODO Auto-generated method stub
		//判断数据库是否有该用户
		//添加loginusername方法,仅需要用户名便可访问
		String username=userDao.loginusername(userlogin);
		if(username==null)
		{
			//没有该用户
			System.out.println("没有该用户");
			return "没有该用户";
		}
		else
		{
			System.out.println("用户名:"+username);
			return username;
		}
		
	}

	//唤醒服务器端,调用服务器端的delate方法删除用户
}
