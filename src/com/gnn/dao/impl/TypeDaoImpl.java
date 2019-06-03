package com.gnn.dao.impl;

import java.util.List;
import java.util.Set;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.ProjectionList;
import org.hibernate.criterion.Projections;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gnn.dao.TypeDao;
import com.gnn.entity.Passage;
import com.gnn.entity.Type;
@Repository("typeDao")
public class TypeDaoImpl implements TypeDao{

	@Autowired
	SessionFactory sessionFactory;
	@SuppressWarnings("unchecked")
	@Override
	public List<Type> getAll() {
		// TODO Auto-generated method stub
		//String hql="select * from Type";
		
		Session session=sessionFactory.openSession();
		Criteria c=session.createCriteria(Type.class);
		return c.list();
	}

	@Override
	public Type getById(int id) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Type type=session.get(Type.class, id);
		return type;
	}

	@Override
	public List<Type> getByPage(int pageIndex, int pageSize) {
		// TODO Auto-generated method stub
		List<Type> typeList=null;
		Session session=sessionFactory.getCurrentSession();
		Criteria c=session.createCriteria(Type.class);
		int startIndex=(pageIndex-1)*pageSize;	
		c.setFirstResult(startIndex);
		c.setMaxResults(pageSize);
		return c.list();
	}

	@Override
	public int getTotalPages(int pageSize) {
		// TODO Auto-generated method stub
		int count=0;
		int totalPages=0;
		Session session=sessionFactory.getCurrentSession();
		Criteria c=session.createCriteria(Type.class);
		ProjectionList tList=Projections.projectionList();
		tList.add(Projections.rowCount());
		c.setProjection(tList);	
		count = ((Long) c.uniqueResult()).intValue();
		totalPages = (count % pageSize == 0) ? (count / pageSize) : (count
				/ pageSize + 1);
		return totalPages;
	}

	@Override
	public int getTotalCount() {
		// TODO Auto-generated method stub
		int count = 0;
		Session session = sessionFactory.getCurrentSession();
		Criteria c = session.createCriteria(Type.class);
		ProjectionList tList = Projections.projectionList();
		tList.add(Projections.rowCount());
		c.setProjection(tList);
		count = ((Long) c.uniqueResult()).intValue();
		return count;
	}

	@Override
	public void updateType(Type type) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.merge(type);	
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		String hql="delete Type type where type.id="+id;
		Query query=session.createQuery(hql);
		query.executeUpdate();
	}

	//添加文章之前是否需要先判断    文章列表中是否已有此种类型
	@Override
	public void addType(Type type) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		session.save(type);
	}

	//输出某种类型所对应的所有文章
	@Override
	public Type getTypeByTid(Integer tid) {
		// TODO Auto-generated method stub
		List<Type> list=null;
		Session session=sessionFactory.getCurrentSession();
		Type type=session.get(Type.class, tid);
		return type;
	}

	//输出某种类型所 对应的所有文章
	
	/*@Override
	public Type getTypePassage(Integer id) {
		// TODO Auto-generated method stub
		String hql="select name from Type where id="+id;
		return null;
	}*/
	
	
}
