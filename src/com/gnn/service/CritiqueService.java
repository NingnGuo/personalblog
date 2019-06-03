package com.gnn.service;

import java.util.List;

import com.gnn.entity.Critique;
import com.gnn.fenye.Page;
import com.gnn.fenye.Result;

public interface CritiqueService {
		public void addCritique(Critique critique);//添加评论
		public void deleteCritique(int id);//删除评论
		public List<Critique> getCritique(int pid);//获得指定文章的所有评论
		public Result showCritiqueByPage(int pid,Page page);//分页显示评论
}
