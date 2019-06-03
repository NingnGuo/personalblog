package com.gnn.dao;

import java.util.List;

import com.gnn.fenye.Page;
import com.gnn.entity.Critique;

public interface CritiqueDAO {
	  
		public void addCritique(Critique critique);  //添加评论
		public void deleteCritique(int id);//删除评论
		public List<Critique> getCritique(int pid);//获得指定文章的所有评论
		
		public int queryCritiqueCount(int pid);//获得指定文章的评论数
		
		
		public List<Critique> queryByPage(int pid,Page page);//根据Page来查询指定文章的评论
	
}
