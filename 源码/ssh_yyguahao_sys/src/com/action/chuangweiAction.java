package com.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.dao.TKeshiDAO;
import com.dao.TChuangweiDAO;
import com.model.TKeshi;
import com.model.TChuangwei;

import com.opensymphony.xwork2.ActionSupport;
public class chuangweiAction extends ActionSupport
{
	private int chuangweiId;
	private int chuangweiPrice;
	private String chuangweiType;
	private int chuangweiLast;                                 
	
	private String message;
	private String path;
	
	private TChuangweiDAO chuangweiDAO;
	
	public String chuangweiAdd()
	{
		TChuangwei chuangwei=new TChuangwei();
		chuangwei.setChuangweiPrice(chuangweiPrice);
		chuangwei.setChuangweiType(chuangweiType);
		chuangwei.setchuangweiLast(chuangweiLast);
		chuangwei.setDel("no");
		chuangweiDAO.save(chuangwei);
		this.setMessage("床位添加成功");
		this.setPath("chuangweiMana.action");
		return "succeed";
	}
	
	public String chuangweiMana()
	{
		String sql="from TChuangwei where del='no'";
		List chuangweiList=chuangweiDAO.getHibernateTemplate().find(sql);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("chuangweiList", chuangweiList);
		return ActionSupport.SUCCESS;
	}
	
	
	public String chuangweiDel()
	{
		TChuangwei chuangwei=chuangweiDAO.findById(chuangweiId);
		chuangwei.setDel("yes");
		chuangweiDAO.attachDirty(chuangwei);//将传入数据持久化并保存
		this.setMessage("操作成功");
		this.setPath("chuangweiMana.action");
		return "succeed";
	}
	
	
	public String chuangweiAll()//前台-床位显示
	{
		String sql="from TChuangwei where del='no' ";
		List chuangweiList=chuangweiDAO.getHibernateTemplate().find(sql);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("chuangweiList", chuangweiList);
		return ActionSupport.SUCCESS;
	}
	
	public String getMessage()
	{
		return message;
	}

	public void setMessage(String message)
	{
		this.message = message;
	}

	public int getChuangweiLast()
	{
		return chuangweiLast;
	}

	public void setChuangweiLast(int chuangweiLast)
	{
		this.chuangweiLast =chuangweiLast;
	}

	public String getPath()
	{
		return path;
	}

	public void setPath(String path)
	{
		this.path = path;
	}

	public int getChuangweiPrice()
	{
		return chuangweiPrice;
	}

	public void setChuangweiPrice(int chuangweiPrice)
	{
		this.chuangweiPrice = chuangweiPrice;
	}

	public TChuangweiDAO getYishengDAO()
	{
		return chuangweiDAO;
	}

	public void setChuangweiDAO(TChuangweiDAO chuangweiDAO)
	{
		this.chuangweiDAO = chuangweiDAO;
	}

	public int getChuangweiId()
	{
		return chuangweiId;
	}

	public void setChuangweiId(int chuangweiId)
	{
		this.chuangweiId = chuangweiId;
	}

	public String getChuangweiType()
	{
		return chuangweiType;
	}

	public void setChuangweiType(String chuangweiType)
	{
		this.chuangweiType = chuangweiType;
	}

}
