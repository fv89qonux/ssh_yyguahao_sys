package com.dao;

import java.util.List;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.model.TChuangwei;

/**
 * Data access object (DAO) for domain model class TKeshi.
 * 
 * @see com.model.TChuangwei
 * @author MyEclipse Persistence Tools
 */

public class TChuangweiDAO extends HibernateDaoSupport
{
	private static final Log log = LogFactory.getLog(TChuangweiDAO.class);

	// property constants
	public static final String CHUANGWEI_PRICE = "chuangweiPrice";

	public static final String CHUANGWEI_TYPE = "chuangweiType";

	public static final String CHUANGWEI_LAST = "chuangweiLast";

	public static final String DEL = "del";

	protected void initDao()
	{
		// do nothing
	}

	public void save(TChuangwei transientInstance)
	{
		log.debug("saving TChuangwei instance");
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

	public void delete(TChuangwei persistentInstance)
	{
		log.debug("deleting TChuangwei instance");
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

	public TChuangwei findById(java.lang.Integer id)
	{
		log.debug("getting TChuangwei instance with id: " + id);
		try
		{
			TChuangwei instance = (TChuangwei) getHibernateTemplate().get("com.model.TChuangwei", id);
			return instance;
		} catch (RuntimeException re)
		{
			log.error("get failed", re);
			throw re;
		}
	}
	
	public List findByExample(TChuangwei instance)
	{
		log.debug("finding TChuangwei instance by example");
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
		log.debug("finding TChuangwei instance with property: " + propertyName
				+ ", value: " + value);
		try
		{
			String queryString = "from TChuangwei as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re)
		{
			log.error("find by property name failed", re);
			throw re;
		}
	}
	
	public List findByChuangweiPrice(Object chuangweiPrice)
	{
		return findByProperty(CHUANGWEI_PRICE, chuangweiPrice);
	}
	
	public List findByChuangweiType(Object chuangweiType)
	{
		return findByProperty(CHUANGWEI_TYPE, chuangweiType);
	}

	public List findByChuangweiLast(Object chuangweiLast)
	{
		return findByProperty(CHUANGWEI_LAST, chuangweiLast);
	}

	public List findByDel(Object del)
	{
		return findByProperty(DEL, del);
	}

	public List findAll()
	{
		log.debug("finding all TChuangwei instances");
		try
		{
			String queryString = "from TChuangwei";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re)
		{
			log.error("find all failed", re);
			throw re;
		}
	}

	public TChuangwei merge(TChuangwei detachedInstance)
	{
		log.debug("merging TChuangwei instance");
		try
		{
			TChuangwei result = (TChuangwei) getHibernateTemplate().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re)
		{
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(TChuangwei instance)
	{
		log.debug("attaching dirty TChuangwei instance");
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

	public void attachClean(TChuangwei instance)
	{
		log.debug("attaching clean TChuangwei instance");
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

	public static TChuangweiDAO getFromApplicationContext(ApplicationContext ctx)
	{
		return (TChuangweiDAO) ctx.getBean("TChuangweiDAO");
	}
}