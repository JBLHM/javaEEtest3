package com.service.before;
import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;


import com.po.before.reallymoney;
public interface moneyService {

	public String handelmoney(reallymoney umoney,Model model, HttpSession session);
}
