package com.gnn.action;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FilenameUtils;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.SessionAware;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.gnn.entity.User;
import com.gnn.service.UserService;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

@Controller
public class UserAction{
	
	@Autowired
	UserService userService;
	
	//用户登录
	@RequestMapping(value="/login")
	public String login(User u,HttpSession session) {
		List<User> ulist=userService.login(u);
		session.setAttribute("ulist", ulist);
		System.out.println(ulist.get(0).getUsername());
		if(ulist!=null || ulist.size()!=0){
			return "navi";
		}else{
			return "login";//若没有登录成功，则弹框    用户名或密码 输入错误，请重新输入
		}
		
	}

	//用户注册
	@RequestMapping(value="/reg")
	public String regUser(User u){
		if(userService.regUser(u)!=0){
		return "login";}
		else {return "reg";}
	}
	@RequestMapping(value="/addUser",method=RequestMethod.POST)
	@ResponseBody
	public int addUser(@RequestParam MultipartFile touxiang,HttpServletRequest request,HttpSession session,
			String username,String pwd
			)throws IOException {
		User user=new User();
		
		    //使用UUID给图片重命名，并去掉四个“-”
		    String touxiangname = UUID.randomUUID().toString().replaceAll("-", "");
		    //获取文件的扩展名
		    String touxiangext = FilenameUtils.getExtension(touxiang.getOriginalFilename());
	
		    //设置图片上传路径
		    //获取项目根路径下面自己新建的upload123文件夹，用于存储图片
		    String touxiangurl = request.getSession().getServletContext().getRealPath("/images/touxiang");
		    File touxiangfilex=new File(touxiangurl);
		    if(!touxiangfilex.exists()){
		        touxiangfilex.mkdir();
		    }
		   
		    //以绝对路径保存重名命后的图片
		   touxiang.transferTo(new File(touxiangurl+"/"+username+"-"+touxiangname + "." + touxiangext));
		   
		    //把图片存储路径保存到数据库
		     String urltouxiang="images/touxiang/"+username+"-"+touxiangname + "." + touxiangext;
		     if(urltouxiang!=null&urltouxiang!=""){
			     user.setTouxiang(urltouxiang);
			     }
		user.setUsername(username);

		user.setPwd(pwd);
		    
		    userService.add(user);
			
	    
	        return 1;
	}
	@RequestMapping(value="/updateUserById",method=RequestMethod.POST)
	@ResponseBody
	public int updateUserById(@RequestParam(value = "touxiang", required = false) MultipartFile touxiang,HttpServletRequest request,HttpSession session,
			String username,String pwd,Integer id
			)throws IOException {
		User user=new User();
		if(touxiang!=null){
		    //使用UUID给图片重命名，并去掉四个“-”
		    String touxiangname = UUID.randomUUID().toString().replaceAll("-", "");
		    //获取文件的扩展名
		    String touxiangext = FilenameUtils.getExtension(touxiang.getOriginalFilename());
	
		    //设置图片上传路径
		    //获取项目根路径下面自己新建的upload123文件夹，用于存储图片
		    String touxiangurl = request.getSession().getServletContext().getRealPath("/images/touxiang");
		    File touxiangfilex=new File(touxiangurl);
		    if(!touxiangfilex.exists()){
		        touxiangfilex.mkdir();
		    }
		   
		    //以绝对路径保存重名命后的图片
		   touxiang.transferTo(new File(touxiangurl+"/"+username+"-"+touxiangname + "." + touxiangext));
		   
		    //把图片存储路径保存到数据库
		     String urltouxiang="images/touxiang/"+username+"-"+touxiangname + "." + touxiangext;
		
		     if(urltouxiang!=null&urltouxiang!=""){
			     user.setTouxiang(urltouxiang);
			     }
		}
		user.setUsername(username);

		user.setPwd(pwd);
		    user.setId(id);
		    userService.updateUser(user);
			
	    
	        return 1;
	}
	@RequestMapping(value="/getAllUser",method=RequestMethod.GET)
	@ResponseBody
	public List<User> getAllUser(){
	
		List<User> list=userService.getAllUser();
		return list;
	}
	@RequestMapping(value="/deleteUser",method=RequestMethod.POST)
	@ResponseBody
	public int delete(Integer id){
	
		userService.delete(id);
		return 1;
	}
	@RequestMapping(value="/getUserById",method=RequestMethod.GET)
	@ResponseBody
	public User getUser(Integer id){
	
		User user=userService.getUserById(id);
		return user;
	}
	/*@Override
	public User getModel() {
		// TODO Auto-generated method stub
		return this.u;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		// TODO Auto-generated method stub
		this.session=session;
	}
	
	
	//用户注册
	@Action(value="/reg",results={@Result(name="reg",location="/success.jsp"),
			@Result(name="error",type="redirect",location="/register.jsp")		
	})
	public String regUser(){
		if(userService.regUser(u)!=0){
		return "reg";}
		else {return "error";}
	}

	@Override
	public void setServletRequest(HttpServletRequest hsp) {
		// TODO Auto-generated method stub
		this.hsp=hsp;
	}*/
	
}
