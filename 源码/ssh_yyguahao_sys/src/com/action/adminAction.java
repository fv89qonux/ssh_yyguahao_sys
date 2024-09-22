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
	
	public String adminLogin()//管理员-登陆
	{
		String sql="from TAdmin where userName=? and userPw=?";
		Object[] con={userName,userPw};
		List adminList=adminDAO.getHibernateTemplate().find(sql,con);
		if(adminList.size()==0)
		{
			this.setMessage("用户名或密码错误");
			this.setPath("admin/login.jsp");
		}
		else
		{
			 Map session= ServletActionContext.getContext().getSession();
			 TAdmin admin=(TAdmin)adminList.get(0);
			 session.put("admin", admin);
			 
			 this.setMessage("成功登录");
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
		session.put("admin", admin);//将用户信息添加到session中
//		this.setMessage("密码修改成功！");
//		this.setPath("admin/index/adminXinxi.jsp");
	}
	
	public String adminAdd()//添加管理员
	{
		TAdmin admin=new TAdmin();
		admin.setUserName(userName);
		admin.setUserPw(userPw);
		adminDAO.save(admin);
		this.setMessage("操作成功");
		this.setPath("adminManage.action");
		return "succeed";
	}
	
	public String adminManage()//所有管理员
	{
		List adminList=adminDAO.findAll();
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("adminList", adminList);
		return ActionSupport.SUCCESS;
	}
	
	
	public String adminDel()//删除管理员
	{
		if(adminDAO.findById(userId) != null)
		{
			adminDAO.delete(adminDAO.findById(userId));
			this.setMessage("删除成功");
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
