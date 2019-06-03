package com.gnn.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="praise",catalog="blog")
public class Praise {

	private Integer id;//点赞表的id
	private Integer num;//点赞数量
	private Integer uid;
	private Integer pid;
	
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id",unique=true,nullable=false)
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	@Column(name="num")
	public Integer getNum() {
		return num;
	}
	public void setNum(Integer num) {
		this.num = num;
	}
	@Column(name="uid")
	public Integer getUid() {
		return uid;
	}
	public void setUid(Integer uid) {
		this.uid = uid;
	}
	@Column(name="pid")
	public Integer getPid() {
		return pid;
	}
	public void setPid(Integer pid) {
		this.pid = pid;
	}
	public Praise(Integer num) {
		super();
		this.num = num;
	}
	@Override
	public String toString() {
		return "Praise [id=" + id + ", num=" + num + "]";
	}
	public Praise() {
		// TODO Auto-generated constructor stub
	}
	
}
