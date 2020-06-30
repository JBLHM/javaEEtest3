package exception;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ModelAndView;
import com.po.admin.admindetail;
import com.po.before.MyUser;
public class MyExceptionHandler implements HandlerExceptionResolver {
	@Override
	public ModelAndView resolveException(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2,
			Exception arg3) {
	   	Map<String, Object> model = new HashMap<String, Object>();  
        model.put("ex", arg3); 
        // 根据不同错误转向不同页面  
       if(arg3 instanceof AdminLoginNoException){
        	//登录页面需要auser对象
        	arg0.setAttribute("admindetailr", new admindetail());
        	
        	
        	arg0.setAttribute("msg", "没有登录，请登录！");
        	return new ModelAndView("/admin/tologin", model);
        } else if(arg3 instanceof UserLoginNoException){
        	arg0.setAttribute("userlogin", new MyUser());
        	arg0.setAttribute("msg", "没有登录，请登录！");
        	return new ModelAndView("/before/toLogin", model);
       }else{  
        	return new ModelAndView("/error/error", model);  
        }  
	}
}
