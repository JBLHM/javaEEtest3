package com.po.before;

import org.springframework.web.multipart.MultipartFile;

//接收表弟参数
public class upload {
MultipartFile filename;
String description;
public MultipartFile getFilename() {
	return filename;
}
public void setFilename(MultipartFile filename) {
	this.filename = filename;
}
public String getDescription() {
	return description;
}
public void setDescription(String description) {
	this.description = description;
}

}
