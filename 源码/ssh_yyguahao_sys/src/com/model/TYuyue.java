package com.model;

/**
 * TYuyue generated by MyEclipse Persistence Tools
 */

public class TYuyue implements java.io.Serializable
{

	// Fields

	private Integer id;

	private Integer userId;

	private Integer yishengId;
	
	private int YuyueRenshu;

	private String shijian;

	private String beizhu;
	
	private String del;
	
	private String huifu;
	
	private String yishengName;

	private String userName;
	// Constructors

	/** default constructor */
	public TYuyue()
	{
	}

	/** full constructor */
	public TYuyue(Integer userId, Integer yishengId, String shijian,
			String beizhu,String del,String huifu)
	{
		this.userId = userId;
		this.yishengId = yishengId;
		this.shijian = shijian;
		this.beizhu = beizhu;
		this.del = del;
		this.huifu = huifu;
	}

	// Property accessors
//--get--
	public Integer getId()
	{
		return this.id;
	}

	public String getYishengName()
	{
		return yishengName;
	}

	public Integer getUserId()
	{
		return this.userId;
	}
	
	public Integer getYuyueRenshu()
	{
		return this.YuyueRenshu = YuyueRenshu;
	}

	public String getUserName()
	{
		return userName;
	}

	public Integer getYishengId()
	{
		return this.yishengId;
	}

	public String getShijian()
	{
		return this.shijian;
	}
	
	public String getDel()
	{
		return this.del;
	}
	
	public String getHuifu()
	{
		return this.huifu;
	}

//--set--
	public void setYuyueRenshu(int YuyueRenshu)//��ʾԤԼ����
	{
		this.YuyueRenshu = YuyueRenshu;
	}
	
	public void setId(Integer id)
	{
		this.id = id;
	}
	
	public void setYishengName(String yishengName)
	{
		this.yishengName = yishengName;
	}
	
	public void setUserName(String userName)
	{
		this.userName = userName;
	}

	public void setUserId(Integer userId)
	{
		this.userId = userId;
	}
	
	public void setYishengId(Integer yishengId)
	{
		this.yishengId = yishengId;
	}
	
	public void setShijian(String shijian)
	{
		this.shijian = shijian;
	}

	public String getBeizhu()
	{
		return this.beizhu;
	}

	public void setBeizhu(String beizhu)
	{
		this.beizhu = beizhu;
	}
	
	public void setDel(String del)
	{
		this.del = del;
	}
	
	public void setHuifu(String huifu)
	{
		this.huifu = huifu;
	}

}