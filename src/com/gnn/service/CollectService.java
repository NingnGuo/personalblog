package com.gnn.service;

import java.util.List;

import com.gnn.entity.Collect;
import com.gnn.entity.Passage;

public interface CollectService {

	public Collect getCollect(Integer pid,Integer uid);
	public void addCollect(Collect collect);
	public void delete(Integer pid,Integer uid);
	public List<Passage> getUserCollect(Integer uid);//根据用户id获取用户收藏的文章
}
