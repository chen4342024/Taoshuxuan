package com.bookshop.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import com.bookshop.util.MyDaoParent;
/**
 * ͼ����ϢDao��ʵ����
 * @author Winds
 *
 */
public class BookDaoImpl extends MyDaoParent implements BookDao {

	public List<?> findAll(String hql, Session session, int maxLength) {
		List<?> l=null;
		Query q = session.createQuery(hql);
		if(q.list().size() > 0){
			q.setFirstResult(0);
			q.setMaxResults(maxLength);
			l=(List<?>)q.list();
		}		
		return l;
	}
	
}