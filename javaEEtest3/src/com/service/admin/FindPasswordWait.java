package com.service.admin;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.ServerSocket;
import java.net.Socket;
import java.net.UnknownHostException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import com.dao.admin.AdminFindPasswordDao;

/*
 * 服务器端:等待客户端传过来数据
 */

@Transactional
public class FindPasswordWait{

		
	int port=8081;
	
	 ServerSocket serverSocket=null;
	private String temp22=null;
	
	
	 
	 public String getTemp22() {
		return temp22;
	}

	public void setTemp22(String temp22) {
		this.temp22 = temp22;
	}
	Socket clientSocket=null;
	 //接收客户端消息
	 BufferedReader br=null;
	//获取响应流对象
	 PrintWriter out=null;
	 //接收来自客户端的信息
	 String temp=null;
	public String init()
	{
		System.out.println("服务器启动中.....");
		 
		 try {
			 //创建服务套接字
			serverSocket=new ServerSocket(port);
			clientSocket=serverSocket.accept();
			if(clientSocket==null)
			{
				System.out.println("建立连接失败");
			}
			else
			{
				System.out.println("建立连接成功");
				br=new BufferedReader(new InputStreamReader(clientSocket.getInputStream()));
				//System.out.println("br="+br.toString());
				 temp=br.readLine();
				
				System.out.println("读取来自客户端信息="+temp);
				//根据传来的数据进行删除用户操作
				
				
				
//				while((temp = br.readLine()) != null)
//				{
//					System.out.println("temp="+temp);
//					
//				}
//				

			}
			
			

		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 
		return temp;
	}
	
public void serversend(String temp2)
{
	System.out.println("用户"+temp2+"删除成功,返回该页面");
	Socket s = null;
	try {
		s = new Socket("localhost",8081);
		 out=new PrintWriter(s.getOutputStream());
		 out.print("用户"+temp2+"删除成功,返回该页面");
		 System.out.println("服务器结束发送数据");
	} catch (UnknownHostException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (IOException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}finally
	{
		 try {
			s.close();
			out.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	
}
//	public static void main(String[] args)
//	{
//		FindPasswordWait a=new FindPasswordWait();
//		a.init();
//	}
public void settemp2(String temp2)

{
	this.temp22=temp2;
	System.out.println("temp22="+temp22);
	
}
public String gettemp2()
{
	return this.temp22;
}

}