package com.gnn.action;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.gnn.entity.Collect;
import com.gnn.entity.Passage;
import com.gnn.entity.Praise;
import com.gnn.service.CollectService;

@Controller
public class CollectAction {

	@Autowired
	CollectService collectService;
	
	//添加收藏
	@RequestMapping(value="addCollect",method=RequestMethod.POST)
	@ResponseBody
	public int addCollect(Collect collect){
		SimpleDateFormat   lFormat =  new   SimpleDateFormat("yyyy-MM-dd HH:mm:ss");   
		String   savetime   =   lFormat.format(new Date());
		collect.setCollecttime(savetime);
		collectService.addCollect(collect);
		return 1;
	}
	@RequestMapping(value="/getCollect")
	@ResponseBody
	public Collect getCollect(HttpSession session,Integer pid,Integer uid){
		Collect collect=collectService.getCollect(pid, uid);
		return collect;
	}
	//取消收藏
	@RequestMapping(value="/deleteCollect",method=RequestMethod.POST)
	@ResponseBody
	public int deleteCollect(Integer pid,Integer uid){
		collectService.delete(pid, uid);
		return 1;
	}
	
	//根据用户id获得其收藏的所有文章
	@RequestMapping(value="getUserCollect")
	public String getUserCollect(HttpSession session,Integer uid){
		List<Passage> collectlist=collectService.getUserCollect(uid);
		session.setAttribute("collectlist", collectlist);
		return "mycollect";
	}
	
	
	
	
	
	
	
	
	
}
