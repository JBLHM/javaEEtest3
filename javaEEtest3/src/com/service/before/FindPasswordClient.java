package com.service.before;
/*
 * 客户端
 */
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.ServerSocket;
import java.net.Socket;
import java.net.UnknownHostException;

public class FindPasswordClient {
	Socket clientSocket=null;
	PrintWriter out=null;
	int port=8081;
	BufferedReader br=null;
	ServerSocket serverSocket=null;
	String info=null;
	public  void initclient(String msg)
	{

		System.out.println("使用socket通信");
		try {
			clientSocket=new Socket("localhost",8081);
			out=new PrintWriter(clientSocket.getOutputStream());
			
			//out.write(msg);
			out.print(msg);
			
			//System.out.println("客户端传过来信息:"+msg);
		} catch (UnknownHostException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally
		{
			if(out!=null)
			{
				try {
					out.close();
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}	
			}
				
			if(clientSocket!=null)
			{
				try {
					clientSocket.close();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}	
			}
				
			
		}
	}
	/*
	 * 接收来自服务器端信息
	 */
public String getback() 
{
	System.out.println("服务器来消息啦：");
	try {
		//clientSocket=new Socket("localhost",8081);
		System.out.println("②服务器来消息啦：");
		//3、获取输入流，并读取服务器端的响应信息
		InputStreamReader is = new InputStreamReader(clientSocket.getInputStream());
		System.out.println("③服务器来消息啦：");
		BufferedReader br = new BufferedReader(is);
		System.out.println("④服务器来消息啦：");
		 
		 System.out.println("服务器端返回信息"+info);
		while((info=br.readLine())!=null){
		 System.out.println("我是客户端，服务器说："+info);
		}
		clientSocket.close();
		br.close();
	} catch (UnknownHostException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (IOException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}finally
	{
		if(clientSocket!=null)
		{
			try {
				clientSocket.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}	
		}
	}
	return info;
	
	
	

}
}
