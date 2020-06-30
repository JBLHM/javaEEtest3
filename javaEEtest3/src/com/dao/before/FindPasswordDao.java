package com.dao.before;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Repository("findPasswordDao")
@Mapper
public interface FindPasswordDao {

	//判断用户名是否存在
	public int checkname(String name);
	
}
