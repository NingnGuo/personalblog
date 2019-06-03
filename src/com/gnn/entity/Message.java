package com.gnn.entity;


import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="message",catalog="blog")
public class Message implements Serializable{

	private Integer id;
	private Integer uid;
	private String content;
	private String time;
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name="id",unique=true,nullable=false)
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	@Column(name="uid")
	public Integer getUid() {
		return uid;
	}
	public void setUid(Integer uid) {
		this.uid = uid;
	}
	@Column(name="content")
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	@Column(name="time")
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public Message(Integer uid, String content, String time) {
		super();
		this.uid = uid;
		this.content = content;
		this.time = time;
	}
	
	public Message() {
		super();
	}
	@Override
	public String toString() {
		return "Message [id=" + id + ", uid=" + uid + ", content=" + content + ", time=" + time + "]";
	}
	
	
	
	
	
	

	
}
