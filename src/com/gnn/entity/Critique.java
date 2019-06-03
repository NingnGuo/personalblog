package com.gnn.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="critique",catalog="blog")
public class Critique {
	private int id;
	//private int AId;
	private String content;
	private Integer userid;
	private Integer pid;
	private String savetime;
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id",unique=true,nullable=false)
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	/*public int getAId() {
		return AId;
	}

	public void setAId(int id) {
		AId = id;
	}*/
	@Column(name="content")
	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
	@Column(name="userid")
	public Integer getUserid() {
		return userid;
	}

	public void setUserid(Integer userid) {
		this.userid = userid;
	}
	@Column(name="pid")
	public Integer getPid() {
		return pid;
	}

	public void setPid(Integer pid) {
		this.pid = pid;
	}
	@Column(name="savetime")
	public String getSavetime() {
		return savetime;
	}
	public void setSavetime(String savetime) {
		this.savetime = savetime;
	}

	public Critique(int id, String content, Integer userid, Integer pid) {
		super();
		this.id = id;
		this.content = content;
		this.userid = userid;
		this.pid = pid;
	}
	public Critique() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "Critique [id=" + id + ", content=" + content + ", userid=" + userid + ", pid=" + pid + "]";
	}

	public Critique(String content, Integer userid, Integer pid, String savetime) {
		super();
		this.content = content;
		this.userid = userid;
		this.pid = pid;
		this.savetime = savetime;
	}
	

}
