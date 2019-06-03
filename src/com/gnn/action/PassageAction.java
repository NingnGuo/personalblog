package com.gnn.action;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.interceptor.SessionAware;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gnn.entity.Message;
import com.gnn.entity.Passage;
import com.gnn.entity.ReplyMsg;
import com.gnn.entity.User;
import com.gnn.fenye.Page;
import com.gnn.service.MessageService;
import com.gnn.service.PassageService;
import com.gnn.service.ReplyMsgService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
@Controller

public class PassageAction{
	
	//关于留言
	@Autowired
	MessageService messageService;
	@Autowired
	PassageService passageService;
	@Autowired
	ReplyMsgService replyMsgService;
	//获得所有文章
	@RequestMapping(value="/getAllPassage")
	public String getAllPassage(HttpSession session){
		
		List<Passage> pList=passageService.getAll();
		session.setAttribute("pList", pList);
		return "/article";
	}
	//跳转到首页
	@RequestMapping(value="/getPassage")
	public String getPassage(HttpSession session){
		
		List<Passage> ppList=passageService.getAll();
		session.setAttribute("ppList", ppList);
		return "redirect:getByTimes";
	}
	//通过id获得文章      修改文章的操作
	@RequestMapping(value="/getByPid")
	public String getByPid(HttpSession session,Integer id){
		Passage p=passageService.getPassageById(id);	
		session.setAttribute("p", p);
		//阅读次数
		int readTimes=p.getReadTimes();
		session.setAttribute("readTimes",readTimes );
		
		return "redirect:/getType";
	}
	//添加
	@RequestMapping(value="/addPassage")
	public String addPassage(Passage p,Integer tid){
		Date date=new Date();
		p.setCdate(date);
		p.setReadTimes(0);
		passageService.addPassage(p, tid);
		return "redirect:/getAllPassage";
	}
	//修改文章
	@RequestMapping(value="/updatePassage")
	public String updatePassage(String title,String content,Integer id,Integer tid){
		passageService.updatePassage(title, content, id, tid);
		return "redirect:/getAllPassage";
	}
	
	//删除文章
	@RequestMapping(value="/deletePassage")
	public String deletePassage(Integer id){
		passageService.deletePassage(id);
		return "redirect:/getAllPassage";
	}
	
