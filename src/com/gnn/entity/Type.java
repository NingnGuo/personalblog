package com.gnn.entity;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.*;

import org.hibernate.annotations.LazyCollection;
import org.hibernate.annotations.LazyCollectionOption;

@Entity
@Table(name = "type", catalog = "blog")
public class Type {
	private int id; 
	private String name; 
	//@LazyCollection(LazyCollectionOption.FALSE)
	List<Passage> pset=new ArrayList<>();
	
	    
	//@OneToMany(mappedBy="type",cascade=CascadeType.ALL,fetch = FetchType.EAGER)//解决懒加载异常
	
	
	@OneToMany(mappedBy="type",cascade=CascadeType.ALL,fetch = FetchType.EAGER)//这种方式为输出所有类型的正确写法
	//@JSON(Serialize=false)
	public List<Passage> getPset() {
		return pset;
	}

	public void setPset(List<Passage> pset) {
		this.pset = pset;
	}
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id", unique = true, nullable = false)
	public int getId() {
		return id;
	}

	

	public void setId(int id) {
		this.id = id;
	}

	@Column(name = "name", nullable = false, length = 20)
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	
	public Type(String name) {
		this.name = name;
	}

	public Type() {
	}

}
