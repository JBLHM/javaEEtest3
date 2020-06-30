package com.service.before;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

import com.po.before.comment;

public interface commentService {
	public String handelcomment(comment comment,Model model, HttpSession session);

}
