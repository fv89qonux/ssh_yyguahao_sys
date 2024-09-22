package com.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.dao.TKeshiDAO;
import com.dao.TYishengDAO;
import com.model.TKeshi;
import com.model.TUser;
import com.model.TYisheng;
import com.opensymphony.xwork2.ActionSupport;

public class yishengAction extends ActionSupport
{
	private int yishengId;
	private String yishengName;
	private String yishengPw;
	private String yishengSex;
	private String yishengAge;
	private int keshiId;
	private String keshiAnme;
	private String yishengJianjie;
	private String yishengZhicheng;
	private String yishengPhoto;
	private String yishengZhuanchang;
	
	private String message;
	private String path;
	
	private TYishengDAO yishengDAO;
	private TKeshiDAO keshiDAO;
	private String arr;
	
	public String yishengLogin()//医生-登陆
	{
		String sql="from TYisheng where yishengName=? and yishengPw=?";
		Object[] con={yishengName,yishengPw};
		List yishengList=yishengDAO.getHibernateTemplate().find(sql,con);
		if(yishengList.size()==0)
		{
			this.setMessage("用户名或密码错误");
			this.setPath("yisheng/default.jsp");
		}
		else
		{
			 Map session= ServletActionContext.getContext().getSession();
			 TYisheng yisheng=(TYisheng)yishengList.get(0);
			 session.put("yisheng", yisheng);
			 
			 this.setMessage("成功登录");
			 this.setPath("yisheng/default.jsp");
		}
		return "succeed";
	}

	public String yishengLogout()//医生-安全退出
	{
		Map session= ServletActionContext.getContext().getSession();
		session.remove("yisheng");
		return ActionSupport.SUCCESS;
	}

	public String yishengInfo()//医生查看那个人信息
	{
		TYisheng yisheng=yishengDAO.findById(yishengId);
		yisheng.setKeshiName(keshiDAO.findById(yisheng.getKeshiId()).getKeshiAnme());
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("yisheng", yisheng);
		return ActionSupport.SUCCESS;
	}
	
	public String yishengInfoEdit()//医生请求编辑个人信息
	{
		return ActionSupport.SUCCESS;
	}
	
	public void  yishengSubmit()//医生编辑个人信息，上传
	{
		TYisheng yisheng=yishengDAO.findById(yishengId);
		yisheng.setYishengName(yishengName);
		yisheng.setYishengPw(yishengPw);
		yisheng.setYishengSex(yishengSex);
		yisheng.setYishengAge(yishengAge);
		yisheng.setYishengJianjie(yishengJianjie);
		yisheng.setYishengZhicheng(yishengZhicheng);
		yisheng.setYishengZhuanchang(yishengZhuanchang);
		yisheng.setKeshiId(keshiId);
		yisheng.setDel("no");
		yishengDAO.attachDirty(yisheng);//保存或更新
		Map session= ServletActionContext.getContext().getSession();
		session.put("yisheng", yisheng);//将用户信息添加到session中
	}
	
	public String yishengAddPre()//管理员-添加医生页面
	{
		String sql="from TKeshi where del='no'";
		List keshiList=keshiDAO.getHibernateTemplate().find(sql);
		for(int i=0;i<keshiList.size();i++)
		{
			TKeshi keshi=(TKeshi)keshiList.get(i);
			keshi.setKeshiAnme(keshiDAO.findById(keshi.getKeshiId()).getKeshiAnme());
		}
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("keshiList", keshiList);
		return ActionSupport.SUCCESS;
	}
	
	public String yishengAdd()//管理员-添加医生
	{
		TYisheng yisheng=new TYisheng();
		arr=yishengPhoto;//.substring(24, yishengPhoto.length());
		
		yisheng.setYishengName(yishengName);
		yisheng.setYishengPw("111111");
		yisheng.setYishengSex(yishengSex);
		yisheng.setYishengAge(yishengAge);
		yisheng.setKeshiId(keshiId);
		yisheng.setYishengJianjie(yishengJianjie);
		yisheng.setYishengZhicheng(yishengZhicheng);
		yisheng.setYishengPhoto(arr);
		yisheng.setYishengZhuanchang(yishengZhuanchang);
		yisheng.setDel("no");
		yishengDAO.save(yisheng);
		this.setMessage("医生添加成功");
		this.setPath("yishengMana.action");
		return "succeed";
	}
	
