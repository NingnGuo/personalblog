package com.gnn.entity;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;

import com.fasterxml.jackson.annotation.JsonBackReference;

@Entity
@Table(name="passage",catalog="blog")
public class Passage {

	private int id;
	private String title;
	private String author;
	private String content;
	private Date cdate;//创建时间
	private int readTimes;//阅读次数
	
	private String summary;//文章简介   用于前台显示时使用
	
	private Type type;//文章所属类型              关联属性
	
	private int praise;//点赞数
	
	
	//@ManyToOne(cascade = CascadeType.ALL,optional = false,fetch = FetchType.LAZY)//解决懒加载异常，但是输出的所有类型不正确，会有重复
	
	
	@ManyToOne(cascade = CascadeType.ALL,fetch = FetchType.EAGER)//这种方式是输出所有类型的正确写法
	@JoinColumn(name="tid")
	public Type getType() {
		return type;
	}
	public void setType(Type type) {
		this.type = type;
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
	@Column(name="author")
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	@Column(name="title")
	public String getTitle() {
		return title;
	}
	
	public void setTitle(String title) {
		this.title = title;
	}
	@Column(name="content")
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	@Column(name="cdate")
	public Date getCdate() {
		
		return cdate;
	}
	public void setCdate(Date cdate) {
		this.cdate = cdate;
	}
	@Column(name="readTimes")
	public int getReadTimes() {
		return readTimes;
	}
	public void setReadTimes(int readTimes) {
		this.readTimes = readTimes;
	}
	@Column(name="summary")
	public String getSummary() {
		return summary;
	}
	public void setSummary(String summary) {
		this.summary = summary;
	}
	@Column(name="praise")
	public int getPraise() {
		return praise;
	}
	public void setPraise(int praise) {
		this.praise = praise;
	}

	public Passage(String title, String author, String content, Date cdate, int readTimes, String summary, Type type,
			int praise) {
		super();
		this.title = title;
		this.author = author;
		this.content = content;
		this.cdate = cdate;
		this.readTimes = readTimes;
		this.summary = summary;
		this.type = type;
		this.praise = praise;
	}
	public Passage() {
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Passage [id=" + id + ", title=" + title + ", author=" + author + ", content=" + content + ", cdate="
				+ cdate + ", readTimes=" + readTimes + ", summary=" + summary + ", type=" + type + ", praise=" + praise
				+ "]";
	}
	
	
	/*public String getLocalTime() {
    SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm");//�������ڸ�ʽ
    String date = df.format(cdate);
    return date;
}*/
/*@Column(name="collectTimes")
public int getCollectTimes() {
	return collectTimes;
}
public void setCollectTimes(int collectTimes) {
	this.collectTimes = collectTimes;
}*/
/*@Column(name="transmitTimes")
public int getTransmitTimes() {
	return transmitTimes;
}
public void setTransmitTimes(int transmitTimes) {
	this.transmitTimes = transmitTimes;
}*/

/*public Passage(String title, int uid, String content, Date cdate,  int readTimes
		) {
	super();
	this.title = title;
	this.content = content;
	this.cdate = cdate;
	this.readTimes = readTimes;
	//this.collectTimes = collectTimes;
	//this.transmitTimes = transmitTimes;
}*/
	
}
