package com.dao;

import java.util.List;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.model.TYuyueZhuyuan;

/**
 * Data access object (DAO) for domain model class TYuyue.
 * 
 * @see com.model.TYuyueZhuyuan
 * @author MyEclipse Persistence Tools
 */

public class TYuyueZhuyuanDAO extends HibernateDaoSupport
{
	private static final Log log = LogFactory.getLog(TYuyueZhuyuanDAO.class);

	// property constants 
	public static final String USER_ID = "userId";

	public static final String CHUANGWEI_ID = "chuangweiId";

	public static final String SHIJIAN = "shijian";

	public static final String SHIJIANSIZE = "shijianSize";
	
//	public static final String DEL = "del";

	protected void initDao()
	{
		// do nothing
	}

	public void save(TYuyueZhuyuan transientInstance)
	{
		log.debug("saving TYuyueZhuyuan instance");
		try
		{
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re)
		{
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(TYuyueZhuyuan persistentInstance)
	{
		log.debug("deleting TYuyueZhuyuan instance");
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

	public TYuyueZhuyuan findById(java.lang.Integer id)
	{
		log.debug("getting TYuyueZhuyuan instance with id: " + id);
		try
		{
			TYuyueZhuyuan instance = (TYuyueZhuyuan) getHibernateTemplate().get(
					"com.model.TYuyueZhuyuan", id);
			return instance;
		} catch (RuntimeException re)
		{
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(TYuyueZhuyuan instance)
	{
		log.debug("finding TYuyueZhuyuan instance by example");
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
		log.debug("finding TYuyueZhuyuan instance with property: " + propertyName
				+ ", value: " + value);
		try
		{
			String queryString = "from TYuyueZhuyuan as model where model."
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

	public List findByChuangweiId(Object chuangweiId)
	{
		return findByProperty(CHUANGWEI_ID, chuangweiId);
	}

	public List findByShijian(Object shijian)
	{
		return findByProperty(SHIJIAN, shijian);
	}

	public List findByshijianSize(Object shijianSize)
	{
		return findByProperty(SHIJIANSIZE, shijianSize);
	}
//	
//	public List findByDel(Object del)
//	{
//		return findByProperty(DEL, del);
//	}

	public List findAll()
	{
		log.debug("finding all TYuyueZhuyuan instances");
		try
		{
			String queryString = "from TYuyueZhuyuan";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re)
		{
			log.error("find all failed", re);
			throw re;
		}
	}

	public TYuyueZhuyuan merge(TYuyueZhuyuan detachedInstance)
	{
		log.debug("merging TYuyueZhuyuan instance");
		try
		{
			TYuyueZhuyuan result = (TYuyueZhuyuan) getHibernateTemplate().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re)
		{
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(TYuyueZhuyuan instance)
	{
		log.debug("attaching dirty TYuyueZhuyuan instance");
		try
		{
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re)
		{
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(TYuyueZhuyuan instance)
	{
		log.debug("attaching clean TYuyueZhuyuan instance");
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

	public static TYuyueZhuyuanDAO getFromApplicationContext(ApplicationContext ctx)
	{
		return (TYuyueZhuyuanDAO) ctx.getBean("TYuyueZhuyuanDAO");
	}
}