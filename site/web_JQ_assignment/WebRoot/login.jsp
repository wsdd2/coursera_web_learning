<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>web����ҵ</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    <link rel="stylesheet" href="images/vendor/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="images/vendor/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="images/css/fontastic.css">
    <link rel="stylesheet" href="images/css/grasp_mobile_progress_circle-1.0.0.min.css">
    <link rel="stylesheet" href="images/vendor/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.css">
    <link rel="stylesheet" href="images/css/style.default.css" id="theme-stylesheet">
    <link rel="stylesheet" href="images/css/custom.css">
    <link rel="shortcut icon" href="images/img/favicon.ico">
  <meta http-equiv="Content-Type" content="text/html; charset=gb2312"></head>
  <script type="text/javascript">
 <%
String error = (String)request.getAttribute("error"); 
if(error!=null)
{
 %>
 alert("�û������������");
 <%}%>
 
  <%
String random = (String)request.getAttribute("random"); 
if(random!=null)
{
 %>
 alert("��֤�����");
 <%}%>
 popheight = 39;
function check()
{
	if(document.form1.username.value=="" || document.form1.pwd.value=="" || document.form1.rand.value=="")
	{
		alert('����������');
		return false;
	}
}
function loadimage(){ 
document.getElementById("randImage").src = "image.jsp?"+Math.random(); 
} 
</script>  
  <body>
    <div class="page login-page">
      <div class="container">
        <div class="form-outer text-center d-flex align-items-center">
          <div class="form-inner">
            <div class="logo text-uppercase"><span></span><strong class="text-primary">web����ҵ</strong></div>
            <p>
			</p>
        
			 <form name="form1" method="post" action="webzuoye?ac=adminlogin&a=a" class="text-left form-validate">
              <div class="form-group-material">
                <input id="username" type="text" name="username" required data-msg="Please enter your username" class="input-material">
                <label for="login-username" class="label-material">�������û���</label>
              </div>
              <div class="form-group-material">
                <input id="pwd" type="password" name="pwd" required data-msg="Please enter your password" class="input-material">
                <label for="login-password" class="label-material">����������</label>
              </div>
			  <div class="form-group-material"><label for="login-username" class="label-material">Ȩ��</label>
                <select name="cx" id="cx" style="width:200px; height:35px">
            <option value="����Ա">����Ա</option>
			  <option value="�û�">�û�</option>

          </select>
              </div>
			   <div class="form-group-material"><label for="login-username" class="label-material">��֤��</label> <a href="javascript:loadimage();"><img alt="����������ң�" name="randImage" id="randImage" src="image.jsp" width="60" height="20" border="1" align="absmiddle" > </a>
                <input name="pagerandom" type="text" id="pagerandom" class="input-material" >
              </div>
              <div class="form-group text-center">
			  <input type="submit" name="Submit" value="��½" class="btn btn-primary" onClick="return check();">
                <input type="button" name="Submit2" value="ע��"onClick="location.href='yonghuxinxi_add.jsp';" class="btn btn-primary">
                 <input name="login" type="hidden" id="login" value="1">
              </div>
            </form>
          </div>
          <div class="copyrights text-center">          </div>
        </div>
      </div>
    </div>
    <script src="images/vendor/jquery/jquery.min.js"></script>
    <script src="images/vendor/popper.js/umd/popper.min.js"> </script>
    <script src="images/vendor/bootstrap/js/bootstrap.min.js"></script>
    <script src="images/js/grasp_mobile_progress_circle-1.0.0.min.js"></script>
    <script src="images/vendor/jquery.cookie/jquery.cookie.js"> </script>
    <script src="images/vendor/chart.js/Chart.min.js"></script>
    <script src="images/vendor/jquery-validation/jquery.validate.min.js"></script>
    <script src="images/vendor/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.concat.min.js"></script>
    <script src="images/js/front.js"></script>
  </body>
</html>
