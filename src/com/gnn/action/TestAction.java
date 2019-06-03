package com.gnn.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.apache.struts2.interceptor.SessionAware;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
@Controller
@Scope("prototype")
public class TestAction extends ActionSupport implements ServletRequestAware,ServletResponseAware {
	HttpServletRequest req;
	HttpServletResponse resp;
	private String uname;
	
	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}


	@Action(value="/hello",results={@Result(name="Hello",location="/index.jsp")})
	public String hi() {
		System.out.println("hello");
		return "Hello";
	}
	
	@Action(value="/show",results={@Result(name="xs",location="/show.jsp")})
	public String show() throws IOException{
		resp.setContentType("text/html;charset=UTF-8");
		PrintWriter out = resp.getWriter();
		//String uname=req.getParameter("uname");
		out.write(this.uname);
		return "xs";
	}

	@Override
	public void setServletResponse(HttpServletResponse resp) {
		// TODO Auto-generated method stub
		this.resp=resp;
	}

	@Override
	public void setServletRequest(HttpServletRequest req) {
		// TODO Auto-generated method stub
		this.req=req;
	}

}