	//通过关键字搜索文章
		@RequestMapping(value="/getByKeyword")
		public String getByKeyword(HttpSession session,String keyword){
			System.out.println("关键词。。。。。。。。。。。"+keyword);
			List<Passage> seList=passageService.search(keyword);
		    session.setAttribute("seList",seList );
			return "/list";
		} 
		//通过id获取文章详情
		@RequestMapping(value="/PgetById")
		public String getById(HttpSession session,Integer id){
			Passage detailPsg=passageService.getPassageById(id);
			session.setAttribute("detailPsg", detailPsg);
			System.out.println(detailPsg);
			System.out.println(id);
			/*String title1=passageService.getPassageById(id+1).getTitle();
			String title2=passageService.getPassageById(id-1).getTitle();
			session.setAttribute("title1", title1);
			session.setAttribute("title2", title2);*/
			return "passageDetail";
		}
		
		
		//按照阅读次数及点击量的高低进行排序
		@RequestMapping(value="/getByTimes")
		public String getByTimes(HttpSession session){
			List<Passage> ppplist=passageService.orderByTimes();
			session.setAttribute("ppplist", ppplist);
			return "/index";
		}
	//添加留言
		/*@RequestMapping(value="/addMessage")
		public String saveMessage(HttpSession session,Message message){
			
			if(message!=null){
				int id=message.getId();
				String fcontent=message.getFcontent();
				Date date=message.getFdate();
				User user1=message.getUser();
			
				session.setAttribute("user1", user1);
				
				messageService.addMessage(message);
				return "message";
			}else{
				return "error";
			}
			
		}*/
		//保存回复信息
		/*@RequestMapping(value="/replyMessage")
		public String saveReply(ReplyMsg replyMsg){
			if(replyMsg!=null){
				replyMsgService.addReplyMessage(replyMsg);
				return "message";
			}else{
				return "error";
			}
		}*/
	//通过关键字搜索文章
	/*@Action(value="/getByKeyword",results={@Result(name="keyword",type="redirectAction",location="getAllPassage")})
	public String getByKeyword(){
		//HttpServletRequest httpReq = ServletActionContext.getRequest();
		//String keyword= httpReq.getParameter("keyword");
		System.out.println("关键词。。。。。。。。。。。"+keyword);
		List<Passage> seList=passageService.search(keyword);
		return "keyword";
	} 
	
	//通过id获取文章
	@Action(value="/PgetById",results={@Result(name="get",location="/article.jsp")})
	public String getById(){
		ActionContext context = ActionContext.getContext();
		Map paras = context.getParameters();	
		String paraId[] = (String[]) paras.get("id");	
		//readTimes=readTimes+1;
		System.out.println(paraId[0]);
		Passage detailPsg=passageService.getPassageById(Integer.parseInt(paraId[0]));
		session.put("detailPsg", detailPsg);
		System.out.println(detailPsg);
		System.out.println(id);
		return "get";
	}
	//通过id获取到文章，跳转到updateArticle.jsp
	@Action(value="getByPid",results={@Result(name="getp",type="redirectAction",location="/getType")})
	public String getByPid(){
		Passage p=passageService.getPassageById(id);	
		session.put("p", p);
		return "getp";
	}
	
	//@Action(value="/PgetByPage",results={@Result(name="getbypage",location="/passage.jsp")})
	public String getByPage(){
		List<Passage> pList1=passageService.getByPage(0, 10, passage);	
		return "getbypage";
	}
	
	
	//添加文章
	@Action(value="/c",results={@Result(name="addp",type="redirectAction",location="getAllPassage")})
	public String addPassage(){
		System.out.println("qqqqqqqqqqqqqqqqqqqqqq文章"+passage);
		
		passageService.addPassage(passage, tid);
		return "addp";
	}
	
	//更新文章
	@Action(value="/updatePassage",results={@Result(name="updatep",type="redirectAction",location="getAllPassage")})
	public String updatePassage(){
		passageService.updatePassage(title, content, id, tid);
		return "updatep";
	}
	//删除文章
	@Action(value="/deletePassage",results={@Result(name="deletep",type="redirectAction",location="getAllPassage")})
	public String deletePassage(){
		passageService.deletePassage(id);
		return "deletep";
	}
	

	
	//按照时间排序
	@Action(value="/orderbyTime",results={@Result(name="time",location="/index.jsp")})
	public String orderByTime(){
		Passage ptime=passageService.getByTime();
		session.put("ptime", ptime);
		return "time";
	}
	

	//分页显示
	@Action(value="/showAllArticle",results={@Result(name="showall",location="/article.jsp")})
	public String showAllArticle(){
		Page page=new Page();
		page.setCurrentPage(this.getCurrentPage());
		page.setEveryPage(10);
		com.gnn.fenye.Result result=passageService.showArticleByPage(page);
		return "showall";
	}
	
	//添加留言信息
	@Action(value="/addMessage",results={@Result(name="addmsg",location="message.jsp")})
	public String saveMessage(){
		
		if(message!=null){
			int id=message.getId();
			String fcontent=message.getFcontent();
			Date date=message.getFdate();
			User user=message.getUser();
			messageService.addMessage(message);
			return "addmsg";
		}else{
			return "error";
		}
		
	}
	
	//保存回复信息
	@Action(value="replyMessage",results={@Result(name="reply",location="message.jsp")})
	public String saveReply(){
		if(replyMsg!=null){
			replyMsgService.addReplyMessage(replyMsg);
			return "reply";
		}else{
			return "error";
		}
	}*/
}
