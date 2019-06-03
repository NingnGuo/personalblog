package com.gnn.dao.impl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gnn.dao.CollectDao;
import com.gnn.entity.Collect;
import com.gnn.entity.Passage;

@Repository("collectDao")
public class CollectDaoImpl implements CollectDao {

	@Autowired
	SessionFactory sessionFactory;
	
	//通过pid,uid获得收藏
	@Override
	public Collect getCollect(Integer pid, Integer uid) {
		// TODO Auto-generated method stub
		List<Collect> clist=null;
		Session session=sessionFactory.getCurrentSession();
		Criteria c=session.createCriteria(Collect.class);
		c.add(Restrictions.eq("pid", pid));
		c.add(Restrictions.eq("uid", uid));
		clist=c.list();
		
		return clist.get(0);
	}

	//新增收藏
	@Override
	public void addCollect(Collect collect) {
		// TODO Auto-generated method stub
        Session session=sessionFactory.getCurrentSession();
        Collect c=new Collect();
        c.setPid(collect.getPid());
        c.setUid(collect.getUid());
        c.setCollecttime(collect.getCollecttime());
        session.save(collect);
	}

	//取消收藏
	@Override
	public void delete(Integer pid, Integer uid) {
		// TODO Auto-generated method stub
		List<Collect> ulist=null;
		Session session=sessionFactory.getCurrentSession();
		Criteria c=session.createCriteria(Collect.class);
		c.add(Restrictions.eq("pid", pid));
		c.add(Restrictions.eq("uid", uid));
		ulist=c.list();
		Collect collect=session.get(Collect.class, ulist.get(0).getId());
		session.delete(collect);
	}

	//获得某一用户所有收藏的文章
	@Override
	public List<Passage> getUserCollect(Integer uid) {
		// TODO Auto-generated method stub
		List<Passage> plist=null;
		Session session=sessionFactory.getCurrentSession();
		Criteria c=session.createCriteria(Passage.class);
		c.add(Restrictions.eq("uid", uid));
		plist=c.list();
		return plist;
	}

}
