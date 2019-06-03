package com.gnn.service;

import java.util.List;
import com.gnn.entity.Passage;
import com.gnn.fenye.Page;
import com.gnn.fenye.Result;

public interface PassageService {

	public List<Passage> getAll();//获得所有文章
	public Passage getPassageById(int id);
	public int getTotalPages(int pageSize,Passage p);
	public List<Passage> getByPage(int pageIndex,int pageSize,Passage p);//分页查询
	public int getTotalCount(Passage p);//
	public void addPassage(Passage p,int tid);//添加文章
	public void updatePassage(String title,String content,Integer id,Integer tid);//修改文章
	public void deletePassage(int id);//删除文章
	public List<Passage> search(String keyword);//通过关键字查询文章
	public List<Passage> getByTime();//通过对时间排序来获取文章
	
	
	
	public List<Passage> orderByTimes();//按照文章阅读次数及点击量进行排序
	
	//获得文章总记录数
    public int queryUserAllCount(String author);	
	//按分页信息查询作者的记录
	public List<Passage> queryByPage(String author,Page page);	
	//获得所有文章的总记录数
	public int queryAllCount();	
	//按分页信息查询记录
	public List<Passage> queryAllByPage(Page page);
	//分页显示全部文章
    public Result showArticleByPage(Page page);
}
