package com.gnn.service;

import java.util.List;

import com.gnn.entity.Message;

public interface MessageService {

	public List<Message> getAllMessage();//获得所有留言内容
	public void addMessage(Message m);//添加留言       前台        
	public void deleteMessage(int id);
	
	public Message getById(Integer id);//通过id获得留言的详细信息
}
