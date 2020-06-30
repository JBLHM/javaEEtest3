package com.service.before;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.dao.before.commentDao;
import com.po.before.MyUser;
import com.po.before.comment;
@Service("commentService")
@Transactional
public class commentServiceimpl implements commentService {

	@Autowired
	private commentDao commentdao;
	@Override
	public String handelcomment(comment comment,Model model, HttpSession session){
		// TODO Auto-generated method stub
		//此处调用dao映射的数据库查询方法
		//model.addAttribute("comment", new comment());
		if(comment.uemail!=null&&comment.uword!=null)
		{
			int n =  commentdao.handelcomment(comment);
			model.addAttribute("msg", " ");
			return "before/commentsuccess";
		}
		else
		{
			model.addAttribute("msg", "操作失败");
			return "before/mainBefore";
		}
		
			
			
		
		//list.get(1);
		
	}

}
