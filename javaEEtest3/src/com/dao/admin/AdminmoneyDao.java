package com.dao.admin;
import java.util.List;


import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.po.before.reallymoney;

@Repository("adminmoneyDao")
@Mapper

public interface AdminmoneyDao {
	public List<reallymoney> selectmoney();
}
