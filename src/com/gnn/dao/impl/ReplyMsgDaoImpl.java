package com.gnn.dao.impl;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gnn.dao.ReplyMsgDao;
import com.gnn.entity.ReplyMsg;
@Repository("replyMsgDao")
public class ReplyMsgDaoImpl implements ReplyMsgDao {

	@Autowired
	SessionFactory sessionFactory;
	@Override
	public void addReplyMessage(ReplyMsg reply) {
		// TODO Auto-generated method stub
		 Session session=sessionFactory.getCurrentSession();
         SimpleDateFormat smf=new SimpleDateFormat("yyyy-MM-dd");
         Date date=null;
         try {
			date=smf.parse(smf.format(new Date()));
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
         reply.setHdate(date);
         session.save(reply);
	}

}
