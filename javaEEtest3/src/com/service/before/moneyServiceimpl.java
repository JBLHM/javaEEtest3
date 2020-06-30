package com.service.before;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.dao.before.reallymoneyDao;

import com.po.before.Umoney;
import com.po.before.reallymoney;
@Service("moneyService")
@Transactional
public class moneyServiceimpl implements moneyService {

	@Autowired
	private reallymoneyDao reallymoneyDao;
	@Override
	public String handelmoney(reallymoney umoney,Model model, HttpSession session) {
		// TODO Auto-generated method stub
		//²âÊÔ
		//reallymoney umoney1=new reallymoney("1","2",30.0,"4","5");
		//
		try
		{
			String namex=reallymoneyDao.getmoneyname(umoney);
			if(namex!=null)
			{
				reallymoneyDao.updatemoneyname(umoney);
				return "before/showtaocan";
			}
			else
			{
				int n = reallymoneyDao.Thandelmoney(umoney);
				if(n > 0) {
					return "before/showtaocan";
				}else {
					model.addAttribute("moneymsg", "Ö§¸¶Ì×²ÍÊ§°Ü£¡");
					//·µ»Øµ½Ö§¸¶Ì×²Í½çÃæ
					return "before/choosecost";
				}
			}
			
			
			
		}catch(NullPointerException e)
		{
			
		}
		return null;
		
		
	}
	
}
