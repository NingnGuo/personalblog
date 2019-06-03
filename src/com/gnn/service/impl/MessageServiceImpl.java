package com.gnn.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gnn.dao.MessageDao;
import com.gnn.entity.Message;
import com.gnn.service.MessageService;
@Service("messageService")
@Transactional
public class MessageServiceImpl implements MessageService {

	@Autowired
    MessageDao messageDao;
	@Override
	public List<Message> getAllMessage() {
		// TODO Auto-generated method stub
		return messageDao.getAllMessage();
	}

	@Override
	public void addMessage(Message m) {
		// TODO Auto-generated method stub
        messageDao.addMessage(m);
	}

	@Override
	public void deleteMessage(int id) {
		// TODO Auto-generated method stub
          messageDao.deleteMessage(id);
	}

	@Override
	public Message getById(Integer id) {
		// TODO Auto-generated method stub
		return messageDao.getById(id);
	}

}
