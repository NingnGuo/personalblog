package com.gnn.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="admin",catalog="blog")
public class Admin {

	private int id;
	private String uname;
	private String pwd;
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id",unique=true,nullable=false)
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	@Column(name="uname")
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	@Column(name="pwd")
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	@Override
	public String toString() {
		return "Admin [id=" + id + ", uname=" + uname + ", pwd=" + pwd + "]";
	}
	public Admin(String uname, String pwd) {
		super();
		this.uname = uname;
		this.pwd = pwd;
	}
	public Admin() {
		// TODO Auto-generated constructor stub
	}
	
	
	
}
