package com.gnn.dao;

import java.util.List;

import com.gnn.entity.Admin;

public interface AdminDao {

	public List<Admin> login(Admin admin);
}
