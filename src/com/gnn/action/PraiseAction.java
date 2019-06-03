package com.gnn.action;

import java.util.List;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.gnn.entity.Praise;
import com.gnn.service.PraiseService;

@Controller
public class PraiseAction {

	@Autowired
	PraiseService praiseService;
	
	@RequestMapping(value="/getPraise")
	@ResponseBody
	public Praise getPraise(HttpSession session,Integer pid,Integer uid){
		Praise praise=praiseService.getPraise(pid, uid);
		return praise;
	}
	@RequestMapping(value="/getPraisenum")
	@ResponseBody
	public List<Praise> getPraisenum(Integer pid){
		List<Praise> list=praiseService.getPraisenum(pid);
		System.out.println(list.size());
		return list;
	}
	@RequestMapping(value="/addPraise",method=RequestMethod.POST)
	@ResponseBody
	public int add(Praise praise){
		praiseService.add(praise);
		return 1;
	}
	@RequestMapping(value="/deletePraise",method=RequestMethod.POST)
	@ResponseBody
	public int deletePraise(Integer pid,Integer uid){
		praiseService.delete(pid, uid);
		return 1;
	}
}
