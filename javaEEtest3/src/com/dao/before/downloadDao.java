package com.dao.before;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.po.before.download;
@Repository("downloaddao")
@Mapper
public interface downloadDao {

	public download selecttaocancoin(String uname);
	//获取上传人名字
	public String getupload(String uname);
	//获取购买套餐人的名字
	public String gettaocanname(String uname);
}
