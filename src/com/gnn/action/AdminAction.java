package com.gnn.action;

import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gnn.entity.Admin;
import com.gnn.service.AdminService;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
@Controller
public class AdminAction{

	
	@Autowired
	AdminService adminService;
	@RequestMapping(value="/adminLogin")
	public String login(Admin admin){
		List<Admin> adList=adminService.login(admin);
		if(adList.size()>0){
		return "/adminIndex";
		}
		else{
			return "/adminLogin";
		}
	}
	/*Admin admin=new Admin();*/
/*	HttpServletResponse resp;
	@Override
	public void setServletResponse(HttpServletResponse resp) {
		// TODO Auto-generated method stub
		this.resp=resp;
	}*/

/*	@Action(value="/adminLogin",results={@Result(name="index",location="/adminIndex.jsp"),
			@Result(name="login",location="/adminLogin.jsp")})
	public String login(Admin admin){
		List<Admin> adList=adminService.login(admin);
		if(adList.size()>0){
		return "index";
		}
		else{
			return "login";
		}
	}*/
/*	@Override
	public Admin getModel() {
		// TODO Auto-generated method stub
		return this.admin;
	}*/
	
}
