package com.gnn.dao;

import java.util.List;

import com.gnn.entity.Message;

public interface MessageDao {

	public List<Message> getAllMessage();//获得所有留言内容
	public void addMessage(Message m);//添加留言       前台        
	public void deleteMessage(int id);
	
	
	public Message getById(Integer id);//通过id查看留言的详细信息
}
