package com.gnn.dao;

import com.gnn.entity.Message;
import com.gnn.entity.ReplyMsg;

public interface ReplyMsgDao {
	

	//添加回复
	public void addReplyMessage(ReplyMsg reply);        
	
}
