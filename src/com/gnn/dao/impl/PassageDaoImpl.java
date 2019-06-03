package com.gnn.dao.impl;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.ProjectionList;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.gnn.dao.PassageDao;
import com.gnn.entity.Passage;
import com.gnn.entity.Type;
import com.gnn.fenye.Page;
@Repository("passageDao")
public class PassageDaoImpl implements PassageDao{

	@Autowired
	SessionFactory sessionFactory;
	//获取所有文章
	@Override
	public List<Passage> getAll() {
		// TODO Auto-generated method stub
		List<Passage> pList=null;
		Session session=sessionFactory.getCurrentSession();
		Criteria c=session.createCriteria(Passage.class);
		pList=c.list();
		return pList;
	}
   
	//通过id获得文章
	@Override
	public Passage getPassageById(int id) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Passage p=session.get(Passage.class, id);
	   /* String hql="update Passage as p set p.readTimes=readTimes+1 where p.id="+id;//阅读次数加1
	    Query query=session.createQuery(hql);
		query.executeUpdate();*/
	    p.setReadTimes(p.getReadTimes()+1);
		System.out.println("###################################");
		System.out.println(p);//输出的p为null
		return p;
	}

	
   //修改更新文章
	@Override
	public void updatePassage(String title,String content,Integer id,Integer tid) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		Passage pg=session.get(Passage.class, id);
		pg.setContent(content);
		pg.setTitle(title);
		Type type=session.get(Type.class, tid);
		type.getPset().add(pg);
		pg.setType(type);
		session.update(type);
		session.update(pg);
		
	}
     
  //按照时间排序
	@Override
	public List<Passage> getByTime() {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Criteria c=session.createCriteria(Passage.class);
		List<Passage> pi=(List<Passage>)c.addOrder(Order.asc("cdate"));
		return pi;
	}

	//按照关键字查询文章
	@Override
	public List<Passage> search(String keyword) {
		// TODO Auto-generated method stub
		List<Passage> aList=null;
		String hql="from Passage pg where pg.title like ? or pg.content like ? or pg.author like ? order by cdate desc";
		Session session=sessionFactory.getCurrentSession();
		Query query=session.createQuery(hql);
		query.setString(0, "%"+keyword+"%");
		query.setString(1, "%"+keyword+"%");
		query.setString(2, "%"+keyword+"%");
		aList=query.list();
		return aList;
	}

	//添加文章
	@Override
	public void addPassage(Passage p,int tid) {
		// TODO Auto-generated method stub
	   Session session = sessionFactory.getCurrentSession();
	   Type type=session.get(Type.class, tid);
	   type.getPset().add(p);
	   p.setType(type);
	   String content=p.getContent();
	   String content1[]=content.split("\r\n");
	   session.save(type);
		session.save(p); 	
	}

	//删除文章
	@Override
	public void deletePassage(int id) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		String hql="delete Passage psg where id="+id;
		Query query=session.createQuery(hql);
		query.executeUpdate();
	}
	
	
	//按照文章点击量排序
	@Override
	public List<Passage> orderByTimes() {
		// TODO Auto-generated method stub
		String hql="from Passage as p order by p.readTimes desc";
		Session session=sessionFactory.getCurrentSession();
		Query query=session.createQuery(hql);
		List<Passage> pplist=query.list();
		return pplist;
	}

	
	
	
	
	
	
    //输出所有文章的不同类型
	/*@Override
	public List<Type> getUniqueType(int tid) {
		// TODO Auto-generated method stub
		String hql="select passage.tid,type.name from passage left join type on(passage.tid=type.id)";
		Session session=sessionFactory.getCurrentSession();
		Query query=session.createQuery(hql);
		List<Type> unlist=query.list();
		return unlist;
	}*/
	
	

	
	
	
	//获得用户文章总记录数
	@Override
	public int queryUserAllCount(String author) {
		// TODO Auto-generated method stub
		String hql="select count(*) from Passage psg where psg.author="+author;
		Session session=sessionFactory.getCurrentSession();
		Query query=session.createQuery(hql);
		List<Passage> pplist=query.list();
		return pplist.size();
	}

	//按分页信息查询作者的记录
	@Override
	public List<Passage> queryByPage(String author, Page page) {
		// TODO Auto-generated method stub
		String hql="select psg from Passage psg where psg.author="+author;
		Session session=sessionFactory.getCurrentSession();
		Query query=session.createQuery(hql);
		//List<Passage> pplist=query.list();
		//设置参数
		query.setParameter(0, author);
		//设置每页显示多少个，设置多大结果。
		query.setMaxResults(page.getEveryPage());
		//设置起点
		query.setFirstResult(page.getBeginIndex());
		return query.list();
	}
	//获得所有文章的总记录数
	@Override
	public int queryAllCount() {
		// TODO Auto-generated method stub
		String hql="select count(*) from Passage";
		Session session=sessionFactory.getCurrentSession();
		Query query=session.createQuery(hql);
		List<Passage> pplist=query.list();
		return pplist.size();
	}
	//按分页信息查询记录
	@Override
	public List<Passage> queryAllByPage(Page page) {
		// TODO Auto-generated method stub
		String hql="select psg from Passage order by psg.cdate desc";
		Session session=sessionFactory.getCurrentSession();
		Query query=session.createQuery(hql);
		//设置每页显示多少个，设置多大结果。
		query.setMaxResults(page.getEveryPage());
		//设置起点
		query.setFirstResult(page.getBeginIndex());
		List<Passage> pplist=query.list();
		return pplist;
	}
	
	@Override
	public List<Passage> getByPage(int pageIndex, int pageSize, Passage p) {
		// TODO Auto-gelnerated method stub
		List<Passage> psList=null;
		Session session=sessionFactory.getCurrentSession();
		Criteria c=session.createCriteria(Passage.class);
		if(p!=null){
			if(p.getTitle()!=null && "".equals(p.getTitle())){
				c.add(Restrictions.like("title",p.getTitle()));
			}
		    if(p.getContent()!=null && "".equals(p.getContent())){
					c.add(Restrictions.eq("content", p.getContent()));
		    }
		    /*if(p.getCdate()!=null && "".equals(p.getCdate())){
				c.add(Restrictions.eq("cdate", p.getCdate()));
	        }*/
		   /* if(p.getCollectTimes()>0){
		    	c.add(Restrictions.eq("collectTimes", p.getCollectTimes()));
		    }*/
			
			
		}
		int startIndex = (pageIndex - 1) * pageSize;
		c.setFirstResult(startIndex);
		c.setMaxResults(pageSize);
		return c.list();
		
	}

	@Override
	public int getTotalPages(int pageSize, Passage p) {
		// TODO Auto-generated method stub
		int count = 0;
		int totalPagas = 0;
		Session session = sessionFactory.getCurrentSession();
		Criteria c = session.createCriteria(Passage.class);
		ProjectionList pList = Projections.projectionList();
		pList.add(Projections.rowCount());
		c.setProjection(pList);

		if(p!=null){
			if(p.getTitle()!=null && "".equals(p.getTitle())){
				c.add(Restrictions.like("title",p.getTitle()));
			}
		    if(p.getContent()!=null && "".equals(p.getContent())){
					c.add(Restrictions.eq("content", p.getContent()));
		    }
		    if(p.getCdate()!=null && "".equals(p.getCdate())){
				c.add(Restrictions.eq("cdate", p.getCdate()));
	        }
		   /* if(p.getCollectTimes()>0){
		    	c.add(Restrictions.eq("collectTimes", p.getCollectTimes()));
		    }*/
				
		}

		count = ((Long) c.uniqueResult()).intValue();
		totalPagas = (count % pageSize == 0) ? (count / pageSize) : (count
				/ pageSize + 1);

		return totalPagas;
	}

	@Override
	public int getTotalCount(Passage p) {
		// TODO Auto-generated method stub
		int count = 0;
		Session session = sessionFactory.getCurrentSession();
		Criteria c = session.createCriteria(Passage.class);
		ProjectionList pList = Projections.projectionList();
		pList.add(Projections.rowCount());
		c.setProjection(pList);
		
		if(p!=null){
			if(p.getTitle()!=null && "".equals(p.getTitle())){
				c.add(Restrictions.like("title",p.getTitle()));
			}
		    if(p.getContent()!=null && "".equals(p.getContent())){
					c.add(Restrictions.eq("content", p.getContent()));
		    }
		    if(p.getCdate()!=null && "".equals(p.getCdate())){
				c.add(Restrictions.eq("cdate", p.getCdate()));
	        }
		    /*if(p.getCollectTimes()>0){
		    	c.add(Restrictions.eq("collectTimes", p.getCollectTimes()));
		    }*/	
		}
		count = ((Long) c.uniqueResult()).intValue();

		return count;
	}

	

	
	
	

	

}
