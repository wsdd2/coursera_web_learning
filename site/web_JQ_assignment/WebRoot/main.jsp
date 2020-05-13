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
    <link rel="shortcut icon" href="img/favicon.ico">
  <meta http-equiv="Content-Type" content="text/html; charset=gb2312"></head>
  <body>
    <nav class="side-navbar">
      <div class="side-navbar-wrapper">
        
		
      
	  
	  <%
if (request.getSession().getAttribute("cx").equals("超级管理员") || request.getSession().getAttribute("cx").equals("普通管理员")){%><%@ include file="left_guanliyuan.jsp"%><%}
if (request.getSession().getAttribute("cx").equals("用户")){%><%@ include file="left2.jsp"%><%}


%>

		
       
      </div>
    </nav>
    <div class="page">
      <%@ include file="top.jsp"%>
    <iframe  frameborder="0" id="hsgmain" name="hsgmain" scrolling="yes" src="sy.jsp" height="800" style="  visibility:inherit; width:100%;z-index:1;" ></iframe>
      <footer class="main-footer">
        <div class="container-fluid">
          <div class="row">
            <div class="col-sm-6">
              <p><font color="#ffffff">当前用户：<%=request.getSession().getAttribute("username")%>  权限：<%=request.getSession().getAttribute("cx")%></font></p>
            </div>
            <div class="col-sm-6 text-right">
              
              
            </div>
          </div>
        </div>
      </footer>
    </div>
    <script src="images/vendor/jquery/jquery.min.js"></script>
    <script src="images/vendor/popper.js/umd/popper.min.js"> </script>
    <script src="images/vendor/bootstrap/js/bootstrap.min.js"></script>
    <script src="images/js/grasp_mobile_progress_circle-1.0.0.min.js"></script>
    <script src="images/vendor/jquery.cookie/jquery.cookie.js"> </script>
    <script src="images/vendor/chart.js/Chart.min.js"></script>
    <script src="images/vendor/jquery-validation/jquery.validate.min.js"></script>
    <script src="images/vendor/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.concat.min.js"></script>
    <script src="images/js/charts-home.js"></script>
    <script src="images/js/front.js"></script>
  </body>
</html>
