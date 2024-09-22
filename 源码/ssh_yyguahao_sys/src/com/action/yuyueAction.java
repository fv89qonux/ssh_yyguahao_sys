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
	
	public String yuyueAdd()//�û�-ԤԼר��
	{
		Map request=(Map)ServletActionContext.getContext().get("request");//�õ���ǰ����Ķ���
		Map session=ActionContext.getContext().getSession();//���session�д��jspҳ��Ĳ���
		TUser user=(TUser)session.get("user");
		
		//�������У������ظ�ԤԼ
		String sql="from TYuyue where userId=? and yishengId=? and shijian=?";
		Object c[]={user.getUserId(),yishengId,shijian};
		List list=yuyueDAO.getHibernateTemplate().find(sql,c);//�ڱ����ҵ���������ֵ
		if(list.size()>0)
		{
			request.put("msg", "������"+shijian+"ԤԼ����ר�ң��벻Ҫ�ظ�ԤԼ��");
			return "msg";
		}
		
		//������������ͬ��ԤԼͬһҽ��������ԤԼ
		String sql1="from TYuyue where yishengId=? and shijian=?";
		Object c1[]={yishengId,shijian};
		List list1=yuyueDAO.getHibernateTemplate().find(sql1,c1);
		if(list1.size()>=5)
		{
			request.put("msg", "�Բ�����"+shijian+"��������5������ԤԼ����ר��!��������ԤԼ����ԤԼ����ר�ң�");
			return "msg";
		}
		
		TYuyue yuyue=new TYuyue();
		yuyue.setUserId(user.getUserId());
		yuyue.setYishengId(yishengId);
		yuyue.setShijian(shijian);
		yuyue.setBeizhu(beizhu);
		yuyue.setDel("wait");
		yuyue.setHuifu("ԤԼ���ڵȴ���ˣ������ĵȺ򡣡���");
		
		yuyueDAO.save(yuyue);
		request.put("msg", "����ԤԼ�ɹ����ֵȴ���ˡ�ע��鿴��ԤԼ��¼�������˽����");
		return "msg";
	}
	
	public String yuyueManaMy()//�û�-��ʾ���˵�ԤԼ��Ϣ
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
	
	public String yuyueDelMy()//�û�-ȡ��ԤԼ
	{
		yuyueDAO.delete(yuyueDAO.findById(id));
		this.setMessage("ȡ���ɹ�");
		this.setPath("yuyueManaMy.action");
		return "succeed";
	}
	
	public String yuyuePre()//�û�-ԤԼ�������
	{
		return ActionSupport.SUCCESS;
	}

	public String yuyueOk()//�û�-ԤԼָ��
	{
		return ActionSupport.SUCCESS;
		
	}
	
	
	public String yuyueCheck()//ҽ��-���е�ԤԼ��Ϣ
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
	
	public String yuyueAgree()//ҽ��-ͬ��ԤԼ
	{
		TYuyue yuyue=yuyueDAO.findById(id);
		yuyue.setDel("no");
		yuyue.setHuifu("����ԤԼ��ͨ��ҽ����ˣ��밴ʱ�������ҽ��");
		yuyueDAO.attachDirty(yuyue);
		this.setMessage("��˳ɹ���");
		this.setPath("yuyueCheck.action");
		return "succeed";
	}
	
	public String yuyueDel()//ҽ��-�ܾ�ԤԼ
	{
		TYuyue yuyue=yuyueDAO.findById(id);
		yuyue.setDel("yes");
		yuyue.setHuifu("�Բ�����ԤԼ�ĵ���ҽ�������������ԤԼ �� ԤԼ����ר�ң�");
		yuyueDAO.attachDirty(yuyue);
		this.setMessage("�ܾ��ɹ���");
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
