<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>�û���Ϣ</title>
	
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
	<script type="text/javascript" src="js/popup.js"></script>
    <LINK href="css.css" type=text/css rel=stylesheet>

  </head>
<script language="javascript">

function hsgxia2shxurxu(nstr,nwbk)
{
	if (eval("form1."+nwbk).value.indexOf(nstr)>=0)
	{
		eval("form1."+nwbk).value=eval("form1."+nwbk).value.replace(nstr+"��", "");
	}
	else
	{
		eval("form1."+nwbk).value=eval("form1."+nwbk).value+nstr+"��";
	}
}
</script>

  <body >
<% 

String id = request.getParameter("id"); 
HashMap ext = new HashMap(); 
new CommDAO().update(request,response,"yonghuxinxi",ext,true,false,""); 
HashMap mmm = new CommDAO().getmaps("yonghuming",(String)request.getSession().getAttribute("username"),"yonghuxinxi"); 
%>
  <form  action="yonghuxinxi_updt2.jsp?f=f&id=<%=mmm.get("id")%>"  method="post" name="form1"  onsubmit="return checkform();">
  �޸��û���Ϣ:
  <br><br>
  <%
  
   %>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="##666666" style="border-collapse:collapse">  
     
     <tr><td>�û�����</td><td><input name='yonghuming' type='text' id='yonghuming' value='<%= mmm.get("yonghuming")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>���룺</td><td><input name='mima' type='text' id='mima' value='<%= mmm.get("mima")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>������</td><td><input name='xingming' type='text' id='xingming' value='<%= mmm.get("xingming")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
    
	<tr  style="display:none" ><td>���ţ�</td><td><input name='bumen' type='text' id='bumen' value='<%= mmm.get("bumen")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>

     <tr><td>���֤�ţ�</td><td><input name='shenfenzhenghao' type='text' id='shenfenzhenghao' size='50' value='<%=mmm.get("shenfenzhenghao")%>' style='border:solid 1px #000000; color:#666666'/></td></tr>
     <tr><td>סַ��</td><td><input name='zhuzhi' type='text' id='zhuzhi' size='50' value='<%=mmm.get("zhuzhi")%>' style='border:solid 1px #000000; color:#666666'/></td></tr>
     <tr><td>��ϵ�绰��</td><td><input name='lianxidianhua' type='text' id='lianxidianhua' value='<%= mmm.get("lianxidianhua")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>��ע��</td><td><textarea name='beizhu' cols='50' rows='5' id='beizhu' style='border:solid 1px #000000; color:#666666'><%=mmm.get("beizhu")%></textarea></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ" onClick="return check();" />
      <input type="reset" name="Submit2" value="����" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


