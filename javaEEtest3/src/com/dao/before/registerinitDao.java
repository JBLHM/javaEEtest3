package com.dao.before;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.po.before.Registerinit;
import com.po.before.userpay;
@Repository("registerInitDao")
@Mapper
public interface registerinitDao {
	//初始化comment表
//public void initcomment(String uemail);//插入的数据:邮箱,'你还没有评论'
////初始化download表
//public void initdownload(String uname);//插入的数据:名字,未知,0
//
//
////初始化reallyupload表
//public void initreallyupload(String uname, String ukn, String ukn2, int mn, String ukn3);
////初始化userpay表
//public void inituserpay(String uname,String uemail);//插入数据:名字,邮箱,0,0,0
////更新userpay表
//public userpay getuserpay();
////插入数据到userpay(包括更新),使用replace into语句
//public void insertuserpay(userpay userpay);
//初始化money表
public void test(String uname);
public void initreallyupload(Registerinit ATK);//插入数据:?,名字,未知,未知,0,未知
}
