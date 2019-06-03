package com.gnn.entity;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
@Entity
@Table(name="replymsg",catalog="blog")
public class ReplyMsg {
	
	private int id;//回复表的id
    private String hcontent;//回复内容
    private Date hdate;//回复时间
    private User user;
    @OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name="uid")
    public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name="id",unique=true,nullable=false)
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	@Column(name="hcontent")
	public String getHcontent() {
		return hcontent;
	}
	public void setHcontent(String hcontent) {
		this.hcontent = hcontent;
	}
	@Column(name="hdate")
	public Date getHdate() {
		return hdate;
	}
	public void setHdate(Date hdate) {
		this.hdate = hdate;
	}
	
	@Override
	public String toString() {
		return "ReplyMsg [id=" + id +  ", hcontent=" + hcontent + ", hdate=" + hdate + "]";
	}
	public ReplyMsg(String hcontent, Date hdate) {
		super();
		this.hcontent = hcontent;
		this.hdate = hdate;
	}
    
    

}
