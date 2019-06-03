package com.gnn.service;

import java.util.List;

import com.gnn.entity.Type;

public interface TypeService {

	public List<Type> getAll();
	public Type getById(int id);
	public List<Type> getByPage(int pageIndex,int pageSize);	
	public int getTotalPages(int pageSize);//根据每页记录数计算总页数
	public int getTotalCount();//计算总记录数
	public void addType(Type type);
	public void updateType(Type type);
	public void delete(int id);
	
	public Type getTypeByTid(Integer tid);
}
