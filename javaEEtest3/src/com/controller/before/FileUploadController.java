package com.controller.before;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.po.before.reallyupload;
import com.po.before.upload;
import com.dao.before.reallyuploadDao;
@Controller
//必须用upload,因为upload upload
@RequestMapping("/upload")
public class FileUploadController {
	// 得到一个用来记录日志的对象，这样打印信息的时候能够标记打印的是那个类的信息
	private static final Log logger = LogFactory.getLog(FileUploadController.class);
	/**
	 * 单文件上传
	 */
	@Autowired
	private reallyuploadDao reallyuploaddao;
	
	@RequestMapping("/onefile")
	public String oneFileUpload( upload upload,HttpServletRequest request, HttpSession session,Model model) {
		/*上传文件的保存位置"/uploadfiles"，该位置是指
		workspace\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps，
		发布后使用*/
		String realpath = "D:\\eclipse-javaweb\\eclipse-woekspace\\ch17";
		//String realpath = request.getServletContext().getRealPath("uploadfiles");
		String fileName = upload.getFilename().getOriginalFilename(); 
		File targetFile = new File(realpath, fileName);
		reallyupload areallyupload=new reallyupload();
		//测试uname是否有值
		String uname=(String) session.getAttribute("unamex");
		int Uploaduid=1;
		int n=0;
		String aname="";
		//String uname="李";
		model.addAttribute("uploadmessage", " ");
		
		if(!targetFile.exists()){  
            targetFile.mkdirs();  
        } 
		else
		{
			
		}
		//上传
		if(uname.length()>0)
		{
        try { 
        	
        	areallyupload.setUprovidename(uname);
        		//添加一条数据库操作，即先把金币数取出来
        	
        	//在此添加
        		areallyupload.setUploaduid(Uploaduid);
            	areallyupload.setAdescription(upload.getDescription());
            	areallyupload.setFilename(fileName);
            	areallyupload.setFilepath(realpath);
            	areallyupload.setOffer(30);
            	
            	
            	model.addAttribute("areallyupload", areallyupload);
            	aname=reallyuploaddao.getname(areallyupload);
            	if(aname!=null)
            	{
            		n=reallyuploaddao.updateupload(areallyupload);
            		 
            	}
            	else
            	{
            		n=reallyuploaddao.Treallyupload(areallyupload);
            	}
            	
        	
        	
        		try {
					upload.getFilename().transferTo(targetFile);
				} catch (IllegalStateException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
        		//事务管理
            	logger.info("成功");
            	model.addAttribute("uploadmessage", "上传失败");
        		 return "/before/showOne";
        	} 
         catch (NullPointerException e)
            {
			// TODO Auto-generated catch block
			model.addAttribute("uploadmessage", "上传失败");
			e.printStackTrace();
		    } 
		
		
        /*
      		@ModelAttribute FileDomain fileDomain这就话有这样一个功能：
      		model.addAttribute("fileDomain",fileDomain)所以此处不需要
         */
		}
		
		return null;
		
	}
	/**
	 * 多文件上传
	 */
	
}
