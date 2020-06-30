package com.dao.admin;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import com.po.before.MyUser;
@Repository("adminUsesDao")
@Mapper
public interface AdminUsesDao {
	//把所有的用户查出来
	public List<MyUser> selectuse();
	//分页查询所有用户
	public List<MyUser> selectAllusesByPage(Map<String, Object> map);
	//添加用户
	public int adduses(MyUser myuse);
	//按名字查询对应的用户
	public MyUser selectGoodsById(String uname);
	//按名字删除对应用户
	//public int deleteAuser(String unamex);
	//修改用户
	public int updateuserById(MyUser myuser);
	//删除用户
	public int deleteAGoods(String uname);
}
