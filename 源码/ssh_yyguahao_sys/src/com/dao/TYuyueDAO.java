package com.dao;

import java.util.List;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.model.TYuyue;

/**
 * Data access object (DAO) for domain model class TYuyue.
 * 
 * @see com.model.TYuyue
 * @author MyEclipse Persistence Tools
 */

public class TYuyueDAO extends HibernateDaoSupport
{
	private static final Log log = LogFactory.getLog(TYuyueDAO.class);

	// property constants
	public static final String USER_ID = "userId";

	public static final String YISHENG_ID = "yishengId";

	public static final String SHIJIAN = "shijian";

	public static final String BEIZHU = "beizhu";
	
	public static final String DEL = "del";
	
	public static final String HUIFU = "huifu";

	protected void initDao()
	{
		// do nothing
	}

	public void save(TYuyue transientInstance)
	{
		log.debug("saving TYuyue instance");
//		try
//		{
//			getHibernateTemplate().save(transientInstance);
//			log.debug("save successful");
//		}
		try {
			   Session session=getSession();
			   Transaction tx=session.beginTransaction();
			   session.save(transientInstance);
			   log.debug("save successful");
			   tx.commit();
			   session.close();
			  } catch (RuntimeException re)
		{
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(TYuyue persistentInstance)
	{
		log.debug("deleting TYuyue instance");
		try
		{
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re)
		{
			log.error("delete failed", re);
			throw re;
		}
	}

	public TYuyue findById(java.lang.Integer id)
	{
		log.debug("getting TYuyue instance with id: " + id);
		try
		{
			TYuyue instance = (TYuyue) getHibernateTemplate().get(
					"com.model.TYuyue", id);
			return instance;
		} catch (RuntimeException re)
		{
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(TYuyue instance)
	{
		log.debug("finding TYuyue instance by example");
		try
		{
			List results = getHibernateTemplate().findByExample(instance);
			log.debug("find by example successful, result size: "
					+ results.size());
			return results;
		} catch (RuntimeException re)
		{
			log.error("find by example failed", re);
			throw re;
		}
	}

	public List findByProperty(String propertyName, Object value)
	{
		log.debug("finding TYuyue instance with property: " + propertyName
				+ ", value: " + value);
		try
		{
			String queryString = "from TYuyue as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re)
		{
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByUserId(Object userId)
	{
		return findByProperty(USER_ID, userId);
	}

	public List findByYishengId(Object yishengId)
	{
		return findByProperty(YISHENG_ID, yishengId);
	}

	public List findByShijian(Object shijian)
	{
		return findByProperty(SHIJIAN, shijian);
	}

	public List findByBeizhu(Object beizhu)
	{
		return findByProperty(BEIZHU, beizhu);
	}
	
	public List findByDel(Object del)
	{
		return findByProperty(DEL, del);
	}
	
	public List findAll()
	{
		log.debug("finding all TYuyue instances");
		try
		{
			String queryString = "from TYuyue";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re)
		{
			log.error("find all failed", re);
			throw re;
		}
	}

	public TYuyue merge(TYuyue detachedInstance)
	{
		log.debug("merging TYuyue instance");
		try
		{
			TYuyue result = (TYuyue) getHibernateTemplate().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re)
		{
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(TYuyue instance)
	{
		log.debug("attaching dirty TYuyue instance");
//		try
//		{
//			getHibernateTemplate().saveOrUpdate(instance);
//			log.debug("attach successful");
//		}
		try {
			   Session session=getSession();
			   Transaction tx=session.beginTransaction();
			   session.update(instance);
			   log.debug("save successful");
			   tx.commit();
			   session.close();
			  }catch (RuntimeException re){
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(TYuyue instance)
	{
		log.debug("attaching clean TYuyue instance");
		try
		{
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re)
		{
			log.error("attach failed", re);
			throw re;
		}
	}

	public static TYuyueDAO getFromApplicationContext(ApplicationContext ctx)
	{
		return (TYuyueDAO) ctx.getBean("TYuyueDAO");
	}
}