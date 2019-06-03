package com.gnn.dao.impl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gnn.dao.CritiqueDAO;
import com.gnn.entity.Critique;
import com.gnn.fenye.Page;
@Repository("critiqueDao")
public class CritiqueDaoImpl implements CritiqueDAO{

	@Autowired
	SessionFactory sessionFactory;
	//添加评论
	@Override
	public void addCritique(Critique critique) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Critique c=new Critique();
		c.setContent(critique.getContent());
		c.setPid(critique.getPid());
		c.setUserid(critique.getUserid());
		session.save(critique);
	}
	
	//删除评论
	@Override
	public void deleteCritique(int id) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		String hql="delete from Critique where id="+id;
		Query query=session.createQuery(hql);
		query.executeUpdate();
	}
  //获得文章评论总数
	@Override
	public int queryCritiqueCount(int pid) {
		// TODO Auto-generated method stub
		String hql="select count(*) from Critique cri where cri.pid="+pid;
		Session session=sessionFactory.getCurrentSession();
		Query query=session.createQuery(hql);
		List list=query.list();
		return list.size();
	}
   //获得某一篇文章的所有评论
	@Override
	public List<Critique> getCritique(int pid) {
		// TODO Auto-generated method stub
		List<Critique> ulist=null;
		Session session=sessionFactory.getCurrentSession();
		Criteria c=session.createCriteria(Critique.class);
			c.add(Restrictions.eq("pid", pid));
		ulist=c.list();
		return ulist;
	}
	
	
	
	
	
	public List<Critique> queryByPage(int pid, Page page) {
		// T@OverrideODO Auto-generated method stub
		List<Critique> clist=null;
		String hql="select cri form Critique cri where cri.pid="+pid;
		Session session=sessionFactory.getCurrentSession();
		Query query=session.createQuery(hql);
		//设置每页显示多少个，设置多大结果。
		query.setMaxResults(page.getEveryPage());
		//设置起点
		query.setFirstResult(page.getBeginIndex());
		clist=query.list();
		return clist;
	}

	
	

}
