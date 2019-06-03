package com.gnn.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gnn.dao.CollectDao;
import com.gnn.entity.Collect;
import com.gnn.entity.Passage;
import com.gnn.service.CollectService;
@Service("collectService")
@Transactional
public class CollectServiceImpl implements CollectService {

	@Autowired
	CollectDao collectDao;
	@Override
	public Collect getCollect(Integer pid, Integer uid) {
		// TODO Auto-generated method stub
		return collectDao.getCollect(pid, uid);
	}

	@Override
	public void addCollect(Collect collect) {
		// TODO Auto-generated method stub
         collectDao.addCollect(collect);
	}

	@Override
	public void delete(Integer pid, Integer uid) {
		// TODO Auto-generated method stub
        collectDao.delete(pid, uid);
	}

	@Override
	public List<Passage> getUserCollect(Integer uid) {
		// TODO Auto-generated method stub
		return collectDao.getUserCollect(uid);
	}

}
