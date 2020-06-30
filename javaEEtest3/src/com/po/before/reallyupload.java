package com.po.before;
//存到数据库的po类，用于上传
public class reallyupload {
	int uploaduid;
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
	public int getUploaduid() {
		return uploaduid;
	}
	public void setUploaduid(int uploaduid) {
		this.uploaduid = uploaduid;
	}
	
}
