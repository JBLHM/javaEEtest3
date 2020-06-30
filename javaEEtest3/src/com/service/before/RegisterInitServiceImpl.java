package com.service.before;
/*
 * 初始化
 */
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.before.registerinitDao;
import com.po.before.MyUser;
import com.po.before.Registerinit;
@Service("RegisterInitImpl")
@Transactional
public class RegisterInitServiceImpl implements RegisterInitService {
	@Autowired
	private registerinitDao registerInitDao;
	@Override
	public void test(String uname)
	{
		System.out.println("开启测试中.............");
		if(registerInitDao==null)
		{
			System.out.println("获取到的是空对象");
		}
		registerInitDao.test(uname);
	}
	@Override
	public void init(MyUser userlogin)
	{
	Registerinit ATK=new Registerinit();
	ATK.setAdescription("未知");
	ATK.setFilename("未知");
	ATK.setOffer(0);
	ATK.setFilepath("未知");
	ATK.setUprovidename(userlogin.getUname());
	System.out.println("描述:"+ATK.getAdescription()+"文件名"+ATK.getFilename()+""+ATK.getUprovidename());
	if(registerInitDao==null)
	{
		System.out.println("获取到的是空对象");
	}
	else
	{
		System.out.println("获取到的对象registerInitDao不为空");
		registerInitDao.initreallyupload(ATK);
	}
	}
}
