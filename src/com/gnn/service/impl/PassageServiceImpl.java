package com.gnn.service.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gnn.dao.PassageDao;
import com.gnn.entity.Passage;
import com.gnn.fenye.Page;
import com.gnn.fenye.PageUtil;
import com.gnn.fenye.Result;
import com.gnn.service.PassageService;
@Service("passageService")
@Transactional
public class PassageServiceImpl implements PassageService{

	@Autowired
	PassageDao passageDao;
	@Override
	public List<Passage> getAll() {
		// TODO Auto-generated method stub
		return passageDao.getAll();
	}

	@Override
	public Passage getPassageById(int id) {
		// TODO Auto-generated method stub
		return passageDao.getPassageById(id);
	}

	@Override
	public int getTotalPages(int pageSize, Passage p) {
		// TODO Auto-generated method stub
		return passageDao.getTotalPages(pageSize, p);
	}

	@Override
	public int getTotalCount(Passage p) {
		// TODO Auto-generated method stub
		return passageDao.getTotalCount(p);
	}

	@Override
	public void addPassage(Passage p,int tid) {
		// TODO Auto-generated method stub
		passageDao.addPassage(p, tid);
	}

	@Override
	public void updatePassage(String title,String content,Integer id,Integer tid) {
		// TODO Auto-generated method stub
		passageDao.updatePassage(title, content, id, tid);;
	}

	@Override
	public void deletePassage(int id) {
		// TODO Auto-generated method stub
		passageDao.deletePassage(id);
	}

	@Override
	public List<Passage> getByPage(int pageIndex, int pageSize, Passage p) {
		// TODO Auto-generated method stub
		return passageDao.getByPage(pageIndex, pageSize, p);
	}

	@Override
	public List<Passage> search(String keyword) {
		// TODO Auto-generated method stub
		return passageDao.search(keyword);
	}

	@Override
	public List<Passage> getByTime() {
		// TODO Auto-generated method stub
		return passageDao.getByTime();
	}

	@Override
	public int queryUserAllCount(String author) {
		// TODO Auto-generated method stub
		return passageDao.queryUserAllCount(author);
	}

	@Override
	public List<Passage> queryByPage(String author, Page page) {
		// TODO Auto-generated method stub
		return passageDao.queryByPage(author, page);
	}

	@Override
	public int queryAllCount() {
		// TODO Auto-generated method stub
		return passageDao.queryAllCount();
	}

	@Override
	public List<Passage> queryAllByPage(Page page) {
		// TODO Auto-generated method stub
		return passageDao.queryAllByPage(page);
	}

	@Override
	public Result showArticleByPage(Page page) {
		// TODO Auto-generated method stub
		page=PageUtil.createPage(page, passageDao.queryAllCount());
		List<Passage> all=passageDao.queryAllByPage(page);
		Result result = new Result();
		result.setPage(page);
		result.setList(all);
		return result;	
	}

	@Override
	public List<Passage> orderByTimes() {
		// TODO Auto-generated method stub
		return passageDao.orderByTimes();
	}

}
