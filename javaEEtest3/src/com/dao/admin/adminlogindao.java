package com.dao.admin;
import com.po.admin.admindetail;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Repository("admindetail")
@Mapper
public interface adminlogindao {
	//根据输入的用户名查找对应的密码，若何表单上的一样，则成功
	public String checkadmin(String adminName);

}
