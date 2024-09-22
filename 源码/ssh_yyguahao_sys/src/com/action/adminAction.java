package com.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.dao.TAdminDAO;
import com.dao.TKeshiDAO;
import com.dao.TYishengDAO;
import com.model.TAdmin;
import com.model.TUser;
import com.opensymphony.xwork2.ActionSupport;

public class adminAction extends ActionSupport
{
	private int userId;
	private String userName;
	private String userPw;
	 
	private String message;
	private String path;
	private int index=1;

	private TAdminDAO adminDAO;
	
	public String adminLogin()//����Ա-��½
	{
		String sql="from TAdmin where userName=? and userPw=?";
		Object[] con={userName,userPw};
		List adminList=adminDAO.getHibernateTemplate().find(sql,con);
		if(adminList.size()==0)
		{
			this.setMessage("�û������������");
			this.setPath("admin/login.jsp");
		}
		else
		{
			 Map session= ServletActionContext.getContext().getSession();
			 TAdmin admin=(TAdmin)adminList.get(0);
			 session.put("admin", admin);
			 
			 this.setMessage("�ɹ���¼");
			 this.setPath("admin/index.jsp");
		}
		return "succeed";
	}
	
	public void  adminPwEdit()
	{
		TAdmin admin=adminDAO.findById(userId);
		admin.setUserId(userId);
		admin.setUserName(userName);
		admin.setUserPw(userPw);
		adminDAO.attachDirty(admin);
		Map session= ServletActionContext.getContext().getSession();
		session.put("admin", admin);//���û���Ϣ��ӵ�session��
//		this.setMessage("�����޸ĳɹ���");
//		this.setPath("admin/index/adminXinxi.jsp");
	}
	
	public String adminAdd()//��ӹ���Ա
	{
		TAdmin admin=new TAdmin();
		admin.setUserName(userName);
		admin.setUserPw(userPw);
		adminDAO.save(admin);
		this.setMessage("�����ɹ�");
		this.setPath("adminManage.action");
		return "succeed";
	}
	
	public String adminManage()//���й���Ա
	{
		List adminList=adminDAO.findAll();
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("adminList", adminList);
		return ActionSupport.SUCCESS;
	}
	
	
	public String adminDel()//ɾ������Ա
	{
		if(adminDAO.findById(userId) != null)
		{
			adminDAO.delete(adminDAO.findById(userId));
			this.setMessage("ɾ���ɹ�");
			this.setPath("adminManage.action");
		}
		
		return "succeed";
	}
	
	public String getMessage()
	{
		return message;
	}

	public int getIndex()
	{
		return index;
	}

	public void setIndex(int index)
	{
		this.index = index;
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

	public String getUserName()
	{
		return userName;
	}

	public void setUserName(String userName)
	{
		this.userName = userName;
	}

	public String getUserPw()
	{
		return userPw;
	}

	public void setUserPw(String userPw)
	{
		this.userPw = userPw;
	}
	
	public void setAdminDAO(TAdminDAO adminDAO)  
	{
		this.adminDAO = adminDAO;
	}


	public TAdminDAO getAdminDAO()
	{
		return adminDAO;
	}
	 
}
