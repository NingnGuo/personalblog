package com.gnn.dao;

import java.util.List;
import java.util.Set;

import com.gnn.entity.Passage;
import com.gnn.entity.Type;

public interface TypeDao {

	public List<Type> getAll();
	public Type getById(int id);
	public List<Type> getByPage(int pageIndex,int pageSize);
	public int getTotalPages(int pageSize);
	public int getTotalCount();
	public void addType(Type type);
	public void updateType(Type type);
	public void delete(int id);
	
	//输出某种类型所对应的所有文章
	public Type getTypeByTid(Integer tid);
	
	
}
