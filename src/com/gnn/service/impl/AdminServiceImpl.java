package com.gnn.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gnn.dao.AdminDao;
import com.gnn.entity.Admin;
import com.gnn.service.AdminService;
@Service("adminService")
@Transactional
public class AdminServiceImpl implements AdminService{

	@Autowired
	AdminDao adminDao;
	@Override
	public List<Admin> login(Admin admin) {
		// TODO Auto-generated method stub
		return adminDao.login(admin);
	}

}
