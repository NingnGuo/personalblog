package com.gnn.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gnn.dao.PraiseDao;
import com.gnn.entity.Praise;
import com.gnn.service.PraiseService;
@Service("praiseService")
@Transactional
public class PraiseServiceImpl implements PraiseService {

	@Autowired
	PraiseDao praiseDao;
	@Override
	public Praise getPraise(Integer pid, Integer uid) {
		// TODO Auto-generated method stub
		return praiseDao.getPraise(pid, uid);
	}
	@Override
	public void add(Praise praise) {
		// TODO Auto-generated method stub
		praiseDao.add(praise);
	}
	@Override
	public void delete(Integer pid,Integer uid) {
		// TODO Auto-generated method stub
		praiseDao.delete(pid, uid);
	}
	@Override
	public List<Praise> getPraisenum(Integer pid) {
		// TODO Auto-generated method stub
		return praiseDao.getPraisenum(pid);
	}

}
