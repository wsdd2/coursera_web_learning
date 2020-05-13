<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<html>
  <head>
    
    <title>web大作业</title>
<LINK href="images/style.css" type=text/css rel=stylesheet>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"><style type="text/css">
<!--
body,td,th {
	font-size: 12px;
}
.STYLE1 {
	color: #ffffff;
	font-weight: bold;
}
.STYLE2 {color: #ffffff}
.STYLE3 {color: #666666}
-->
</style></head>
 <BODY leftMargin=5 topMargin=5 rightMargin=5>
<table width="100%" height="151" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#666666" style="border-collapse:collapse">  
  <TBODY>
    <TR 
  align=middle bgColor=#ffffff>
      <td colspan="4" bgColor=#CADCEA><strong>系统基本信息</strong></td>
    </TR>
    <TR   align=middle 
  bgColor=#ffffff>
      <TD width="14%" height="58" align="left" valign="bottom" ><span class="STYLE3"></span>当前用户：</TD>
      <TD width="37%"  align="left" valign="bottom" ><font class="t4"><%=request.getSession().getAttribute("username")%></font></TD>
      <TD width="9%"  align="left" valign="bottom" >您的权限：</TD>
      <TD width="40%"  align="left" valign="bottom" ><font class="t4"><%=request.getSession().getAttribute("cx")%></font></TD>
    </TR>
  </TBODY>
</TABLE>
<p>&nbsp;</p>
<table width="100%" height="142" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#666666" style="border-collapse:collapse">  
  <TBODY>
    <TR 
  align=middle bgColor=#ffffff>
      <td height="70" colspan="2" bgColor=#CADCEA><span class="STYLE2"></span><span class="STYLE1">web大作业</span></td>
    </TR>
    <TR   align=middle 
  bgColor=#ffffff>
      <TD width="10%" height="67" align="left" >系统作者：</TD>
      <TD width="41%"  align="left" ><font class="t4">xxxxxx</font></TD>
    </TR>
  </TBODY>
</TABLE>
<p>&nbsp;</p>
<P align=right>&nbsp;</P>
</BODY>
</html>


