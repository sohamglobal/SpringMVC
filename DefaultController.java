package global.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import global.services.Users;

@Controller
public class DefaultController 
{
	@RequestMapping(value="/")
	public String index(ModelMap map)
	{
		Users user=new Users();
		
		map.addAttribute("user",user);
		
		return "login";
	}
	
	@RequestMapping(value="/checkuser",method = RequestMethod.POST)
	public String authenticate(@ModelAttribute Users obj,ModelMap map)
	{
		String uid=obj.getUserid();
		String ps=obj.getPass();
		String sts="";
		
		if(uid.equals("sharayu") && ps.equals("global"))
			sts="Welcome user..";
		else
			sts="Sorry.. Authentication Failed..";
		
		map.addAttribute("loginstatus", sts);
		
		return "result";
	}

}
