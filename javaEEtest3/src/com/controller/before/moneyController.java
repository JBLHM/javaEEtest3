package com.controller.before;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.service.before.moneyService;
import com.po.admin.admindetail;
import com.po.before.Umoney;
import com.po.before.reallymoney;
@Controller

public class moneyController {
	@Autowired
	private moneyService moneyService;
	@RequestMapping("/choose")
	public String choose(HttpSession session,@ModelAttribute("choosepay") Umoney choosepay,Model model)
	{
		
	
		reallymoney reallymoney=new reallymoney();
		
		
   	 reallymoney.setUname(choosepay.getUname());
   	 reallymoney.setUemail(choosepay.getUemail());
		//session.setAttribute("taocan",choosepay.getChoose() );
	
		//接收参数，并判断属于哪种套餐，根据套餐设置值
		//使用case方法
		//if(	session.getAttribute("taocan")!=null)
		/*
		switch(choosepay.getChoose())
	      {
	         case "套餐1" :
	         {
	        	 reallymoney.setUlevel("无限 ");
	        	 reallymoney.setUprice(0);
	        	 reallymoney.setUuse("学习版");
	         }
	            break;
	         case "套餐2" :
	         {
	        	 reallymoney.setUlevel("1月");
	        	 reallymoney.setUprice(15);
	        	 reallymoney.setUuse("标准版");
	         }
	        	 break;
	         case "套餐3" :
	         {
	        	 reallymoney.setUlevel("1月");
	        	 reallymoney.setUprice(25);
	        	 reallymoney.setUuse("专业版");
	         }
	            break;
	         case "套餐4" :
	         {
	        	 reallymoney.setUlevel("1月");
	        	 reallymoney.setUprice(45);
	        	 reallymoney.setUuse("企业版");
	         }
	            break;
	         case "套餐5" :
	         {
	        	 reallymoney.setUlevel("1年");
	        	 reallymoney.setUprice(110);
	        	 reallymoney.setUuse("标准版");
	         }
	            break;
	         case "套餐6" :
	         {
	        	 reallymoney.setUlevel("1年");
	        	 reallymoney.setUprice(215);
	        	 reallymoney.setUuse("专业版");
	         }
		            break;
	         case "套餐7" :
	         {
	        	 reallymoney.setUlevel("1年");
	        	 reallymoney.setUprice(320);
	        	 reallymoney.setUuse("企业版");
	         }
		            break;
	         default :
	            System.out.println("选择套餐错误");
	      }
	      */
	    String achoose=choosepay.getChoose();  
   	if(achoose.equalsIgnoreCase("uone"))  
       {
      	 reallymoney.setUlevel("无限 ");
      	 reallymoney.setUprice(0);
      	 reallymoney.setUuse("学习版");
       }
         
   	else if(achoose.equalsIgnoreCase("utwo"))
   	{
   	 reallymoney.setUlevel("1月");
  	 reallymoney.setUprice(15);
  	 reallymoney.setUuse("标准版");
   	}
   	else if (achoose.equalsIgnoreCase("uthree"))
   	{
   	 reallymoney.setUlevel("1月");
  	 reallymoney.setUprice(25);
  	 reallymoney.setUuse("专业版");
   	}
   	else if (achoose.equalsIgnoreCase( "ufour"))
   	{
   	 reallymoney.setUlevel("1月");
  	 reallymoney.setUprice(45);
  	 reallymoney.setUuse("企业版");
   	}
   	else if (achoose.equalsIgnoreCase("ufive"))
   	{
   	 reallymoney.setUlevel("1年");
  	 reallymoney.setUprice(110);
  	 reallymoney.setUuse("标准版");
   	}
   	else if (achoose.equalsIgnoreCase("usix"))
   	{
   		reallymoney.setUlevel("1年");
     	 reallymoney.setUprice(215);
     	 reallymoney.setUuse("专业版");
   	}
   	else if (achoose.equalsIgnoreCase("useven"))
   	{
   	 reallymoney.setUlevel("1年");
  	 reallymoney.setUprice(320);
  	 reallymoney.setUuse("企业版");
   	}
   	else 
  
       {
      	 System.out.println("选择套餐出错");
       }
	      
	      
	      
	      
	      
	      
	      
	      
		model.addAttribute(reallymoney);
		
		//测试是否是这个函数出问题了,好像是出问题了
		return moneyService.handelmoney(reallymoney, model, session);
		//return "before/tochoosecost";
		//绝对路径跳转
		//return "/before/mainBefore";
		
	}
	@RequestMapping("/tochoosecost")
	public String tochoosecost(Model model)
	{
		model.addAttribute("payreal", "");
		return "before/tochoosecost";
	}
	/*
	//showtan跳到index.jsp
	@RequestMapping("/taocantoindex")
	public String taocantoindex()
	{
		return "before/choostcost";
	}
	
	*/
	@RequestMapping("/toreallychoosecost")
	public String toreallychoosecost(Model model)
	{
		model.addAttribute("choosepay", new Umoney());
		return "before/choosecost";
	}
	
	
	
}
