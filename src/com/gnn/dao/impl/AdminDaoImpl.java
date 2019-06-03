package com.gnn.dao.impl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Example;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gnn.dao.AdminDao;
import com.gnn.entity.Admin;
@Repository("adminDao")
public class AdminDaoImpl implements AdminDao{

	@Autowired
	SessionFactory sessionFactory;
	@Override
	public List<Admin> login(Admin admin) {
		// TODO Auto-generated method stub
		List<Admin> adList=null;
		Session session=sessionFactory.getCurrentSession();
		Criteria c=session.createCriteria(Admin.class);
		Example example=Example.create(admin);
		c.add(example);
		adList=c.list();
		return adList;
	}

}
