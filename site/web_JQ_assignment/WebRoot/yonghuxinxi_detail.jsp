<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>用户信息详细</title>
    <LINK href="css.css" type=text/css rel=stylesheet>

  </head>

  <body >
  <%
	String id=request.getParameter("id");
	HashMap m = new CommDAO().getmap(id,"yonghuxinxi");
     %>
  用户信息详细:
  <br><br>
  
   <table width="92%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#666666" style="border-collapse:collapse">  
   <tr>
     <td width='11%'>用户名：</td><td width='39%'><%=m.get("yonghuming")%></td>
<td width='11%'>密码：</td><td width='39%'><%=m.get("mima")%></td></tr><tr>
<td width='11%'>姓名：</td><td width='39%'><%=m.get("xingming")%></td>
<td width='11%'>部门：</td><td width='39%'><%=m.get("bumen")%></td></tr><tr>
<td width='11%'>身份证号：</td><td width='39%'><%=m.get("shenfenzhenghao")%></td>
<td width='11%'>住址：</td><td width='39%'><%=m.get("zhuzhi")%></td></tr><tr>
<td width='11%'>联系电话：</td><td width='39%'><%=m.get("lianxidianhua")%></td>
<td width='11%'>备注：</td><td width='39%'><%=m.get("beizhu")%></td>
</tr><tr><td colspan=4 align=center><input type=button name=Submit5 value=返回 onClick="javascript:history.back()" />&nbsp;<input type=button name=Submit5 value=打印 onClick="javascript:window.print()" /></td></tr>
    
  </table>

  </body>
</html>


