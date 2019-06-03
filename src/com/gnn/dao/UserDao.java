package com.gnn.dao;

import java.util.List;

import com.gnn.entity.User;

public interface UserDao {

	
	public List<User> login(User u);
	public List<User> getAllUser();
	public int regUser(User user);
	public void updateUser(User user);
	public void add(User user);
	public User getUserById(Integer id);
	public void delete(Integer id);
}
