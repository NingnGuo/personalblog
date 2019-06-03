package com.gnn.service;

import java.util.List;

import com.gnn.entity.User;

public interface UserService {

	public List<User> login(User u);//用户登录
	public List<User> getAllUser();//获得所有用户
	public int regUser(User user);//用户注册
	public void updateUser(User user);//更新用户
	public void add(User user);
	public User getUserById(Integer id);
	public void delete(Integer id);
}
