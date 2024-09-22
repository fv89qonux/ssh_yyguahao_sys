package com.action;

import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.dao.TGonggaoDAO;
import com.model.TAdmin;
import com.model.TGonggao;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class gonggaoAction extends ActionSupport
{
	private int gonggaoId;
	private String gonggaoTitle;
	private String gonggaoContent;
	private String gonggaoData;
	private String gonggaoFabuzhe;
	
	private String message;
	private String path;
	
	private TGonggaoDAO gonggaoDAO;
	
	public String gonggaoAdd()
	{
		TGonggao gonggao=new TGonggao();
		gonggao.setGonggaoTitle(gonggaoTitle);
		gonggao.setGonggaoContent(gonggaoContent);
		gonggao.setGonggaoData(new Date().toLocaleString());
		gonggaoDAO.save(gonggao);
		this.setMessage("����������");
		this.setPath("gonggaoMana.action");
		return "succeed";
	}
	
	
	public String gonggaoMana()
	{
		List gonggaoList =gonggaoDAO.findAll();
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("gonggaoList", gonggaoList);
		return ActionSupport.SUCCESS;
	}
	
	public String gonggaoDel()
	{
		TGonggao gonggao=gonggaoDAO.findById(gonggaoId);
		gonggaoDAO.delete(gonggao);
		this.setMessage("����ɾ�����");
		this.setPath("gonggaoMana.action");
		return "succeed";
	}
	
	
	public String gonggaoDetail()
	{
		TGonggao gonggao=gonggaoDAO.findById(gonggaoId);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("gonggao", gonggao);
		return ActionSupport.SUCCESS;
	}
	
	
	public String gonggaoAll()//��ҳ-���й���
	{
		List gonggaoList1 =gonggaoDAO.findAll();
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("gonggaoList1", gonggaoList1);
		return ActionSupport.SUCCESS;
	}
	
	public String gonggaoQian5()//��ҳ-��ʾ����ǰ3
	{
		List gonggaoList=gonggaoDAO.findAll();
		if(gonggaoList.size()>3)
		{
			gonggaoList=gonggaoList.subList(0, 3);
		}
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("gonggaoList", gonggaoList);
		return ActionSupport.SUCCESS;
	}
	
	public String gonggaoDetailQian()//��ҳ-��������
	{
		TGonggao gonggao=gonggaoDAO.findById(gonggaoId);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("gonggao", gonggao);
		return ActionSupport.SUCCESS;
	}
	
	public String gonggaoYisheng()//ר��-��ʾ��������
	{
		TGonggao gonggao=gonggaoDAO.findById(gonggaoId);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("gonggao", gonggao);
		return ActionSupport.SUCCESS;
	}
		
	public String gonggaoYisheng5()//ר��-��ʾ����ǰ3
	{
		List gonggaoList=gonggaoDAO.findAll();
		if(gonggaoList.size()>3)
		{
			gonggaoList=gonggaoList.subList(0, 3);
		}
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("gonggaoList", gonggaoList);
		return ActionSupport.SUCCESS;
	}
	
	public String gonggaoYishengAll()//ר��-���й���
	{
		List gonggaoList2 =gonggaoDAO.findAll();
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("gonggaoList2", gonggaoList2);
		return ActionSupport.SUCCESS;
	}


	public String getGonggaoContent()
	{
		return gonggaoContent;
	}

	public void setGonggaoContent(String gonggaoContent)
	{
		this.gonggaoContent = gonggaoContent;
	}

	public TGonggaoDAO getGonggaoDAO()
	{
		return gonggaoDAO;
	}

	public void setGonggaoDAO(TGonggaoDAO gonggaoDAO)
	{
		this.gonggaoDAO = gonggaoDAO;
	}

	public String getGonggaoData()
	{
		return gonggaoData;
	}

	public void setGonggaoData(String gonggaoData)
	{
		this.gonggaoData = gonggaoData;
	}

	public String getGonggaoFabuzhe()
	{
		return gonggaoFabuzhe;
	}

	public void setGonggaoFabuzhe(String gonggaoFabuzhe)
	{
		this.gonggaoFabuzhe = gonggaoFabuzhe;
	}

	public int getGonggaoId()
	{
		return gonggaoId;
	}

	public void setGonggaoId(int gonggaoId)
	{
		this.gonggaoId = gonggaoId;
	}

	public String getGonggaoTitle()
	{
		return gonggaoTitle;
	}

	public void setGonggaoTitle(String gonggaoTitle)
	{
		this.gonggaoTitle = gonggaoTitle;
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
	
}
