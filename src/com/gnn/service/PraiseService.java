package com.gnn.service;

import java.util.List;

import com.gnn.entity.Praise;

public interface PraiseService {

	public Praise getPraise(Integer pid, Integer uid);
	public void add(Praise praise);
	public void delete(Integer pid,Integer uid);
	public List<Praise> getPraisenum(Integer pid);
}
