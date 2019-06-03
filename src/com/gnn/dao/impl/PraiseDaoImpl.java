package com.gnn.dao.impl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gnn.dao.PraiseDao;
import com.gnn.entity.Passage;
import com.gnn.entity.Praise;
import com.gnn.entity.User;
@Repository("praiseDao")
public class PraiseDaoImpl implements PraiseDao {

	@Autowired
	SessionFactory sessionFactory;
	@Override
	public Praise getPraise(Integer pid, Integer uid) {
		// TODO Auto-generated method stub
		List<Praise> ulist=null;
		Session session=sessionFactory.getCurrentSession();
		Criteria c=session.createCriteria(Praise.class);
		c.add(Restrictions.eq("pid", pid));
		c.add(Restrictions.eq("uid", uid));
		ulist=c.list();
		return ulist.get(0);
		
	}
	@Override
	public void add(Praise praise) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		session.save(praise);
	}
	@Override
	public void delete(Integer pid,Integer uid) {
		// TODO Auto-generated method stub
		List<Praise> ulist=null;
		Session session=sessionFactory.getCurrentSession();
		Criteria c=session.createCriteria(Praise.class);
		c.add(Restrictions.eq("pid", pid));
		c.add(Restrictions.eq("uid", uid));
		ulist=c.list();
		Praise p=session.get(Praise.class, ulist.get(0).getId());
		session.delete(p);
	}

	@Override
	public List<Praise> getPraisenum(Integer pid) {
		// TODO Auto-generated method stub
		List<Praise> ulist=null;
		Session session=sessionFactory.getCurrentSession();
		Criteria c=session.createCriteria(Praise.class);
		c.add(Restrictions.eq("pid", pid));
		ulist=c.list();
		return ulist;
	}

}
