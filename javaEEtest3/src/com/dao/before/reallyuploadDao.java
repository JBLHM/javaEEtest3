package com.dao.before;

import java.awt.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.po.before.reallyupload;
@Repository("reallyuploaddao")
@Mapper
public interface reallyuploadDao { 
	//将上传文件路径存到数据库
	public int Treallyupload(reallyupload reallyupload);
	public int updateupload(reallyupload reallyupload);
	//根据用户名找到金币数
	//public int getcointaocan(String uprovidename);
	public String getname(reallyupload reallyupload);
}
