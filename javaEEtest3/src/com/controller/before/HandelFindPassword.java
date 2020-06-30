/*
 * 处理密码找回
 */
package com.controller.before;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.Socket;
import java.net.UnknownHostException;
import java.util.concurrent.TimeUnit;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.po.before.MyUser;
import com.service.admin.FindPasswordWait;
import com.service.before.FindPasswordClient;
import com.service.before.FindPasswordService;

@Controller
@RequestMapping("/before")
public class HandelFindPassword {
	@Autowired
	private FindPasswordService FindPasswordService;
	@RequestMapping("/findpassword")
	 
	public String findpassword(@ModelAttribute("userlogin") MyUser userlogin,Model model, HttpSession session,HttpServletResponse response) throws InterruptedException
	{
		//在login.jsp前台上加上获取每一次的用户名输入存到model中,便于待会的客户端传送过去用户名
		//先启动服务器
		//再发出请求:找回密码
		//使用socket通信
				//先判断是否用户名存在
		MyUser userlogin2= (MyUser) session.getAttribute("userlogin");
		String msg=FindPasswordService.findpassword(userlogin2);
		PrintWriter out;
		if(msg.equals("没有该用户"))
		{
			//System.out.println(msg);
			//session.invalidate();
			//model.addAttribute("admindetail", new admindetail());
			
			try {
				response.setCharacterEncoding("UTF-8");
				response.setContentType("text/html;charset=UTF-8");
				out = response.getWriter();
				
				out.append("<script language='javascript'>alert('没有该用户,开始跳转至初始页面!');parent.location.href='http://localhost:8080/javaEEtest3/tologin.jsp'</script>");
				out.flush();
				//out.print("<script>alert('没有该用户!');window.location.href='tologin.jsp'</script>");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		else
		{
			FindPasswordClient a=new FindPasswordClient();
			//初始化服务器端
			//FindPasswordWait b=new FindPasswordWait();
			//b.init();
			//客户端传送用户名过去
			a.initclient(msg);
			//获取来自服务器端回信
			//设置客户端等待3s
			//TimeUnit.SECONDS.sleep(3);
			//先从服务器端传送消息到客户端
			
			FindPasswordWait b=new FindPasswordWait();
//unamex:输入的用户名			<br><c:out value="${unamex}" default="游客" />11<br>

//			b.serversend(b.getTemp22());
//			System.out.println("abb="+b.getTemp22()+"Controller包服务器端返回消息");
//			//客户端收到消息
//		String serverreturn=a.getback();
//		System.out.println("服务器端返回消息"+serverreturn);
//			if (serverreturn!=null)
//			{
//			
//			}
			response.setCharacterEncoding("UTF-8");
			response.setContentType("text/html;charset=UTF-8");
			try {
				out = response.getWriter();
				out.append("<script language='javascript'>alert('修改成功,开始跳转至注册页面!');parent.location.href='http://localhost:8080/javaEEtest3/before/toregister'</script>");
				out.flush();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
			
		}
				//用户名存在,则将这个用户名的记录清空
		
		//model.addAttribute("admindetail", new admindetail());
		return "redirect:/before/toLogin";
		
		
				
				//否则跳转到登陆页面

		
		
		
		
	}
}
