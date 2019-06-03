package com.gnn.dao.impl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gnn.dao.MessageDao;
import com.gnn.entity.Message;
@Repository("messageDao")
public class MessageDaoImpl implements MessageDao {

	@Autowired
	SessionFactory sessionFactory;
	//获得所有留言
	@Override
	public List<Message> getAllMessage() {
		// TODO Auto-generated method stub
		List<Message> mlist=null;
		Session session=sessionFactory.getCurrentSession();
		Criteria c=session.createCriteria(Message.class);
		mlist=c.list();
		return mlist;
	}
 
	//添加留言
	@Override
	public void addMessage(Message m) {
		// TODO Auto-generated method stub
         Session session=sessionFactory.getCurrentSession();
         Message msg=new Message();
         //msg.setTime(new Date());
         msg.setContent(m.getContent());
         msg.setUid(m.getUid());
         msg.setTime(m.getTime());
         session.save(msg);
         
	}

	//删除留言
	@Override
	public void deleteMessage(int id) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		String hql="delete Message msg where id="+id;
		Query query=session.createQuery(hql);
		query.executeUpdate();
	}

	//通过id查看留言的详细信息
	@Override
	public Message getById(Integer id) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Message m=session.get(Message.class, id);
		return m;
	}

}
