## 本项目实现的最终作用是基于SSH医疗预约挂号平台
## 分为3个角色
### 第1个角色为管理员角色，实现了如下功能：
 - 专家管理
 - 公告管理
 - 床位管理
 - 用户管理
 - 留言管理
 - 科室管理
 - 管理员管理
 - 管理员首页
### 第2个角色为医生角色，实现了如下功能：
 - 个人信息管理
 - 住院预约管理
 - 医生主页
 - 就诊预约管理
### 第3个角色为用户角色，实现了如下功能：
 - 住院床位查看
 - 用户中心管理
 - 用户登录
 - 用户登录注册
 - 留言板
 - 科室专家查看
 - 预约记录查看
## 数据库设计如下：
# 数据库设计文档

**数据库名：** ssh_yyguahao_sys

**文档版本：** 


| 表名                  | 说明       |
| :---: | :---: |
| [t_admin](#t_admin) | 管理员表 |
| [t_chuangwei](#t_chuangwei) |  |
| [t_gonggao](#t_gonggao) |  |
| [t_keshi](#t_keshi) |  |
| [t_liuyan](#t_liuyan) |  |
| [t_user](#t_user) | 用户表 |
| [t_yisheng](#t_yisheng) |  |
| [t_yuyue](#t_yuyue) |  |
| [t_yuyuezhuyuan](#t_yuyuezhuyuan) |  |

**表名：** <a id="t_admin">t_admin</a>

**说明：** 管理员表

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | UserId |   int   | 10 |   0    |    N     |  Y   |       | 用户ID  |
|  2   | username |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 用户名  |
|  3   | userPw |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 密码  |

**表名：** <a id="t_chuangwei">t_chuangwei</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | chuangwei_id |   int   | 10 |   0    |    N     |  Y   |       |   |
|  2   | chuangwei_price |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  3   | chuangwei_type |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | del |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 是否删除  |
|  5   | chuangwei_last |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |

**表名：** <a id="t_gonggao">t_gonggao</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | gonggao_id |   int   | 10 |   0    |    N     |  Y   |       |   |
|  2   | gonggao_title |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 公告标题  |
|  3   | gonggao_content |   varchar   | 5000 |   0    |    Y     |  N   |   NULL    | 公告内容  |
|  4   | gonggao_data |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 公告日期  |
|  5   | gonggao_fabuzhe |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 发布人  |
|  6   | gonggao_del |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 是否删除  |

**表名：** <a id="t_keshi">t_keshi</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | keshi_id |   int   | 10 |   0    |    N     |  Y   |       |   |
|  2   | keshi_anme |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | keshi_jianjie |   varchar   | 5000 |   0    |    Y     |  N   |   NULL    |   |
|  4   | del |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 是否删除  |

**表名：** <a id="t_liuyan">t_liuyan</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | liuyan_id |   int   | 10 |   0    |    N     |  Y   |       |   |
|  2   | liuyan_title |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | liuyan_content |   varchar   | 5000 |   0    |    Y     |  N   |   NULL    |   |
|  4   | liuyan_date |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  5   | liuyan_user |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |

**表名：** <a id="t_user">t_user</a>

**说明：** 用户表

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | user_id |   int   | 10 |   0    |    N     |  Y   |       |   |
|  2   | user_name |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 用户名  |
|  3   | user_pw |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 用户密码  |
|  4   | user_type |   int   | 10 |   0    |    Y     |  N   |   NULL    | 用户类型  |
|  5   | user_realname |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 用户真实名字  |
|  6   | user_address |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 用户地址  |
|  7   | user_sex |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 用户性别  |
|  8   | user_tel |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 用户电话  |
|  9   | user_email |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 用户邮箱  |
|  10   | user_qq |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 用户QQ  |
|  11   | user_man |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  12   | user_age |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 用户年龄  |
|  13   | user_birthday |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 生日  |
|  14   | user_xueli |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 学历  |
|  15   | user_del |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 是否删除  |

**表名：** <a id="t_yisheng">t_yisheng</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | yisheng_id |   int   | 10 |   0    |    N     |  Y   |       |   |
|  2   | yisheng_name |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | yisheng_pw |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | yisheng_sex |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  5   | yisheng_age |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  6   | yisheng_jianjie |   varchar   | 5000 |   0    |    Y     |  N   |   NULL    |   |
|  7   | keshi_id |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  8   | del |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 是否删除  |
|  9   | yisheng_zhicheng |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  10   | yisheng_photo |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  11   | yisheng_zhuanchang |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |

**表名：** <a id="t_yuyue">t_yuyue</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | userid |   int   | 10 |   0    |    Y     |  N   |   NULL    | 用户ID  |
|  3   | yishengid |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  4   | shijian |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 时间  |
|  5   | beizhu |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 备注  |
|  6   | del |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 是否删除  |
|  7   | huifu |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |

**表名：** <a id="t_yuyuezhuyuan">t_yuyuezhuyuan</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | userid |   int   | 10 |   0    |    Y     |  N   |   NULL    | 用户ID  |
|  3   | chuangweiId |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  4   | shijian |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 时间  |
|  5   | shijianSize |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |

