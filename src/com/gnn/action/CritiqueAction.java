package com.gnn.action;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.gnn.entity.Critique;
import com.gnn.service.CritiqueService;
import com.opensymphony.xwork2.ActionContext;
@Controller
public class CritiqueAction{

	
	    @Autowired
	    CritiqueService critiqueService;
	   //添加评论
	    @RequestMapping(value="/saveComment",method=RequestMethod.POST)
		@ResponseBody
		public int addCritique(Critique critique){
	    	SimpleDateFormat   lFormat =  new   SimpleDateFormat("yyyy-MM-dd HH:mm:ss");   
			String   savetime   =   lFormat.format(new Date());
			critique.setSavetime(savetime);
			critiqueService.addCritique(critique);
			return 1;
		}
		
		 //删除评论
		@RequestMapping(value="/delCritique")
		public String deleteCritique(int id){
			critiqueService.deleteCritique(id);
			return "passageDetail";
		}
		//获得指定文章的所有评论
		@RequestMapping(value="/findCommentByPid",method=RequestMethod.GET)
		@ResponseBody
		public List<Critique> getCritique(int pid){
			List<Critique> list=critiqueService.getCritique(pid);
			return list;
		}
  /* //添加评论
	@Action(value="/addCritique",results={@Result(name="addCri",location="/passageDetail.jsp")})
	public String addCritique(){
		Map session = ActionContext.getContext().getSession();
		String username = (String) session.get("username");
		Critique critique = new Critique();
		if(username == null || "".equals(username)) {
			critique.setUsername("匿名");
		} else {
			critique.setUsername(username);
		}
		critique.setId(id);   
		//critique.setAId(id);???
		critique.setContent(content);
		this.critiqueService.addCritique(critique);
		return "addCri";
	}
	
	 //删除评论
	@Action(value="/delCritique",results={@Result(name="delc",location="/passageDetail.jsp")})
	public String deleteCritique(){
		return "delc";
	}*/
}
