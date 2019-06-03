package com.gnn.dao.impl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Example;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gnn.dao.UserDao;
import com.gnn.entity.User;

@Repository("userDao")
public class UserDaoImpl implements UserDao{

	@Autowired
	SessionFactory sessionFactory;
	@Override
	public List<User> login(User u) {
		// TODO Auto-generated method stub
		List<User> ulist=null;
		Session session=sessionFactory.getCurrentSession();
		Criteria c=session.createCriteria(User.class);
		if(u!=null){
			c.add(Restrictions.eq("username", u.getUsername()));
			c.add(Restrictions.eq("pwd", u.getPwd()));
		}
		ulist=c.list();
		return ulist;
	}
	@Override
	public int regUser(User user) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		int i=(int) session.save(user);
		return i;
	}
	@Override
	public List<User> getAllUser() {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Criteria c=session.createCriteria(User.class);
		return c.list();
	}
	@Override
	public void updateUser(User user) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		User u=session.get(User.class, user.getId());
		u.setPwd(user.getPwd());
		if(user.getTouxiang()!=null){
		u.setTouxiang(user.getTouxiang());
		}
		u.setUsername(user.getUsername());
		session.update(u);
	}
	@Override
	public void add(User user) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		
		session.save(user);
		
	}
	@Override
	public User getUserById(Integer id) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		User user=session.get(User.class, id);
		return user;
	}
	@Override
	public void delete(Integer id) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		User user=session.get(User.class, id);
		session.delete(user);
	}

}
