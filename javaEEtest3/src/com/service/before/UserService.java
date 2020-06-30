package com.service.before;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

import com.po.before.MyUser;

public interface UserService {
	
	public String register(MyUser userlogin,Model model, HttpSession session, String code);
	public String login(MyUser userlogin,Model model, HttpSession session, String code);
}
