package com.gnn.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gnn.dao.CritiqueDAO;
import com.gnn.entity.Critique;
import com.gnn.fenye.Page;
import com.gnn.fenye.PageUtil;
import com.gnn.fenye.Result;
import com.gnn.service.CritiqueService;
@Service("critiqueService")
@Transactional
public class CritiqueServiceImpl implements CritiqueService{

	@Autowired
	CritiqueDAO critiqueDao;
	
	//添加评论
	@Override
	public void addCritique(Critique critique) {
		// TODO Auto-generated method stub
		critiqueDao.addCritique(critique);
	}
	//删除评论
	@Override
	public void deleteCritique(int id) {
		// TODO Auto-generated method stub
		critiqueDao.deleteCritique(id);
	}
	//获得指定文章的所有评论
	@Override
	public List<Critique> getCritique(int pid) {
		// TODO Auto-generated method stub
		return critiqueDao.getCritique(pid);
	}

	@Override
	public Result showCritiqueByPage(int pid, Page page) {
		// TODO Auto-generated method stub
		page = PageUtil.createPage(page,critiqueDao.queryCritiqueCount(pid));
		List<Critique> all = critiqueDao.queryByPage(pid, page);
		Result result = new Result();
		result.setPage(page);
		result.setList(all);
		return result;
	}
	
	

}
