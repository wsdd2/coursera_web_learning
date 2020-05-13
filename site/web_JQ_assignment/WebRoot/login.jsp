<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>web大作业</title>
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
 alert("用户名或密码错误");
 <%}%>
 
  <%
String random = (String)request.getAttribute("random"); 
if(random!=null)
{
 %>
 alert("验证码错误");
 <%}%>
 popheight = 39;
function check()
{
	if(document.form1.username.value=="" || document.form1.pwd.value=="" || document.form1.rand.value=="")
	{
		alert('请输入完整');
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
            <div class="logo text-uppercase"><span></span><strong class="text-primary">web大作业</strong></div>
            <p>
			</p>
        
			 <form name="form1" method="post" action="webzuoye?ac=adminlogin&a=a" class="text-left form-validate">
              <div class="form-group-material">
                <input id="username" type="text" name="username" required data-msg="Please enter your username" class="input-material">
                <label for="login-username" class="label-material">请输入用户名</label>
              </div>
              <div class="form-group-material">
                <input id="pwd" type="password" name="pwd" required data-msg="Please enter your password" class="input-material">
                <label for="login-password" class="label-material">请输入密码</label>
              </div>
			  <div class="form-group-material"><label for="login-username" class="label-material">权限</label>
                <select name="cx" id="cx" style="width:200px; height:35px">
            <option value="管理员">管理员</option>
			  <option value="用户">用户</option>

          </select>
              </div>
			   <div class="form-group-material"><label for="login-username" class="label-material">验证码</label> <a href="javascript:loadimage();"><img alt="看不清请点我！" name="randImage" id="randImage" src="image.jsp" width="60" height="20" border="1" align="absmiddle" > </a>
                <input name="pagerandom" type="text" id="pagerandom" class="input-material" >
              </div>
              <div class="form-group text-center">
			  <input type="submit" name="Submit" value="登陆" class="btn btn-primary" onClick="return check();">
                <input type="button" name="Submit2" value="注册"onClick="location.href='yonghuxinxi_add.jsp';" class="btn btn-primary">
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
