package com.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.dao.TAdminDAO;
import com.dao.TUserDAO;
import com.dao.TChuangweiDAO;
import com.dao.TYuyueZhuyuanDAO;

import com.model.TAdmin;
import com.model.TUser;
import com.model.TYisheng;
import com.model.TYuyue;
import com.model.TYuyueZhuyuan;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
//import com.util.Pagination;

public class yuyueZhuyuanAction extends ActionSupport
{
	private int id;
	private int userId;
	private int chuangweiId;
	private String shijian;
	private int shijianSize;
//	private String del;
//	private String s="no";
	 
	private String message;
	private String path;

	private TYuyueZhuyuanDAO yuyueZhuyuanDAO;
	private TChuangweiDAO chuangweiDAO;
	private TUserDAO userDAO;
	
	public String yuyueZhuyuan()//�û�-ԤԼסԺ
	{
		Map request=(Map)ServletActionContext.getContext().get("request");//�õ���ǰ����Ķ���
		Map session=ActionContext.getContext().getSession();//���session�д��jspҳ��Ĳ���
		TUser user=(TUser)session.get("user");

		TYuyueZhuyuan yuyueZhuyuan=new TYuyueZhuyuan();
		yuyueZhuyuan.setUserId(user.getUserId());
		yuyueZhuyuan.setChuangweiId(chuangweiId);
		yuyueZhuyuan.setShijian(shijian);
		yuyueZhuyuan.setShijianSize(shijianSize);
//		yuyueZhuyuan.setDel(s);
		
		yuyueZhuyuanDAO.save(yuyueZhuyuan);
		request.put("msg", "���Ĵ�λ��ԤԼ�ɹ���ע��鿴��ԤԼ��¼�����ԤԼ���飡");
		return "msg";
	}
	
	public String yuyueZhuyuanManaMy()//��ҳ-��ʾԤԼסԺ����
	{
		Map session=ActionContext.getContext().getSession();
		TUser user=(TUser)session.get("user");
		
		String sql="from TYuyueZhuyuan where userId="+user.getUserId();
		List yuyueZhuyuanList=yuyueZhuyuanDAO.getHibernateTemplate().find(sql);
		for(int i=0;i<yuyueZhuyuanList.size();i++)
		{
			TYuyueZhuyuan yuyueZhuyuan=(TYuyueZhuyuan)yuyueZhuyuanList.get(i);
			yuyueZhuyuan.setChuangweiType(chuangweiDAO.findById(yuyueZhuyuan.getChuangweiId()).getChuangweiType());
			yuyueZhuyuan.setChuangweiPrice(chuangweiDAO.findById(yuyueZhuyuan.getChuangweiId()).getChuangweiPrice());
		}
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("yuyueZhuyuanList", yuyueZhuyuanList);
		return ActionSupport.SUCCESS;
	}
	
	public String yuyueZhuyuanDelMy()//�û�-ȡ��ԤԼ
	{
		yuyueZhuyuanDAO.delete(yuyueZhuyuanDAO.findById(id));
		this.setMessage("ȡ���ɹ�");
		this.setPath("yuyueZhuyuanManaMy.action");
		return "succeed";
	}
	
	public String zhuyuanMana()//ҽ��-���еĴ�λԤԼ��Ϣ
	{
		Map session=ActionContext.getContext().getSession();
		TUser user=(TUser)session.get("user");
		
		String sql="from TYuyueZhuyuan";
		List yuyueZhuyuanList=yuyueZhuyuanDAO.getHibernateTemplate().find(sql);
		for(int i=0;i<yuyueZhuyuanList.size();i++)
		{
			TYuyueZhuyuan yuyueZhuyuan=(TYuyueZhuyuan)yuyueZhuyuanList.get(i);
			yuyueZhuyuan.setChuangweiType(chuangweiDAO.findById(yuyueZhuyuan.getChuangweiId()).getChuangweiType());
			yuyueZhuyuan.setChuangweiPrice(chuangweiDAO.findById(yuyueZhuyuan.getChuangweiId()).getChuangweiPrice());
			yuyueZhuyuan.setUserName(userDAO.findById(yuyueZhuyuan.getUserId()).getUserName());
		}
		
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("yuyueZhuyuanList", yuyueZhuyuanList);
		return ActionSupport.SUCCESS;
	}
	
	public String yuyueZhuyuanDel()//ҽ��-ȡ��ԤԼ
	{
		yuyueZhuyuanDAO.delete(yuyueZhuyuanDAO.findById(id));
		this.setMessage("����ȡ�����ߵ�סԺԤԼ");
		this.setPath("zhuyuanMana.action");
		return "succeed";
	}

	
	
	public TUserDAO getUserDAO()
	{
		return userDAO;
	}
	public void setUserDAO(TUserDAO userDAO)
	{
		this.userDAO = userDAO;
	}

	
	public TChuangweiDAO getChuangweiDAO()
	{
		return chuangweiDAO;
	}
	public void setChuangweiDAO(TChuangweiDAO chuangweiDAO)
	{
		this.chuangweiDAO = chuangweiDAO;
	}


	public Integer getShijianSize()
	{
		return shijianSize;
	}
	public void setShijianSize(Integer shijianSize)
	{
		this.shijianSize = shijianSize;
	}


	public String getShijian()
	{
		return shijian;
	}
	public void setShijian(String shijian)
	{
		this.shijian = shijian;
	}

	
	public int getId()
	{
		return id;
	}
	public void setId(int id)
	{
		this.id = id;
	}
	

	public String getMessage()
	{
		return message;
	}
	public void setMessage(String message)
	{
		this.message = message;
	}


	public String getPath()
	{
		return path;
	}
	public void setPath(String path)
	{
		this.path = path;
	}


	public int getUserId()
	{
		return userId;
	}
	public void setUserId(int userId)
	{
		this.userId = userId;
	}



	public int getChuangweiId()
	{
		return chuangweiId;
	}
	public void setChuangweiId(int chuangweiId)
	{
		this.chuangweiId = chuangweiId;
	}



	public TYuyueZhuyuanDAO getYuyueZhuyuanDAO()
	{
		return yuyueZhuyuanDAO;
	}
	public void setYuyueZhuyuanDAO(TYuyueZhuyuanDAO yuyueZhuyuanDAO)
	{
		this.yuyueZhuyuanDAO = yuyueZhuyuanDAO;
	}
	
}
