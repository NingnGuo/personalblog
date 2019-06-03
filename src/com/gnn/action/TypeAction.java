package com.gnn.action;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.SessionAware;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.gnn.entity.Type;
import com.gnn.service.TypeService;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

@Controller
public class TypeAction {

	
	@Autowired
	TypeService typeService;
	
	//获得所有文章类型      用于后台
	@RequestMapping(value="/getAllType")
	public String getAllType(HttpSession session){
		List<Type> ttlist=typeService.getAll();
	     //session.setAttribute("ttlist", ttlist);
	     
	     Set<Type> tset=new LinkedHashSet();
			for(Type t:ttlist){
				tset.add(t);
			}
			session.setAttribute("ttlist", tset);
		/*List<Type> typelist=new ArrayList<>();
		for(Type t:tset){
			typelist.add(t);
		}
		     session.setAttribute("ttlist", typelist);*/
	     
	     
	     return "type";
	}
	
	//获得所有文章类型，跳转到修改文章页面
	@RequestMapping(value="/getType")
	public String getType(HttpSession session){
		List<Type> tlist=typeService.getAll();
	     session.setAttribute("tlist", tlist);
	     return "updateArticle";
	}

	//获得所有文章类型，跳转到添加文章页面
		@RequestMapping(value="/addgetType")
		public String addgetType(HttpSession session){
			List<Type> tlist1=typeService.getAll();
		     session.setAttribute("tlist1", tlist1);
		     return "addArticle";
		}
	
	//添加类型
    @RequestMapping(value="/addType")	
	public String addType(Type type){
			typeService.addType(type);
			return "redirect:/getAllType";
		}
	//更新文章类型
	@RequestMapping(value="updateType")
	public String update(Type type){
		typeService.updateType(type);
		return "redirect:/getAllType";
	}
	//删除文章类型
		@Action(value="deleteType",results={@Result(name="delete",type="redirectAction",location="getAllType")})
		@RequestMapping(value="deleteType")
		public String delete(Integer id){
			typeService.delete(id);
			return "redirect:/getAllType";
		}
		
		
		
		//获得所有文章类型      用于前台展示
		@RequestMapping(value="/AllType")
		
		public String AllType(HttpSession session){
			List<Type> ttlist=typeService.getAll();
			Set<Type> tset=new LinkedHashSet();//LinkedHashSet可以输出有序的set集合，按照存入集合的先后顺序
			for(Type t:ttlist){
				tset.add(t);
			}
		     session.setAttribute("tt1", tset);
		     return "index";
		}
	  //输出某种类型所对应的所有文章
		@RequestMapping(value="/getPP")
		public String getPassage(HttpSession session,Integer tid){
			Type ttype=typeService.getTypeByTid(tid);
			session.setAttribute("ttype", ttype);
			System.out.println(ttype.getPset().size());
			session.setAttribute("pass", ttype.getPset());//类型对应的所有文章
			return "typeList";
		}
	/*@Action(value="/getType",results={@Result(name="getall",location="/updateArticle.jsp")})
	public String getype(){
		List<Type> tlist=typeService.getAllUniqueType();
	     session.put("tlist", tlist);
	     return "getall";
	}
	
	@Action(value="/addgetType",results={@Result(name="getall",location="/addArticle.jsp")})
	public String addgetype(){
		List<Type> tlist=typeService.getAllUniqueType();
	     session.put("tlist", tlist);
	     return "getall";
	}
	@Action(value="getById",results={@Result(name="get",location="/typeDetail.jsp")})
	public String getById(){
		String id1=req.getParameter("id");
		int id=Integer.parseInt(id1);
		Type type=typeService.getById(id);
		return "get";
	}

	
	//@Action(value="getByPage",results={@Result(name="page",location="/type.jsp")})
	public String getByPage(){
		typeService.getByPage(1, 10);
		return "page";
	}
	
	//添加文章类型
	@Action(value="addType",results={@Result(name="add",type="redirectAction",location="getAllType")})
	public String addType(){
		typeService.addType(type);
		return "add";
	}
	 
	//更新文章类型
	@Action(value="updateType",results={@Result(name="update",type="redirectAction",location="getAllType")})
	public String update(){
		typeService.updateType(type);
		return "update";
	}
	
	//删除文章类型
	@Action(value="deleteType",results={@Result(name="delete",type="redirectAction",location="getAllType")})
	public String delete(){
		typeService.delete(id);
		return "delete";
	}

	*/
	
	
}
