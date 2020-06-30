package com.po.before;

import org.springframework.web.multipart.MultipartFile;

public class Registerinit {
	//评论表 comment-> commentDao->comment.xml
//	public String uemail;
//
//	public String uword;
//	//下载表 download->downloadDao->download.xml
//	
//	int uploaduid;
//	String uprovidename;
//	String filename;
//	String filepath;
//	//offer:奖励金币
//	int offer;
//	String adescription;
//	String uname;
//	//String uemail;
//	double uprice;
//	String ulevel;
//	String uuse;
	//用户表 MyUser->UserDao->beforelogin.xml
	//private String uname;
//	private String upassword;
//	private String utelephone;
	//套餐表 reallymoney ->reallymoneyDao->reallymoney.xml-> money表
	//private String uemail;
//	String uname;
//	String uemail;
//	double uprice;
//	String ulevel;
//	String uuse;
	//上传表 reallyupload->reallyuploadDao->reallyupload.xml->reallyupload表
//	int uploaduid;
	String uprovidename;
	String filename;
	String filepath;
	//offer:奖励金币
	int offer;
	String adescription;
	

	public String getUprovidename() {
		return uprovidename;
	}
	public void setUprovidename(String uprovidename) {
		this.uprovidename = uprovidename;
	}
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	public String getFilepath() {
		return filepath;
	}
	public void setFilepath(String filepath) {
		this.filepath = filepath;
	}
	public int getOffer() {
		return offer;
	}
	public void setOffer(int offer) {
		this.offer = offer;
	}
	public String getAdescription() {
		return adescription;
	}
	public void setAdescription(String adescription) {
		this.adescription = adescription;
	}
	

}
