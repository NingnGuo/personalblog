package com.gnn.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gnn.dao.TypeDao;
import com.gnn.entity.Type;
import com.gnn.service.TypeService;

@Service("typeService")
@Transactional
public class TypeServiceImpl implements TypeService{

	@Autowired
	TypeDao typeDao;
	
	@Override
	public List<Type> getAll() {
		// TODO Auto-generated method stub
		return typeDao.getAll();
	}

	@Override
	public Type getById(int id) {
		// TODO Auto-generated method stub
		return typeDao.getById(id);
	}

	@Override
	public List<Type> getByPage(int pageIndex, int pageSize) {
		// TODO Auto-generated method stub
		return typeDao.getByPage(pageIndex, pageSize);
	}

	@Override
	public int getTotalPages(int pageSize) {
		// TODO Auto-generated method stub
		return typeDao.getTotalPages(pageSize);
	}

	@Override
	public int getTotalCount() {
		// TODO Auto-generated method stub
		return typeDao.getTotalCount();
	}


	@Override
	public void updateType(Type type) {
		// TODO Auto-generated method stub
		typeDao.updateType(type);
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		typeDao.delete(id);
	}

	@Override
	public void addType(Type type) {
		// TODO Auto-generated method stub
		typeDao.addType(type);
	}

	@Override
	public Type getTypeByTid(Integer tid) {
		// TODO Auto-generated method stub
		return typeDao.getTypeByTid(tid);
	}

}
