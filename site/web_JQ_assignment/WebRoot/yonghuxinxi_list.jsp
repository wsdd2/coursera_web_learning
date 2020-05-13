<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>用户信息</title>
	<LINK href="css.css" type=text/css rel=stylesheet>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>


  <body >
  <p>已有用户信息列表：</p>
  <form name="form1" id="form1" method="post" action="">
   搜索:  用户名：<input name="yonghuming" type="text" id="yonghuming" style='border:solid 1px #000000; color:#666666' size="12" />  姓名：<input name="xingming" type="text" id="xingming" style='border:solid 1px #000000; color:#666666' size="12" />  身份证号：<input name="shenfenzhenghao" type="text" id="shenfenzhenghao" style='border:solid 1px #000000; color:#666666' size="12" />
   <input type="submit" name="Submit" value="查找" style='border:solid 1px #000000; color:#666666' />
  </form>

<table width="95%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#666666" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td width="171" bgcolor='#CCFFFF'>用户名</td>
    <td width="221" bgcolor='#CCFFFF'>密码</td>
    <td width="97" bgcolor='#CCFFFF'>姓名</td>
    <td bgcolor='#CCFFFF' width='107' align='center'>部门</td>
    <td width="293" bgcolor='#CCFFFF'>身份证号</td>
    <td width="164" bgcolor='#CCFFFF'>住址</td>
    <td width="164" bgcolor='#CCFFFF'>联系电话</td>
    
    
    <td width="121" align="center" bgcolor="CCFFFF">操作</td>
  </tr>
  <% 
  	


  	 new CommDAO().delete(request,"yonghuxinxi"); 
    String url = "yonghuxinxi_list.jsp?1=1"; 
    String sql =  "select * from yonghuxinxi where 1=1";
	
if(request.getParameter("yonghuming")=="" ||request.getParameter("yonghuming")==null ){}else{sql=sql+" and yonghuming like '%"+request.getParameter("yonghuming")+"%'";}
if(request.getParameter("xingming")=="" ||request.getParameter("xingming")==null ){}else{sql=sql+" and xingming like '%"+request.getParameter("xingming")+"%'";}
if(request.getParameter("shenfenzhenghao")=="" ||request.getParameter("shenfenzhenghao")==null ){}else{sql=sql+" and shenfenzhenghao like '%"+request.getParameter("shenfenzhenghao")+"%'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	


     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("yonghuming") %></td>
    <td><%=map.get("mima") %></td>
    <td><%=map.get("xingming") %></td>
    <td align='center'><%=map.get("bumen") %></td>
    <td><%=map.get("shenfenzhenghao") %></td>
    <td><%=map.get("zhuzhi") %></td>
    <td><%=map.get("lianxidianhua") %></td>
    
    <td width="121" align="center"><a href="yonghuxinxi_updt.jsp?id=<%=map.get("id")%>">修改</a>  <a href="yonghuxinxi_list.jsp?scid=<%=map.get("id") %>" onClick="return confirm('真的要删除？')">删除</a> <a href="yonghuxinxi_detail.jsp?id=<%=map.get("id")%>">详细</a> </td>
  </tr>
  	<%
  }
   %>
</table>
<br>
  
${page.info }


  </body>
</html>