	public String yishengMana()//管理员-查看所有医生信息
	{
		String sql="from TYisheng where del='no'";
		List yishengList=yishengDAO.getHibernateTemplate().find(sql);
		for(int i=0;i<yishengList.size();i++)
		{
			TYisheng yisheng=(TYisheng)yishengList.get(i);
			yisheng.setKeshiName(keshiDAO.findById(yisheng.getKeshiId()).getKeshiAnme());
		}
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("yishengList", yishengList);
		return ActionSupport.SUCCESS;
		
	}
	
	public String yishengDel()
	{
		TYisheng yisheng=yishengDAO.findById(yishengId);
		yisheng.setDel("yes");
		yishengDAO.attachDirty(yisheng);
		this.setMessage("医生删除成功");
		this.setPath("yishengMana.action");
		return "succeed";
	}
	
	public String yishengEditPre()
	{
		TYisheng yisheng=yishengDAO.findById(yishengId);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("yisheng", yisheng);
		return ActionSupport.SUCCESS;
	}
	
	public String yishengEdit()
	{
		TYisheng yisheng=yishengDAO.findById(yishengId);
		yisheng.setYishengName(yishengName);
		yisheng.setYishengPw(yishengPw);
		yisheng.setYishengSex(yishengSex);
		yisheng.setYishengAge(yishengAge);
		yisheng.setYishengJianjie(yishengJianjie);
		yisheng.setYishengZhicheng(yishengZhicheng);
		yisheng.setYishengZhuanchang(yishengZhuanchang);
		yisheng.setKeshiId(keshiId);
		yisheng.setDel("no");
		yishengDAO.attachDirty(yisheng);
		this.setMessage("医生信息编辑成功");
		this.setPath("yishengMana.action");
		return "succeed";
	}
	
	public String yishengAll()
	{
		String sql="from TYisheng where del='no' and keshiId="+keshiId;
		List yishengList=yishengDAO.getHibernateTemplate().find(sql);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("yishengList", yishengList);
		return ActionSupport.SUCCESS;
	}

	public TKeshiDAO getKeshiDAO()
	{
		return keshiDAO;
	}

	public void setKeshiDAO(TKeshiDAO keshiDAO)
	{
		this.keshiDAO = keshiDAO;
	}

	public TYishengDAO getYishengDAO()
	{
		return yishengDAO;
	}

	public void setYishengDAO(TYishengDAO yishengDAO)
	{
		this.yishengDAO = yishengDAO;
	}
	
	public String getMessage()
	{
		return message;
	}

	public void setMessage(String message)
	{
		this.message = message;
	}
	
	public int getKeshiId()
	{
		return keshiId;
	}

	public void setKeshiId(int keshiId)
	{
		this.keshiId = keshiId;
	}
	
	public String getYishengPw()
	{
		return yishengPw;
	}

	public void setYishengPw(String yishengPw)
	{
		this.yishengPw = yishengPw;
	}
	
	public String getYishengJianjie()
	{
		return yishengJianjie;
	}

	public void setYishengJianjie(String yishengJianjie)
	{
		this.yishengJianjie = yishengJianjie;
	}
	
	public String getYishengZhicheng()
	{
		return yishengZhicheng;
	}

	public void setYishengZhicheng(String yishengZhicheng)
	{
		this.yishengZhicheng = yishengZhicheng;
	}
	
	public String getYishengPhoto()
	{
		return yishengPhoto;
	}

	public void setYishengPhoto(String yishengPhoto)
	{
		this.yishengPhoto = yishengPhoto;
	}
	
	public String getYishengZhuanchang()
	{
		return yishengZhuanchang;
	}

	public void setYishengZhuanchang(String yishengZhuanchang)
	{
		this.yishengZhuanchang = yishengZhuanchang;
	}

	public String getPath()
	{
		return path;
	}

	public void setPath(String path)
	{
		this.path = path;
	}

	public String getYishengAge()
	{
		return yishengAge;
	}

	public void setYishengAge(String yishengAge)
	{
		this.yishengAge = yishengAge;
	}

	public int getYishengId()
	{
		return yishengId;
	}

	public void setYishengId(int yishengId)
	{
		this.yishengId = yishengId;
	}

	public String getYishengName()
	{
		return yishengName;
	}

	public void setYishengName(String yishengName)
	{
		this.yishengName = yishengName;
	}

	public String getYishengSex()
	{
		return yishengSex;
	}

	public void setYishengSex(String yishengSex)
	{
		this.yishengSex = yishengSex;
	}
	
}
