<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>�û���Ϣ</title>
	
	<LINK href="css.css" type=text/css rel=stylesheet>
    <script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
	<script type="text/javascript" src="js/popup.js"></script>
	   
  </head>
<%
  String id="";
  
 
   %>
<script language="javascript">

function gow()
{
	document.location.href="yonghuxinxi_add.jsp?id=<%=id%>";
}
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

 <% 
HashMap ext = new HashMap(); 
if(request.getParameter("f")!=null){







new CommDAO().insert(request,response,"yonghuxinxi",ext,true,false,""); 

}

%>

  <body >
 <form  action="yonghuxinxi_add.jsp?f=f&id=<%=id%>"  method="post" name="form1"  onsubmit="return checkform();">
   <div align="center">�û�ע��<br>
     <br>
   </div>
   <table width="72%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#666666" style="border-collapse:collapse">
		<tr><td  width="200">�û�����</td><td width="879"><input name='yonghuming' type='text' id='yonghuming' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;*<label id='clabelyonghuming' /></td></tr>
		<tr><td  width="200">���룺</td><td><input name='mima' type='text' id='mima' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;*<label id='clabelmima' /></td></tr>
		<tr><td  width="200">������</td><td><input name='xingming' type='text' id='xingming' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;*<label id='clabelxingming' /></td></tr>
		<tr><td>���ţ�</td><td><select name='bumen' id='bumen'><option value="����A">����A</option><option value="����B">����B</option><option value="����C">����C</option><option value="����D">����B</option></select></td></tr>
		<tr><td  width="200">���֤�ţ�</td><td><input name='shenfenzhenghao' type='text' id='shenfenzhenghao' value='' onblur='checkform()' size='50' style='border:solid 1px #000000; color:#666666' />&nbsp;<label id='clabelshenfenzhenghao' />�������֤��ʽ</td></tr>
		<tr><td  width="200">סַ��</td><td><input name='zhuzhi' type='text' id='zhuzhi' value='' onblur='' size='50' style='border:solid 1px #000000; color:#666666' /></td></tr>
		<tr><td  width="200">��ϵ�绰��</td><td><input name='lianxidianhua' type='text' id='lianxidianhua' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;<label id='clabellianxidianhua' />�����ֻ���ʽ</td></tr>
		<tr><td  width="200">��ע��</td><td><textarea name='beizhu' cols='50' rows='5' id='beizhu' onblur='' style='border:solid 1px #000000; color:#666666' ></textarea></td></tr>
		
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ"  style='border:solid 1px #000000; color:#666666' />
      <input type="reset" name="Submit2" value="����" style='border:solid 1px #000000; color:#666666' /></td>
    </tr>
  </table>
</form>

  </body>
</html>




<script language=javascript src='js/ajax.js'></script>

<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 

<script language=javascript >  
 
 function checkform(){  
 
	var yonghumingobj = document.getElementById("yonghuming"); if(yonghumingobj.value==""){document.getElementById("clabelyonghuming").innerHTML="&nbsp;&nbsp;<font color=red>�������û���</font>";return false;}else{document.getElementById("clabelyonghuming").innerHTML="  "; } 
	var yonghumingobj = document.getElementById("yonghuming");  
if(yonghumingobj.value!=""){  
var ajax = new AJAX();
ajax.post("factory/checkno.jsp?table=yonghuxinxi&col=yonghuming&value="+yonghumingobj.value+"&checktype=insert&ttime=<%=Info.getDateStr()%>") 
var msg = ajax.getValue();
if(msg.indexOf('Y')>-1){
document.getElementById("clabelyonghuming").innerHTML="&nbsp;&nbsp;<font color=red>�û����Ѵ���</font>";  
return false;
}else{document.getElementById("clabelyonghuming").innerHTML="  ";  
}  
} 
	var mimaobj = document.getElementById("mima"); if(mimaobj.value==""){document.getElementById("clabelmima").innerHTML="&nbsp;&nbsp;<font color=red>����������</font>";return false;}else{document.getElementById("clabelmima").innerHTML="  "; } 
	var xingmingobj = document.getElementById("xingming"); if(xingmingobj.value==""){document.getElementById("clabelxingming").innerHTML="&nbsp;&nbsp;<font color=red>����������</font>";return false;}else{document.getElementById("clabelxingming").innerHTML="  "; } 
	var shenfenzhenghaoobj = document.getElementById("shenfenzhenghao"); if(shenfenzhenghaoobj.value!=""){ if(/^\d{15}$|^\d{18}$|^\d{17}[xX]$/.test(shenfenzhenghaoobj.value)){document.getElementById("clabelshenfenzhenghao").innerHTML=""; }else{document.getElementById("clabelshenfenzhenghao").innerHTML="&nbsp;&nbsp;<font color=red>�������֤��ʽ</font>"; return false;}}  
    var lianxidianhuaobj = document.getElementById("lianxidianhua"); if(lianxidianhuaobj.value!=""){ if(/^1[3|4|5|6|7|8|9][0-9]\d{8,8}$/.test(lianxidianhuaobj.value)){document.getElementById("clabellianxidianhua").innerHTML=""; }else{document.getElementById("clabellianxidianhua").innerHTML="&nbsp;&nbsp;<font color=red>�����ֻ���ʽ</font>"; return false;}}  
    


return true;   
}   
popheight=450;
</script>  


