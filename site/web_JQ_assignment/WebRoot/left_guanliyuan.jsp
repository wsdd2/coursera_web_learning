<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
          <h5 class="sidenav-heading">系统菜单</h5>
          <ul id="side-main-menu" class="side-menu list-unstyled">                  
            
			
					  <li><a href="#ww1" aria-expanded="false" data-toggle="collapse"> <i class="icon-interface-windows"></i>系统用户管理 </a>
              <ul id="ww1" class="collapse list-unstyled ">
                <li><a href="yhzhgl.jsp" target="hsgmain">管理员用户</a></li>
<li><a href="mod.jsp" target="hsgmain">修改密码</a></li>

              </ul>
            </li>
		  <li><a href="#ww2" aria-expanded="false" data-toggle="collapse"> <i class="icon-interface-windows"></i>用户信息管理 </a>
              <ul id="ww2" class="collapse list-unstyled ">
                <li><a href="yonghuxinxi_add.jsp" target="hsgmain">用户注册</a></li>
				 <li><a href="yonghuxinxi_list.jsp" target="hsgmain">用户查询</a></li>

              </ul>
            </li>



          
          </ul>
        </div>

