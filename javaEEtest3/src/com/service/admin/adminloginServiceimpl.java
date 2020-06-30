package com.service.admin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.dao.admin.adminlogindao;
import com.po.admin.admindetail;
@Service("adminloginService")
@Transactional
public class adminloginServiceimpl implements adminloginService{
	@Autowired
	private adminlogindao adminlogindao;
	public String checkadmin(String adminName)
	{
		return adminlogindao.checkadmin(adminName);
	}
}
