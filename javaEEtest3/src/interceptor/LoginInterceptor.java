package interceptor;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
public class LoginInterceptor implements HandlerInterceptor{
	@Override
	public boolean preHandle(HttpServletRequest request,HttpServletResponse response,Object handler)throws Exception
	{
		String url=request.getRequestURI();
		if(url.indexOf("/before")>=0||url.indexOf("/admindetail")>=0||url.indexOf("/images")>=0||url.indexOf("/css")>=0)
		{
			return true;
		}
		
		HttpSession session=request.getSession();
		//获取前台账号
		Object unamex=session.getAttribute("unamex");
		//获取后台账号
		Object admindetail=session.getAttribute("admindetail");
		if(unamex!=null||admindetail!=null)
		
			return true;
		
		
		
		request.setAttribute("msg", "还没登陆,请先登陆");
		//验证码刷不出来?request.getRequestDispatcher("/WEB-INF/jsp/before/toLogin.jsp").forward(request, response);
		request.getRequestDispatcher("/tologin.jsp").forward(request, response);
		//测试不加return false,
		return false;
		
		
		
		
		
		
		
	}

}
