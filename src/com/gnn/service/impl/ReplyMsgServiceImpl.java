package com.gnn.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gnn.dao.ReplyMsgDao;
import com.gnn.entity.ReplyMsg;
import com.gnn.service.ReplyMsgService;
@Service("replyMsgService")
@Transactional
public class ReplyMsgServiceImpl implements ReplyMsgService {

	@Autowired
	ReplyMsgDao replyMsgDao;
	@Override
	public void addReplyMessage(ReplyMsg reply) {
		// TODO Auto-generated method stub
		replyMsgDao.addReplyMessage(reply);
	}

}
