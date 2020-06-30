package com.dao.before;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.po.before.reallymoney;
@Repository("reallymoneyDao")
@Mapper
public interface reallymoneyDao {
	public int Thandelmoney(reallymoney reallymoney);
	//取得套餐类型，并判断是否为会员
	//public String gettaocan(String uname);
	public String getmoneyname(reallymoney reallymoney);
	public int updatemoneyname(reallymoney reallymoney);
}
