package com.dao.admin;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Repository("adminFindPasswordDao")
@Mapper
public interface AdminFindPasswordDao {
//É¾³ýÓÃ»§
	void deleteAuse(String uname);
	
}
