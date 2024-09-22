package com.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.dao.TUserDAO;
import com.model.TUser;
import com.model.TYuyue;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class UserAction extends ActionSupport
{
    private int userId;
	private String userName;
	private String userPw;
	private String userRealname;
	private String userAddress;
	private String userSex;
	private String userTel;
	private String userEmail;
	//private String userEmail1;//!!!!!!!!!!!!!!!
	private String userQq;
	
	private String newUserPw;
   	
	
	private String message;
	private String path;
	
	private TUserDAO userDAO;
	
	
	
	public void userReg()
	{
		TUser user=new TUser();
		user.setUserName(userName);
		user.setUserPw(userPw);
		user.setUserAddress(userAddress);
		user.setUserTel(userTel);
		user.setUserRealname(userRealname);
		user.setUserEmail(userEmail);
		//user.setUserEmail1(userEmail1);//!!!!!!!!!!!!!!!
		user.setUserSex(userSex);
		user.setUserQq(userQq);
		user.setUserDel("no");
		userDAO.save(user);//保存
		Map session= ServletActionContext.getContext().getSession();
		session.put("user", user);//将用户信息添加到session中
	}
	
	public void  userEdit()
	{
		TUser user=userDAO.findById(userId);
		user.setUserName(userName);
		user.setUserPw(userPw);
		user.setUserAddress(userAddress);
		user.setUserTel(userTel);
		user.setUserRealname(userRealname);
		user.setUserEmail(userEmail);
	//	user.setUserEmail1(userEmail1);//!!!!!!!!!!!!!!!
		user.setUserSex(userSex);
		user.setUserQq(userQq);
		user.setUserDel("no");
		userDAO.attachDirty(user);//保存或更新
		Map session= ServletActionContext.getContext().getSession();
		session.put("user", user);//将用户信息添加到session中
		//return "successAdd";
	}
	
	public String userAll()
	{
		TUser user=userDAO.findById(userId);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("user", user);
		return ActionSupport.SUCCESS;
		
	}
	
	public String userLogin()
	{
		String sql="from TUser where userName=? and userPw=?";
		Object[] con={userName,userPw};
		List userList=userDAO.getHibernateTemplate().find(sql,con);//在数据库表里查找
		if(userList.size()==0)
		{
			this.setMessage("用户名或密码错误");
			this.setPath("qiantai/default.jsp");
		}
		else
		{
			 Map session= ServletActionContext.getContext().getSession();
			 TUser user=(TUser)userList.get(0);
			 session.put("user", user);
			 
			 this.setMessage("成功登录");
			 this.setPath("qiantai/default.jsp");
		}
		return "succeed";
	}
	
	
	public String userLogout()
	{
		Map session= ServletActionContext.getContext().getSession();
		session.remove("user");
		return ActionSupport.SUCCESS;
	}
	
	
	public String userDel()
	{
		TUser user=userDAO.findById(userId);
		user.setUserDel("yes");
		userDAO.attachDirty(user);
		this.setMessage("删除成功");
		this.setPath("userMana.action");
		return "succeed";
	}
	
	
	public String userXinxi()
	{
		TUser user=userDAO.findById(userId);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("user", user);
		return ActionSupport.SUCCESS;
	}
	
	public String userXinxiEdit()
	{
		return ActionSupport.SUCCESS;
	}
	public String userRegister()
	{
		return ActionSupport.SUCCESS;
	}
	
	
	public String userMana()
	{
		List userList=userDAO.findAll();
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("userList", userList);
		return ActionSupport.SUCCESS;
	}
	
	
	
	public String getUserAddress()
	{
		return userAddress;
	}

	public void setUserAddress(String userAddress)
	{
		this.userAddress = userAddress;
	}

	public String getUserEmail()
	{
		return userEmail;
	}

	public void setUserEmail(String userEmail)
	{
		this.userEmail = userEmail;
	}
	
//	public String getUserEmail1()//!!!!!!!!!!
//	{
//		return userEmail1;
//	}
//
//	public void setUserEmail1(String userEmail1)//!!!!!!!!!!!!!!!
//	{
//		this.userEmail1 = userEmail1;
//	}

	public String getUserQq()
	{
		return userQq;
	}

	public void setUserQq(String userQq)
	{
		this.userQq = userQq;
	}

	public String getUserRealname()
	{
		return userRealname;
	}

	public void setUserRealname(String userRealname)
	{
		this.userRealname = userRealname;
	}

	public String getUserSex()
	{
		return userSex;
	}

	public void setUserSex(String userSex)
	{
		this.userSex = userSex;
	}

	public String getUserTel()
	{
		return userTel;
	}

	public void setUserTel(String userTel)
	{
		this.userTel = userTel;
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

	public TUserDAO getUserDAO()
	{
		return userDAO;
	}


	public String getMessage()
	{
		return message;
	}


	public String getNewUserPw()
	{
		return newUserPw;
	}

	public void setNewUserPw(String newUserPw)
	{
		this.newUserPw = newUserPw;
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


	public void setUserDAO(TUserDAO userDAO)
	{
		this.userDAO = userDAO;
	}


	public String getUserPw()
	{
		return userPw;
	}

	public void setUserPw(String userPw)
	{
		this.userPw = userPw;
	}

	
}
