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

import com.service.before.commentService;

import com.po.before.comment;

@Controller
@RequestMapping("/beforee")

public class commentController {
	@Autowired
	private commentService commentService;
	@RequestMapping("/comment")
	public String comment(HttpSession session, comment commentt,Model model)
	{
		
		model.addAttribute("commentt", new comment());
		return commentService.handelcomment(commentt, model, session);
		//¾ø¶ÔÂ·¾¶Ìø×ª
		//return "/before/mainBefore";
		
	}
	@RequestMapping("/newcontact")
	public String newcontact(HttpServletRequest request,HttpServletResponse response)
	{
		//request.getRequestDispatcher("/before/newcontact.jsp");
		return "/before/mainBefore";
	}
}
