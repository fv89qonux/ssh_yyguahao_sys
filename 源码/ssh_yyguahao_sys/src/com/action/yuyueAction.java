package com.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.dao.TAdminDAO;
import com.dao.TUserDAO;
import com.dao.TYishengDAO;
import com.dao.TYuyueDAO;

import com.model.TAdmin;
import com.model.TUser;
import com.model.TYisheng;
import com.model.TYuyue;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
//import com.util.Pagination;

public class yuyueAction extends ActionSupport
{
	private int id;
	private int userId;
	private int yishengId;
	private String shijian;
	private String beizhu;
	private String del;
	private String huifu;
	private int YuyueRenshu;
	 
	private String message;
	private String path;

	private TYuyueDAO yuyueDAO;
	private TYishengDAO yishengDAO;
	private TUserDAO userDAO;
	
	public String yuyueAdd()//用户-预约专家
	{
		Map request=(Map)ServletActionContext.getContext().get("request");//得到当前请求的对象
		Map session=ActionContext.getContext().getSession();//获得session中存的jsp页面的参数
		TUser user=(TUser)session.get("user");
		
		//表中已有，不能重复预约
		String sql="from TYuyue where userId=? and yishengId=? and shijian=?";
		Object c[]={user.getUserId(),yishengId,shijian};
		List list=yuyueDAO.getHibernateTemplate().find(sql,c);//在表中找到三个属性值
		if(list.size()>0)
		{
			request.put("msg", "您已在"+shijian+"预约过该专家，请不要重复预约！");
			return "msg";
		}
		
		//表中已有五人同天预约同一医生，则不能预约
		String sql1="from TYuyue where yishengId=? and shijian=?";
		Object c1[]={yishengId,shijian};
		List list1=yuyueDAO.getHibernateTemplate().find(sql1,c1);
		if(list1.size()>=5)
		{
			request.put("msg", "对不起，在"+shijian+"这天已有5名患者预约过该专家!请您改天预约或者预约其他专家！");
			return "msg";
		}
		
		TYuyue yuyue=new TYuyue();
		yuyue.setUserId(user.getUserId());
		yuyue.setYishengId(yishengId);
		yuyue.setShijian(shijian);
		yuyue.setBeizhu(beizhu);
		yuyue.setDel("wait");
		yuyue.setHuifu("预约正在等待审核，请耐心等候。。。");
		
		yuyueDAO.save(yuyue);
		request.put("msg", "您已预约成功，现等待审核。注意查看【预约记录】里的审核结果！");
		return "msg";
	}
	
	public String yuyueManaMy()//用户-显示个人的预约信息
	{
		Map session=ActionContext.getContext().getSession();
		TUser user=(TUser)session.get("user");
		
		String sql="from TYuyue where userId="+user.getUserId();
		List yuyueList=yuyueDAO.getHibernateTemplate().find(sql);
		for(int i=0;i<yuyueList.size();i++)
		{
			TYuyue yuyue=(TYuyue)yuyueList.get(i);
			yuyue.setYishengName(yishengDAO.findById(yuyue.getYishengId()).getYishengName());
			
		}
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("yuyueList", yuyueList);
		return ActionSupport.SUCCESS;
	}
	
	public String yuyueDelMy()//用户-取消预约
	{
		yuyueDAO.delete(yuyueDAO.findById(id));
		this.setMessage("取消成功");
		this.setPath("yuyueManaMy.action");
		return "succeed";
	}
	
	public String yuyuePre()//用户-预约详情分类
	{
		return ActionSupport.SUCCESS;
	}

	public String yuyueOk()//用户-预约指南
	{
		return ActionSupport.SUCCESS;
		
	}
	
	
	public String yuyueCheck()//医生-所有的预约信息
	{
		Map session=ActionContext.getContext().getSession();
		TYisheng yisheng=(TYisheng)session.get("yisheng");
		
		String sql="from TYuyue where yishengId="+yisheng.getYishengId();
		List yuyueList=yuyueDAO.getHibernateTemplate().find(sql);
		for(int i=0;i<yuyueList.size();i++)
		{
			TYuyue yuyue=(TYuyue)yuyueList.get(i);
			yuyue.setUserName(userDAO.findById(yuyue.getUserId()).getUserName());
		}
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("yuyueList", yuyueList);
		return ActionSupport.SUCCESS;
	}
	
	public String yuyueAgree()//医生-同意预约
	{
		TYuyue yuyue=yuyueDAO.findById(id);
		yuyue.setDel("no");
		yuyue.setHuifu("您的预约已通过医生审核，请按时到门诊就医！");
		yuyueDAO.attachDirty(yuyue);
		this.setMessage("审核成功！");
		this.setPath("yuyueCheck.action");
		return "succeed";
	}
	
	public String yuyueDel()//医生-拒绝预约
	{
		TYuyue yuyue=yuyueDAO.findById(id);
		yuyue.setDel("yes");
		yuyue.setHuifu("对不起，您预约的当天医生外出出诊！请改天预约 或 预约其他专家！");
		yuyueDAO.attachDirty(yuyue);
		this.setMessage("拒绝成功！");
		this.setPath("yuyueCheck.action");
		return "succeed";
	}


	public String getBeizhu()
	{
		return beizhu;
	}

	public TUserDAO getUserDAO()
	{
		return userDAO;
	}

	public void setUserDAO(TUserDAO userDAO)
	{
		this.userDAO = userDAO;
	}

	public TYishengDAO getYishengDAO()
	{
		return yishengDAO;
	}

	public void setYishengDAO(TYishengDAO yishengDAO)
	{
		this.yishengDAO = yishengDAO;
	}

	public void setBeizhu(String beizhu)
	{
		this.beizhu = beizhu;
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

	public String getShijian()
	{
		return shijian;
	}

	public void setShijian(String shijian)
	{
		this.shijian = shijian;
	}

	public int getUserId()
	{
		return userId;
	}

	public void setUserId(int userId)
	{
		this.userId = userId;
	}

	public int getYishengId()
	{
		return yishengId;
	}

	public void setYishengId(int yishengId)
	{
		this.yishengId = yishengId;
	}

	public TYuyueDAO getYuyueDAO()
	{
		return yuyueDAO;
	}

	public void setYuyueDAO(TYuyueDAO yuyueDAO)
	{
		this.yuyueDAO = yuyueDAO;
	}
	
}
