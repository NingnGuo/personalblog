package com.gnn.action;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.interceptor.SessionAware;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.gnn.entity.Critique;
import com.gnn.entity.Message;
import com.gnn.service.MessageService;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

@Controller
public class MessageAction{

	@Autowired
	MessageService messageService;
  
	//获得所有留言信息
	@RequestMapping(value="/getAllMessage",method=RequestMethod.GET)
	@ResponseBody
	public List<Message> getAllMessage(HttpSession session){
		List<Message> mlist=messageService.getAllMessage();
		session.setAttribute("mlist", mlist);
		return mlist;
	}
	//添加留言
	@RequestMapping(value="/addMessage",method=RequestMethod.POST)
	@ResponseBody
	public int addMessage(Message message){
    	SimpleDateFormat   lFormat =  new   SimpleDateFormat("yyyy-MM-dd HH:mm:ss");   
		String   savetime   =   lFormat.format(new Date());
		message.setTime(savetime);
		messageService.addMessage(message);
		return 1;
	}
	
	//删除留言       用于后台使用
	@RequestMapping(value="/delMessage")
	public String delMessage(Integer id){
		messageService.deleteMessage(id);
		return "redirect:/getMessage";
	}
	
	
	//获得所有留言信息，显示在后台
	@RequestMapping(value="/getMessage")
	public String getMessage(HttpSession session){
		List<Message> msglist=messageService.getAllMessage();
		session.setAttribute("msglist", msglist);
		return "comment";
	}
	
	//通过id获得留言的详细信息
	@RequestMapping(value="getBymsid")
	public String getBymsid(HttpSession session,Integer id){
		Message me=messageService.getById(id);
		session.setAttribute("me", me);
		return "detailMessage";
	}
	
	/*//获得所有留言信息
		//@Action(value="/getAllMessage",results={@Result(name="allmsg",location="/message.jsp")})
		public String getAllMessage(HttpSession session){
			List<Message> mlist=messageService.getAllMessage();
			session.put("mlist", mlist);
			return "allmsg";
		}
		//添加留言
		//@Action(value="/addMessage",results={@Result(name="addmsg",type="redirectAction",location="getAllMessage")})
		public String addMessage(){
			if(message!=null){
			messageService.addMessage(message);
			
			}
			return "addmsg";
		}
		
		
		//删除留言
		//@Action(value="/delMessage",results={@Result(name="delmsg",type="redirectAction",location="getAllMessage")})
		public String delMessage(){
			messageService.deleteMessage(id);
			return "delmsg";
		}
*/

}
