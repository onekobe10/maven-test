<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
	<meta charset="utf-8">
	<meta baseURL="${pageContext.request.contextPath }">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<%-- <title>打非预警云平台<decorator:title /></title> --%>
	<title>预警平台<decorator:title /></title>
	<!-- 必要的样式 -->
	<link href="<%=request.getContextPath()%>/assets/financial-baseWeb/css/bootstrap.min.css" rel="stylesheet" type="text/css">
	<%-- <link rel="shortcut icon" href="<%=request.getContextPath()%>/assets/images/icons/favicon.ico">
    <link rel="apple-touch-icon" href="<%=request.getContextPath()%>/assets/images/icons/favicon.png">
    <link rel="apple-touch-icon" sizes="72x72" href="<%=request.getContextPath()%>/assets/images/icons/favicon-72x72.png">
    <link rel="apple-touch-icon" sizes="114x114" href="<%=request.getContextPath()%>/assets/images/icons/favicon-114x114.png"> --%>
	<!--Loading bootstrap css-->
	<%-- <link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/assets/vendors/jquery-ui-1.10.4.custom/css/ui-lightness/jquery-ui-1.10.4.custom.min.css"> --%>
	<!-- 小图标样式 -->
	<link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/assets/financial-baseWeb/vendors/font-awesome/css/font-awesome.min.css">
	<%-- <link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/assets/vendors/bootstrap/css/bootstrap.min.css"> --%>
	<!--LOADING STYLESHEET FOR PAGE-->
	<%-- <link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/assets/vendors/intro.js/introjs.css">
    <link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/assets/vendors/calendar/zabuto_calendar.min.css">
    <link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/assets/vendors/sco.message/sco.message.css">
    <link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/assets/vendors/intro.js/introjs.css"> --%>
	<!--Loading style vendors-->
	<%-- <link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/assets/vendors/animate.css/animate.css">
    <link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/assets/vendors/jquery-pace/pace.css"> --%>
	<%-- <link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/assets/vendors/iCheck/skins/all.css">
    <link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/assets/vendors/jquery-notific8/jquery.notific8.min.css">
    <link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/assets/vendors/bootstrap-daterangepicker/daterangepicker-bs3.css"> --%>
	<!--Loading style-->
	<link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/assets/financial-baseWeb/css/themes/style1/orange-blue.css" class="default-style">
	<link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/assets/financial-baseWeb/css/themes/style1/orange-blue.css" id="theme-change" class="style-change color-change">
	<link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/assets/financial-baseWeb/css/style-responsive.css">
	<link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/assets/financial-baseWeb/css/common_monitor.css">
	<%-- <link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/jplist-custom.css">
    <link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/assets/vendors/select2/select2-madmin.css">
    <link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/assets/vendors/bootstrap-select/bootstrap-select.min.css">
    <link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/assets/vendors/multi-select/css/multi-select-madmin.css"> --%>

	<script src="<%=request.getContextPath()%>/assets/financial-net/js/highRiskEarlyWarning/highRiskEarlyWarning.js"></script>
	<!-- 重点监测列表页里面用到   排列有顺序-->
	<script src="<%=request.getContextPath()%>/assets/financial-baseWeb/js/jquery-1.10.2.min.js"></script>
	<!-- 少了js点击收缩按钮就会自动隐藏 1-->
	<script src="<%=request.getContextPath()%>/assets/financial-baseWeb/js/jquery-migrate-1.2.1.min.js"></script>
	<script src="<%=request.getContextPath()%>/assets/financial-baseWeb/vendors/metisMenu/jquery.metisMenu.js"></script>
	<script src="<%=request.getContextPath()%>/assets/financial-baseWeb/vendors/slimScroll/jquery.slimscroll.js"></script>
	<script src="<%=request.getContextPath()%>/assets/financial-baseWeb/vendors/bootstrap/js/bootstrap.min.js"></script>
	<!-- 菜单上边鼠标出事件  退出下拉框-->
	<script src="<%=request.getContextPath()%>/assets/financial-baseWeb/vendors/bootstrap-hover-dropdown/bootstrap-hover-dropdown.js"></script>
	<%-- <!-- 菜单上点击变色 1-->
         <!-- 菜单上点击变色 2-->
    <!-- 菜单上点击变色 3-->
    <!-- 菜单上点击变色4 -->
    <script src="<%=request.getContextPath()%>/assets/vendors/jquery-cookie/jquery.cookie.js"></script>--%>
	<!-- 菜单上点击变色 5-->
	<!-- 少了js点击收缩按钮就会自动隐藏 2-->
	<script src="<%=request.getContextPath()%>/assets/financial-baseWeb/vendors/iCheck/icheck.min.js"></script>
	<script src="<%=request.getContextPath()%>/assets/financial-baseWeb/js/jquery.menu.js"></script>
	<!-- 少了js点击收缩按钮就会自动隐藏3-->
	<script src="<%=request.getContextPath()%>/assets/financial-baseWeb/vendors/jquery-cookie/jquery.cookie.js"></script>
	<!-- 左侧菜单样式选中-->
	<%-- <script src="<%=request.getContextPath()%>/assets/financial-baseWeb/vendors/bootstrap-daterangepicker/moment.js"></script> --%>

	<script src="<%=request.getContextPath()%>/assets/financial-baseWeb/js/main.js"></script>
	<!-- 雷达图需要的js-->

	<!-- echarts3.0 -->
	<%-- <script src="<%=request.getContextPath() %>/assets/js/summary/echarts.js"></script> --%>
	<%-- <script src="<%=request.getContextPath()%>/assets/js/jquery-1.10.2.min.js"></script>
    <script src="<%=request.getContextPath()%>/assets/js/jquery-migrate-1.2.1.min.js"></script>
    <script src="<%=request.getContextPath()%>/assets/js/jquery-ui.js"></script>
    <!--loading bootstrap js-->
    <script src="<%=request.getContextPath()%>/assets/vendors/bootstrap/js/bootstrap.min.js"></script>
    <script src="<%=request.getContextPath()%>/assets/vendors/bootstrap-hover-dropdown/bootstrap-hover-dropdown.js"></script>
    <script src="<%=request.getContextPath()%>/assets/js/html5shiv.js"></script>
    <script src="<%=request.getContextPath()%>/assets/js/respond.min.js"></script>
    <script src="<%=request.getContextPath()%>/assets/vendors/metisMenu/jquery.metisMenu.js"></script>
    <script src="<%=request.getContextPath()%>/assets/vendors/slimScroll/jquery.slimscroll.js"></script>
    <!-- 少了js点击收缩按钮就会自动隐藏 -->
    <script src="<%=request.getContextPath()%>/assets/vendors/jquery-cookie/jquery.cookie.js"></script>
    <script src="<%=request.getContextPath()%>/assets/vendors/iCheck/icheck.min.js"></script>
    <!-- 少了js点击收缩按钮就会自动隐藏 -->
    <script src="<%=request.getContextPath()%>/assets/vendors/iCheck/custom.min.js"></script>
    <script src="<%=request.getContextPath()%>/assets/vendors/jquery-notific8/jquery.notific8.min.js"></script>
    <script src="<%=request.getContextPath()%>/assets/vendors/jquery-highcharts/highcharts.js"></script>
    <script src="<%=request.getContextPath()%>/assets/js/jquery.menu.js"></script>
    <script src="<%=request.getContextPath()%>/assets/vendors/jquery-pace/pace.min.js"></script>
    <script src="<%=request.getContextPath()%>/assets/vendors/holder/holder.js"></script>
    <script src="<%=request.getContextPath()%>/assets/vendors/responsive-tabs/responsive-tabs.js"></script>
    <script src="<%=request.getContextPath()%>/assets/vendors/jquery-news-ticker/jquery.newsTicker.min.js"></script>
    <script src="<%=request.getContextPath()%>/assets/vendors/moment/moment.js"></script>
    <script src="<%=request.getContextPath()%>/assets/vendors/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
    <script src="<%=request.getContextPath()%>/assets/vendors/bootstrap-daterangepicker/daterangepicker.js"></script>
    <!--CORE JAVASCRIPT-->
    <script src="<%=request.getContextPath()%>/assets/js/main.js"></script>
    <script src="<%=request.getContextPath()%>/assets/js/echarts/source/echarts.js"></script>
    <script src="<%=request.getContextPath()%>/assets/js/echarts/demoData.js"></script>
    <!--LOADING SCRIPTS FOR PAGE-->
    <script src="<%=request.getContextPath()%>/assets/vendors/intro.js/intro.js"></script>
    <script src="<%=request.getContextPath()%>/assets/vendors/flot-chart/jquery.flot.js"></script>
    <script src="<%=request.getContextPath()%>/assets/vendors/flot-chart/jquery.flot.categories.js"></script>
    <script src="<%=request.getContextPath()%>/assets/vendors/flot-chart/jquery.flot.pie.js"></script>
    <script src="<%=request.getContextPath()%>/assets/vendors/flot-chart/jquery.flot.tooltip.js"></script>
    <script src="<%=request.getContextPath()%>/assets/vendors/flot-chart/jquery.flot.resize.js"></script>
    <script src="<%=request.getContextPath()%>/assets/vendors/flot-chart/jquery.flot.fillbetween.js"></script>
    <script src="<%=request.getContextPath()%>/assets/vendors/flot-chart/jquery.flot.stack.js"></script>
    <script src="<%=request.getContextPath()%>/assets/vendors/flot-chart/jquery.flot.spline.js"></script>
    <script src="<%=request.getContextPath()%>/assets/vendors/calendar/zabuto_calendar.min.js"></script>
    <script src="<%=request.getContextPath()%>/assets/vendors/sco.message/sco.message.js"></script>
    <script src="<%=request.getContextPath()%>/assets/vendors/intro.js/intro.js"></script>
    <script src="<%=request.getContextPath()%>/assets/js/index.js"></script>  --%>
	<script type="text/javascript">
		<%-- require.config({
            paths: {
                echarts: '<%=request.getContextPath()%>/assets/js/echarts/dist'
            }
        }); --%>
		$(window).load(function() {
			var btn = document.querySelector( '.page-content' );
			/* btn.setAttribute( 'data-direction', 'right' ); */
			/* btn.classList.add( 'is-open' ); */
		});

	</script>
	<style type="text/css">
		/* footer 样式修改  */
		.copyright,
		.copyright span {
			font-size: 18px;
			font-family: "微软雅黑";
			color: #74757c
		}
		/*  侧边栏样式 */
		.navbar-static-side ul li.active a{
			background: #0196a7;
			outline: none;
		}
		/* 侧边栏选中后改变字体 */
		.navbar-static-side ul li.active span{
			color: #fff;
		}
		.navbar-static-side ul li a:hover,
		.navbar-static-side ul li a:focus{
			background: #0196a7;
		}
		/* 鼠标悬浮改变字体 */
		.navbar-static-side ul li:hover span,
		.navbar-static-side ul li:focus span{
			/* color: #ffd92f; */
			color:#fff;
		}
		.menu-title {
			color: #95a0aa;
		}
		#topbar .topbar-main {
			border-bottom: none !important;
		}
		#topbar .topbar-main{
			height: 116%;
		}
		.navbar-static-side ul li .nav-second-level li a{
			background: #0e1830;
		}
		.menu-title {
			color:#fff;
		}
		.ech li{
			height:20px;
		}
		.ech .ech_title{
			color:red;
			margin-top:10px;
		}
 /* 无锡上传文件 */
    #uploadFile {
        background-image: url("../../../assets/financial-net/images/uploadFile/file.png");
        background-size: 100% 100%;
        background-repeat: no-repeat;
    }
    .file {
        position: absolute;
        display: inline-block;
        top:14px;
        right: 276px;
        /*background: #D0EEFF;
        border: 1px solid #99D3F5;
        border-radius: 4px;
        padding: 4px 12px;
        overflow: hidden;
        color: #1E88C7;
        text-decoration: none;
        text-indent: 0;
        line-height: 20px;*/
 
    }
    .file input {
        position: absolute;
        right: 0;
        top: 0;
        opacity: 0;
        width: 30px;
        height: 30px;
    }
	</style>
	<decorator:head />
</head>
<body class=" ">
<div>
	<div id=win style="display:none; POSITION:absolute; left:40%; top:20%;z-index: 3; width:350px; height:462px; ">
		<div style="margin: 16px 305px;position: absolute;">
			<a id="news-ticker-close" href="javascript:closeLogin();">
				<i class="fa fa-times" style="color: #EC0E0E;"></i>
			</a>
		</div>
		<a href="javascript:closeLogin();" style="padding:0;">
			<img style="width: 333px;" src="<%=request.getContextPath()%>/assets/financial-net/images/code/img/weixin1.png" alt="涉众型经济犯罪平台服务群"></img>
		</a>
	</div>
	<script>
		function openLogin(){
			document.getElementById("win").style.display="";
		}
		function closeLogin(){
			document.getElementById("win").style.display="none";
		}
	</script>
	<!--END BACK TO TOP-->
	<a id="totop" href="">
		<i class="fa fa-angle-up"></i>
	</a>
	<!--BEGIN TOPBAR-->
	<div id="header-topbar-option-demo" class="page-header-topbar">
		<nav id="topbar" role="navigation" style="margin-bottom: 0; z-index: 2;"  class="navbar navbar-default navbar-static-top">
			<div class="navbar-header" style="background-color: #0e1830;height: 115%">
				<button type="button" data-toggle="collapse" data-target=".sidebar-collapse" class="navbar-toggle">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a id="logo" href="javascript:void(0);" class="navbar-brand" style="padding:6px 15px;text-decoration:none;">
					<span class="fa fa-rocket"></span>
					<span class="logo-text" id="titlename" style="color: #fff;width: 220px;font-size: 22px;font-weight: 500;margin-top: 6px;line-height: 1.2;"></span>
					<span style="display: none" class="logo-text-icon"></span>
				</a>
			</div>
			<div style="background:#000319;" class="topbar-main">
				<a style="background:#000319;" id="menu-toggle" href="" class="hidden-xs">
					<i class="fa fa-bars" style="color: #fff;"></i>
				</a>
				<form id="topbar-search" action="<%=request.getContextPath()%>/advenceSearchDetail_new/advancedSearch_new_detail" method="post" class=" open" style="height: 115%;background-color: #0e1830">
					<div class="input-group" style="background: #0e1830">
						<input type="text" id="caseName" name="condition" placeholder="高级搜索..." class="form-control"/>
						<input type="hidden" name="searchInfo" value=""/>
						<%--<span class="input-group-btn">
                      		<input type="image" src="<%=request.getContextPath()%>/assets/financial-net/images/icon/icon_17.png" onclick="javascript:document:topbar-search.submit()"/>
                      	</span>--%>
					</div>
				</form>
            <i class="file" title="自主信息上传">
                    <img alt="自主信息上传" src="<%=request.getContextPath()%>/assets/financial-net/images/upload/file.png" style="width:30px;height:30px;">
                    <input type="file" id="excel_file" name="filename" onchange="submitCompanyFile(this);">
                </i>
				<ul class="nav navbar navbar-top-links navbar-right mbn" style="margin: 0px;position:relative;">
					<!--  新加的小图标 -->
					<!--  <li id="choo">
                      <a id="choImage" href="JavaScript:return false;" class="choose-image" style="text-decoration:none;">
                    		<i class="">
                    			<img alt="" src="<%=request.getContextPath()%>/assets/financial-net/images/icon/choose.png" style="width:30px;height:30px;">
                    		</i>

                    	</a>
                    	<ul class="ech" style="display:none;width:auto;background-color:#fff;width:220px;position:absolute;top:10px;right:60px;height:230px;overflow-y:auto;">

                    	   <p class="ech_title">
                    	         风险企业分布
                    	   </p>
                    	   <li>
                    	      <input id="one" type="checkbox"/><p style="display:inline-block;text-decoration:none;" href="JavaScript:return false;">非集风险地区分布</p>
                    	   </li>
                    	   <li>
                    	      <input id="two" type="checkbox"/><p style="display:inline-block;text-decoration:none;" href="JavaScript:return false;">地图数据解读</p>
                    	   </li>
                    	    <p class="ech_title">
                    	    冒烟指数及收益率分析
                    	   </p>
                    	   <li>
                    	      <input id="three" type="checkbox"/><p style="display:inline-block;text-decoration:none;" href="JavaScript:return false;">冒烟指数及收益率分析</p>
                    	   </li>
                    	   <li>
                    	      <input id="four" type="checkbox"/><p style="display:inline-block;text-decoration:none;" href="JavaScript:return false;">非集风险地区分布</p>
                    	   </li>
                    	    <li>
                    	      <input id="five" type="checkbox"/><p style="display:inline-block;text-decoration:none;" href="JavaScript:return false;">一周冒烟指数升速排行榜</p>
                    	   </li>
                    	   <li>
                    	      <input id="six" type="checkbox"/><p style="display:inline-block;text-decoration:none;" href="JavaScript:return false;">收益率排行榜</p>
                    	   </li>
                    	   <p class="ech_title">
                    	    投诉率分析
                    	   </p>
                    	    <li>
                    	      <input id="seven" type="checkbox"/><p style="display:inline-block;text-decoration:none;" href="JavaScript:return false;">投诉量排行榜</p>
                    	   </li>
                           <br/>
                    	    <li>
                    	      <input id="eight" type="checkbox"/><p style="display:inline-block;text-decoration:none;" href="JavaScript:return false;">暂无数据</p>
                    	   </li>
                    	   <br/>
                    	    <button class="ok">确定</button>
                    	</ul>
                    </li> -->
					<!-- 首页高分险预警 -->
					<li class="dropdown" style="z-index: 20;">
						<a id="yjImage" data-hover="dropdown" href="JavaScript:return false;" class="dropdown-toggle" style="text-decoration:none;">
							<i class="">
								<img alt="" src="<%=request.getContextPath()%>/assets/financial-net/images/icon/icon_3.png">
							</i>
							<span class="badge badge-green" id="numMark"></span>
						</a>
						<ul id="yjData" class="dropdown-menu dropdown-alerts" style="width: 430px; height: 200px; overflow:auto; display:none" >
							<li><p id="riskNums"></p></li>
							<li>
								<div class="dropdown-slimscroll" >
									<ul id="highRiskEarlyWarning"><!-- 调用highRiskEarlyWarning.js -->
									</ul>
								</div>
							</li>
							<li class="last"><a id="removeAll" class="text-right" style="cursor:pointer;">删除所有预警</a></li>
						</ul>
					</li>
					<li class="dropdown topbar-user">
						<a data-hover="dropdown" href="#" class="dropdown-toggle" style="text-decoration:none;">
							<img src="<%=request.getContextPath()%>/assets/financial-net/images/icon/icon_2.png" alt="" class="img-responsive img-circle"/>&nbsp;
							<span style="color: #fff;font-family: 微软雅黑" class="hidden-xs">Admin</span>&nbsp;
							<span class="caret"></span>
						</a>
						<ul class="dropdown-menu dropdown-user pull-right">
							<!-- 修改密码HTML -->
							<li data-target="#modal-login" data-toggle="modal">
								<a href="#">
									<i class="fa fa-user"></i>修改密码
								</a>
							</li>
							<%--<li>
								<a style="text-decoration:none;" href="<%=request.getContextPath()%>/j_spring_security_logout">
									<i class="fa fa-times-circle-o"></i>注销
								</a>
							</li>--%>
							<li>
								<a id="signOut" style="text-decoration:none;">
									<i class="fa fa-key"></i>退出
								</a>
							</li>
							<!-- modify password-->
							<div id="modal-login" tabindex="-1" role="dialog" aria-labelledby="modal-login-label" aria-hidden="true" class="modal fade">
								<div class="modal-dialog">
									<div class="modal-content" style="background: #15213b">
										<div class="modal-header">
											<button type="button" data-dismiss="modal" aria-hidden="true" class="close" onclick="clearPassWord();" style="color: white;">×</button>
											<h4 id="modal-login-label" class="modal-title" style="color: white;">修改密码</h4>
										</div>
										<div class="modal-body">
											<div class="form">
												<form class="form-horizontal">
													<div class="form-group">
														<label class="control-label col-md-3">密码设置规则:</label>
														<div class="col-md-9">
															设置密码不少于10个字符并且密码至少包含下面4种字符组合中的3种：英文小写字母(a~z)、
															英文大写字母(A~Z)、数字(0~9)、非字母字符(例如 ! $ # %)。
														</div>
													</div>
													<div class="form-group">
														<label for="oldPasswd" class="control-label col-md-3">原密码:</label>
														<div class="col-md-9">
															<input id="oldPasswd" name="oldPasswd" type="password" class="form-control">
														</div>
													</div>
													<div class="form-group">
														<label for="newPasswd" class="control-label col-md-3">新密码:</label>
														<div class="col-md-9">
															<input id="newPasswd" name="newPasswd" type="password" class="form-control">
														</div>
													</div>
													<div class="form-group">
														<label for="repnewPasswd" class="control-label col-md-3">确认新密码:</label>
														<div class="col-md-9">
															<input id="repnewPasswd" name="repnewPasswd" type="password" class="form-control">
														</div>
													</div>
													<div id="updatePasswd" class="form-group"></div>
													<div class="form-group">
														<div class="col-md-9 col-md-offset-3">
															<button type="button" style="margin-left: 50px;" class="btn btn-primary" onclick="javascript:updatePassWord();">修改</button>
															<button type="button" style="margin-left: 50px;" data-dismiss="modal" class="btn btn-default" onclick="clearPassWord();">取消</button>
														</div>
													</div>
												</form>
											</div>
										</div>
									</div>
								</div>
							</div>
						</ul>
					</li>
					<!-- 修改密码HTML   end -->
				</ul>
			</div>
		</nav>
	</div>
	<!--END TOPBAR-->
	<!--BEGIN SIDEBAR MENU-->
	<div id="wrapper" style="background-color: #0e1830">
		<nav id="sidebar" role="navigation" class="navbar-default navbar-static-side" style="background-color: #0e1830;">
			<div class="sidebar-collapse menu-scroll">
				<ul id="side-menu" class="nav">
					<li class="user-panel" style="padding: 0;text-align: center;">
						<%-- <sec:authorize ifAllGranted="Role_Resource_title_others"> --%>
						<%--<div class="thumb">
							<img id="logourl"  alt="" class="img-circle"/>
						</div>--%>
						<div style="margin: 10px 0px;"> 
							<span	id="location_user" class="logo-text" style="color: #fff;font-size: 26px;margin: 0px 16px;"></span>
						</div>
						<%-- </sec:authorize> --%>
					</li>

					<!-- 总体分析 -->
					<sec:authorize ifAllGranted="Role_Resource_GeneralAnalysis">
						<li class=''>
							<a style="text-decoration:none;" href="<%=request.getContextPath()%>/home/index">
								<i>
									<img alt="" src="<%=request.getContextPath()%>/assets/financial-net/images/icon/icon_6.png">
									<!-- <div class="icon-bg bg-orange"></div> -->
								</i>
								<span class="menu-title">总体分析</span>
							</a>
						</li>
					</sec:authorize>
					<!-- 新总体分析 -->
					<!-- Role_Resource_GeneralAnalysis_ningxia -->
					<sec:authorize ifAllGranted="Role_Resource_GeneralAnalysis_New">
						<li class="">
							<a style="text-decoration:none;" href="<%=request.getContextPath()%>/home/index_new">
								<i class="">
									<img alt="" src="<%=request.getContextPath()%>/assets/financial-net/images/icon/icon_6.png">
									<!-- <div class="icon-bg bg-orange"></div> -->
								</i>
								<span class="menu-title">总体分析</span>
							</a>
						</li>
					</sec:authorize>
					<!-- 宁夏行业分类 -->
					<sec:authorize ifAllGranted="Role_Resource_IndustryClassif_Ningxia">
						<li id='hyfl_nav'>
							<a style="text-decoration:none;"  href="#">
								<i class="">
									<img alt="" src="<%=request.getContextPath()%>/assets/financial-net/images/icon/icon_13.png">
									<!-- <div class="icon-bg bg-yellow"></div> -->
								</i>
								<span class="menu-title">行业分类</span>
								<span class="fa arrow"></span>
							</a>
							<ul class="nav nav-second-level">
								<!--  -->
								<li>
									<a href="<%=request.getContextPath()%>/topAdvanSearch/topSearch?category=融资担保">
										<i class="fa fa-paperclip"></i>
										<span class="submenu-title">融资担保</span>
									</a>
								</li>
								<!-- 小额贷款 -->
								<li>
									<a href="<%=request.getContextPath()%>/topAdvanSearch/topSearch?category=小额贷款">
										<i class="fa fa-paperclip"></i>
										<span class="submenu-title">小额贷款</span>
									</a>
								</li>
								<!-- 私募股权 -->
								<li>
									<a href="<%=request.getContextPath()%>/topAdvanSearch/topSearch?category=私募股权">
										<i class="fa fa-paperclip"></i>
										<span class="submenu-title">私募股权</span>
									</a>
								</li>
								<!-- 众筹 -->
								<li>
									<a href="<%=request.getContextPath()%>/topAdvanSearch/topSearch?category=众筹">
										<i class="fa fa-paperclip"></i>
										<span class="submenu-title">众筹</span>
									</a>
								</li>
								<!-- 交易场所 -->
								<li>
									<a href="<%=request.getContextPath()%>/topAdvanSearch/topSearch?category=交易场所">
										<i class="fa fa-paperclip"></i>
										<span class="submenu-title">交易场所</span>
									</a>
								</li>
								<!-- 融资租赁 -->
								<li>
									<a href="<%=request.getContextPath()%>/topAdvanSearch/topSearch?category=融资租赁">
										<i class="fa fa-paperclip"></i>
										<span class="submenu-title">融资租赁</span>
									</a>
								</li>
								<!-- 典当 -->
								<li>
									<a href="<%=request.getContextPath()%>/topAdvanSearch/topSearch?category=典当">
										<i class="fa fa-paperclip"></i>
										<span class="submenu-title">典当</span>
									</a>
								</li>
								<!-- 网贷 -->
								<li>
									<a href="<%=request.getContextPath()%>/topAdvanSearch/topSearch?category=网贷">
										<i class="fa fa-paperclip"></i>
										<span class="submenu-title">网贷</span>
									</a>
								</li>
								<!-- 电子商务 -->
								<li>
									<a href="<%=request.getContextPath()%>/topAdvanSearch/topSearch?category=电子商务">
										<i class="fa fa-paperclip"></i>
										<span class="submenu-title">电子商务</span>
									</a>
								</li>
								<!-- 助贷机构 -->
								<li>
									<a href="<%=request.getContextPath()%>/topAdvanSearch/topSearch?category=助贷机构">
										<i class="fa fa-paperclip"></i>
										<span class="submenu-title">助贷机构</span>
									</a>
								</li>
								<!-- 金融仓储 -->
								<li>
									<a href="<%=request.getContextPath()%>/topAdvanSearch/topSearch?category=金融仓储">
										<i class="fa fa-paperclip"></i>
										<span class="submenu-title">金融仓储</span>
									</a>
								</li>
								<!-- 金融租赁 -->
								<li>
									<a href="<%=request.getContextPath()%>/topAdvanSearch/topSearch?category=金融租赁">
										<i class="fa fa-paperclip"></i>
										<span class="submenu-title">金融租赁</span>
									</a>
								</li>
								<!-- 金融资产交易 -->
								<li>
									<a href="<%=request.getContextPath()%>/topAdvanSearch/topSearch?category=金融资产交易">
										<i class="fa fa-paperclip"></i>
										<span class="submenu-title">金融资产交易</span>
									</a>
								</li>
								<!-- 投资理财 -->
								<li>
									<a href="<%=request.getContextPath()%>/topAdvanSearch/topSearch?category=投资理财">
										<i class="fa fa-paperclip"></i>
										<span class="submenu-title">投资理财</span>
									</a>
								</li>
								<!-- 农业专业合作社 -->
								<li>
									<a href="<%=request.getContextPath()%>/topAdvanSearch/topSearch?category=农业专业合作社">
										<i class="fa fa-paperclip"></i>
										<span class="submenu-title">农业专业合作社</span>
									</a>
								</li>
								<!-- 房地产企业及中介机构 -->
								<li>
									<a href="<%=request.getContextPath()%>/topAdvanSearch/topSearch?category=房地产企业及中介机构">
										<i class="fa fa-paperclip"></i>
										<span class="submenu-title">房地产企业及中介机构</span>
									</a>
								</li>
								<!-- 民办社会组织及养老机构 -->
								<li>
									<a href="<%=request.getContextPath()%>/topAdvanSearch/topSearch?category=民办社会组织及养老机构">
										<i class="fa fa-paperclip"></i>
										<span class="submenu-title">民办社会组织及养老机构</span>
									</a>
								</li>
								<!-- 民办教育及培训机构 -->
								<li>
									<a href="<%=request.getContextPath()%>/topAdvanSearch/topSearch?category=民办教育及培训机构">
										<i class="fa fa-paperclip"></i>
										<span class="submenu-title">民办教育及培训机构</span>
									</a>
								</li>
								<!-- 林业领域林权投资、合作（托管）造林企业 -->
								<li>
									<a href="<%=request.getContextPath()%>/topAdvanSearch/topSearch?category=林业领域林权投资、合作（托管）造林企业">
										<i class="fa fa-paperclip"></i>
										<span class="submenu-title">林业领域林权投资、合作（托管）造林企业</span>
									</a>
								</li>
								<!-- 单用途预付卡 -->
								<li>
									<a href="<%=request.getContextPath()%>/topAdvanSearch/topSearch?category=单用途预付卡">
										<i class="fa fa-paperclip"></i>
										<span class="submenu-title">单用途预付卡</span>
									</a>
								</li>
								<!-- 保险 -->
								<li>
									<a href="<%=request.getContextPath()%>/topAdvanSearch/topSearch?category=保险">
										<i class="fa fa-paperclip"></i>
										<span class="submenu-title">保险</span>
									</a>
								</li>
								<!-- 三板市场 -->
								<li>
									<a href="<%=request.getContextPath()%>/topAdvanSearch/topSearch?category=三板市场">
										<i class="fa fa-paperclip"></i>
										<span class="submenu-title">三板市场</span>
									</a>
								</li>
								<!-- 四板市场 -->
								<li>
									<a href="<%=request.getContextPath()%>/topAdvanSearch/topSearch?category=四板市场">
										<i class="fa fa-paperclip"></i>
										<span class="submenu-title">四板市场</span>
									</a>
								</li>
								<!-- 挂牌待审企业 -->
								<li>
									<a href="<%=request.getContextPath()%>/topAdvanSearch/topSearch?category=挂牌待审企业">
										<i class="fa fa-paperclip"></i>
										<span class="submenu-title">挂牌待审企业</span>
									</a>
								</li>
								<!-- 其它 -->
								<li>
									<a href="<%=request.getContextPath()%>/topAdvanSearch/topSearch?category=其它">
										<i class="fa fa-paperclip"></i>
										<span class="submenu-title">其它 </span>
									</a>
								</li>
							</ul>
						</li>
					</sec:authorize>
					<!-- 全面排查 -->
					<sec:authorize ifAllGranted="Role_Resource_ComprehensiveInvestigation">
						<li>
							<a style="text-decoration:none;" href="<%=request.getContextPath()%>/home/mass_screening" >
								<i class="">
									<img alt="" src="<%=request.getContextPath()%>/assets/financial-net/images/icon/icon_7.png">
									<!-- <div class="icon-bg bg-orange"></div> -->
								</i>
								<span class="menu-title">全面排查</span>
								<span id="" class="label label-violet"></span>
							</a>
						</li>
					</sec:authorize>
					<%-- 江西项目需求修改  --%>
					<sec:authorize ifAllGranted="JX_Role_Resource_riskLevel">
						<%-- 将调查介入改为红色预警 --%>
						<li>
							<a style="text-decoration:none;" href="<%=request.getContextPath()%>/home/companyList?title=DCJR">
								<i class="">
									<img alt="" src="<%=request.getContextPath()%>/assets/financial-net/images/icon/icon_10.png">
									<div class="icon-bg bg-pink"></div>
								</i>
								<span class="menu-title">红色预警</span>
							</a>
						</li>
						<%-- 将高风险监测预警改为橙色预警 --%>
						<li>
							<a style="text-decoration:none;" href="<%=request.getContextPath()%>/home/companyList?title=GFXYJ" >
								<i class="">
									<img alt="" src="<%=request.getContextPath()%>/assets/financial-net/images/icon/icon_9.png">
									<div class="icon-bg bg-orange"></div>
								</i>
								<span class="menu-title" style="margin-left: 19px">橙色预警</span>
							</a>
						</li>
						<%-- 将重点监测改为黄色预警 --%>
						<li>
							<a style="text-decoration:none;" href="<%=request.getContextPath()%>/home/companyList?title=ZDJC" >
								<i class="">
									<img alt="" src="<%=request.getContextPath()%>/assets/financial-net/images/icon/icon_8.png">
									<div class="icon-bg bg-orange"></div>
								</i>
								<span class="menu-title">黄色预警</span>
							</a>
						</li>
						<%-- 正常监测改为蓝色预警 --%>
						<li>
							<a style="text-decoration:none;" href="<%=request.getContextPath()%>/home/companyList?title=ZCJC" >
								<i class="">
									<img alt="" src="<%=request.getContextPath()%>/assets/financial-net/images/icon/icon_8.png">
									<div class="icon-bg bg-orange"></div>
								</i>
								<span class="menu-title">蓝色预警</span>
							</a>
						</li>
						<%-- 将全面排查改正常关注 --%>
						<li>
							<a style="text-decoration:none;" href="<%=request.getContextPath()%>/home/mass_screening" >
								<i class="">
									<img alt="" src="<%=request.getContextPath()%>/assets/financial-net/images/icon/icon_7.png">
									<!-- <div class="icon-bg bg-orange"></div> -->
								</i>
								<span class="menu-title">正常关注</span>
							</a>
						</li>
					</sec:authorize>
					<!-- 全面排查 -->
<%-- 					<sec:authorize ifAllGranted="CQ_Role_Resource_ComprehensiveInvestigation"> --%>
<!-- 						<li> -->
<%-- 							<a style="text-decoration:none;" href="<%=request.getContextPath()%>/home/mass_screening" > --%>
<!-- 								<i class=""> -->
<%-- 									<img alt="" src="<%=request.getContextPath()%>/assets/financial-net/images/icon/icon_7.png"> --%>
<!-- 									<div class="icon-bg bg-orange"></div> -->
<!-- 								</i> -->
<!-- 								<span class="menu-title">目标企业</span> -->
<!-- 								<span id="massScreen" class="label label-violet"></span> -->
<!-- 							</a> -->
<!-- 						</li> -->
<%-- 					</sec:authorize> --%>
					<!-- 正常监测  -->
<%-- 					<sec:authorize ifAllGranted="Role_Resource_NormalMonitoring"> --%>
<!-- 						<li> -->
<%-- 							<a style="text-decoration:none;" href="<%=request.getContextPath()%>/home/companyList?title=ZCJC" > --%>
<!-- 								<i class=""> -->
<%-- 									<img alt="" src="<%=request.getContextPath()%>/assets/financial-net/images/icon/icon_8.png"> --%>
<!-- 									<div class="icon-bg bg-orange"></div> -->
<!-- 								</i> -->
<!-- 								<span class="menu-title">正常监测</span><span id="ysCount" class="label label-violet"></span> -->
<!-- 							</a> -->
<!-- 						</li> -->
<%-- 					</sec:authorize> --%>
					<!-- 重点监测 -->
<%-- 					<sec:authorize ifAllGranted="Role_Resource_KeyMonitoring"> --%>
<!-- 						<li> -->
<%-- 							<a style="text-decoration:none;" href="<%=request.getContextPath()%>/home/companyList?title=ZDJC" > --%>
<!-- 								<i class=""> -->
<%-- 									<img alt="" src="<%=request.getContextPath()%>/assets/financial-net/images/icon/icon_8.png"> --%>
<!-- 									<div class="icon-bg bg-orange"></div> -->
<!-- 								</i> -->
<!-- 								<span class="menu-title">重点监测</span> -->
<!-- 								<span id="" class="label label-violet"></span> -->
<!-- 							</a> -->
<!-- 						</li> -->
<%-- 					</sec:authorize> --%>
					<!-- 高风险预警 -->
<%-- 					<sec:authorize ifAllGranted="Role_Resource_HighRiskEarlyWarning"> --%>
<!-- 						<li> -->
<%-- 							<a style="text-decoration:none;" href="<%=request.getContextPath()%>/home/companyList?title=GFXYJ" > --%>
<!-- 								<i class=""> -->
<%-- 									<img alt="" src="<%=request.getContextPath()%>/assets/financial-net/images/icon/icon_9.png"> --%>
<!-- 									<div class="icon-bg bg-orange"></div> -->
<!-- 								</i> -->
<!-- 								<span class="menu-title" style="margin-left: 19px">高风险监测预警</span> -->
<!-- 								<span id="" class="label label-violet"></span> -->
<!-- 							</a> -->
<!-- 						</li> -->
<%-- 					</sec:authorize> --%>
					<!-- 调查介入 -->
<%-- 					<sec:authorize ifAllGranted="Role_Resource_InvestigationIntervention"> --%>
<!-- 						<li> -->
<%-- 							<a style="text-decoration:none;" href="<%=request.getContextPath()%>/home/companyList?title=DCJR"> --%>
<!-- 								<i class=""> -->
<%-- 									<img alt="" src="<%=request.getContextPath()%>/assets/financial-net/images/icon/icon_10.png"> --%>
<!-- 									<div class="icon-bg bg-pink"></div> -->
<!-- 								</i> -->
<!-- 								<span class="menu-title">调查介入</span> -->
<!-- 								<span id="" class="label label-yellow"></span> -->
<!-- 							</a> -->
<!-- 						</li> -->
<%-- 					</sec:authorize> --%>
					<!-- 异常企业名单 -->
					<sec:authorize ifAllGranted="Role_Resource_ExceptionCompanyList">
						<li>
							<a style="text-decoration:none;" href="<%=request.getContextPath()%>/home/abnormal_company">
								<i class="">
									<img alt="" src="<%=request.getContextPath()%>/assets/financial-net/images/icon/icon_10.png">
									<div class="icon-bg bg-pink"></div>
								</i>
								<span class="menu-title">异常名单</span>
								<span id="" class="label label-yellow"></span>
							</a>
						</li>
					</sec:authorize>
					<!-- 其他省市企业 -->
					<sec:authorize ifAllGranted="Role_Resource_OtherAreaCompanyList">
						<li>
							<a style="text-decoration:none;" href="<%=request.getContextPath()%>/home/companyList?title=QTSS">
								<i class="">
									<img alt="" src="<%=request.getContextPath()%>/assets/financial-net/images/icon/icon_10.png">
									<div class="icon-bg bg-pink"></div>
								</i>
								<span class="menu-title">其他省市企业</span>
								<span id="ybfCount" class="label label-yellow"></span>
							</a>
						</li>
					</sec:authorize>
					<!-- 实时举报 -->
					<sec:authorize ifAllGranted="Role_Resource_RealTimeReport_Ningxia">
						<li>
							<a style="text-decoration:none;" href="<%=request.getContextPath()%>/home/RealtimeReporting">
								<i class="">
									<img alt="" src="<%=request.getContextPath()%>/assets/financial-net/images/icon/icon_12.png">
									<!-- <div class="icon-bg bg-grey"></div> -->
								</i>
								<span class="menu-title">实时举报</span>
								<span class="fa arrow"></span>
							</a>
							<ul class="nav nav-second-level">
								<!-- 电话举报 -->
								<li>
									<a href="<%=request.getContextPath()%>/home/RealtimeReporting">
										<i class="fa fa-phone"></i>
										<span class="submenu-title">电话举报</span>
									</a>
								</li>
								<!-- 微信举报 -->
								<li>
									<a href="<%=request.getContextPath()%>/home/RealtimeReporting">
										<i class="fa fa-comments-o"></i>
										<span class="submenu-title">微信举报</span>
									</a>
								</li>
								<!-- 手机App -->
								<li>
									<a href="<%=request.getContextPath()%>/home/RealtimeReporting">
										<i class="fa fa-mobile"></i>
										<span class="submenu-title">手机App(待开发)</span>
									</a>
								</li>
							</ul>
						</li>
					</sec:authorize>
					<!-- 主动发现 -->
					<%-- <li class=''>
						<a style="text-decoration:none;" href="<%=request.getContextPath()%>/discovery/index">
							<i>
								<img alt="" src="<%=request.getContextPath()%>/assets/financial-net/images/icon/discovery.png">
								<!-- <div class="icon-bg bg-orange"></div> -->
							</i>
							<span class="menu-title">主动发现 </span>
						</a>
					</li> --%>
					<!-- 监测报告 -->
					<sec:authorize ifAllGranted="Role_Resource_MonitoringReport">
						<li>
							<a style="text-decoration:none;" href="<%=request.getContextPath()%>/home/monireport">
								<i class="">
									<img alt="" src="<%=request.getContextPath()%>/assets/financial-net/images/icon/icon_12.png">
									<!-- <div class="icon-bg bg-grey"></div> -->
								</i>
								<span class="menu-title">监测报告</span>
							</a>
						</li>
					</sec:authorize>
					<!-- 信息报告 -->
					<sec:authorize ifAllGranted="Role_Resource_MonitoringReport_CQ">
						<li>
							<a style="text-decoration:none;" href="<%=request.getContextPath()%>/home/monireport">
								<i class="">
									<img alt="" src="<%=request.getContextPath()%>/assets/financial-net/images/icon/icon_12.png">
									<!-- <div class="icon-bg bg-grey"></div> -->
								</i>
								<span class="menu-title">信息报告</span>
							</a>
						</li>
					</sec:authorize>
					<!-- 高级搜索 -->
					<sec:authorize ifAllGranted="Role_Resource_AdvancedSearch">
						<%-- <li id="gjss_nav">
                            <a style="text-decoration:none;" href="<%=request.getContextPath()%>/topAdvanSearch/topSearch">
                                <i class="">
                                    <img alt="" src="<%=request.getContextPath()%>/assets/financial-net/images/icon/icon_14.png">
                                    <!-- <div class="icon-bg bg-yellow"></div> -->
                                </i>
                                <span class="menu-title">高级搜索</span>
                            </a>
                        </li> --%>

						<li id="gjss_nav">
							<a style="text-decoration:none;" href="<%=request.getContextPath()%>/home/advancedSearch_new">
								<i class="">
									<img alt="" src="<%=request.getContextPath()%>/assets/financial-net/images/icon/icon_14.png">
									<!-- <div class="icon-bg bg-yellow"></div> -->
								</i>
								<span class="menu-title">高级搜索</span>
							</a>
						</li>
					</sec:authorize>
					<!-- 分析工具 -->
					<%--                     <sec:authorize ifAllGranted="Role_Resource_AnalysisTool">
                                            <li>
                                                <a style="text-decoration:none;" href="http://t.trs.com.cn/flex_Relation_Blank.do?logo=0&keyword=%E6%BD%98%E7%9F%B3%E5%B1%B9%2C%E4%BB%BB%E5%BF%97%E5%BC%BA&digWhat=friend&startdays=30" target="_blank">
                                                    <i class="">
                                                        <img alt="" src="<%=request.getContextPath()%>/assets/financial-net/images/icon/icon_11.png">
                                                        <!-- <div class="icon-bg bg-yellow"></div> -->
                                                    </i>
                                                    <span class="menu-title">分析工具</span>
                                                </a>
                                            </li>
                                        </sec:authorize> --%>
					<!-- 系统说明 -->
					<sec:authorize ifAllGranted="Role_Resource_SystemDescription">
						<li>
							<a style="text-decoration:none;"  href="<%=request.getContextPath()%>/home/sysIntroduce">
								<i class="">
									<img alt="" src="<%=request.getContextPath()%>/assets/financial-net/images/icon/icon_13.png">
									<!-- <div class="icon-bg bg-yellow"></div> -->
								</i>
								<span class="menu-title">系统说明</span>
							</a>
						</li>
					</sec:authorize>
					<!-- 新高级搜索页面 -->
					<%-- <sec:authorize ifAllGranted="Role_Resource_AdvancedSearch_New">
                        <li>
                            <a style="text-decoration:none;"  href="<%=request.getContextPath()%>/home/advancedSearch_new">
                                <i class="">
                                    <img alt="" src="<%=request.getContextPath()%>/assets/financial-net/images/icon/icon_13.png">
                                    <!-- <div class="icon-bg bg-yellow"></div> -->
                                </i>
                                <span class="menu-title">新高级搜索</span>
                            </a>
                        </li>
                    </sec:authorize> --%>
				</ul>
			</div>
		</nav>
		<!--END SIDEBAR MENU-->
		<!--BEGIN BODY-->
		<div id="page-wrapper" style="background:#000319;">
			<!--BEGIN CONTENT-->
			<decorator:body />
			<!--END CONTENT-->
		</div>
		<!--END BODY-->
		<!--BEGIN FOOTER-->
		<div id="footer" style="background: #0a0b1b;">
			<div align="center" class="copyright">北京金信网银金融信息服务有限公司Copyright©2015. <span>版本号:2.0.0.20170630_beta</span></div>
		</div>
		<!--END FOOTER-->
	</div>
	<!--END PAGE WRAPPER-->
</div>
</body>
<script src="<%=request.getContextPath()%>/assets/financial-net/js/index/top_news.js"></script>
<script src="<%=request.getContextPath()%>/assets/financial-net/js/index/nav.js"></script>

<script src="<%=request.getContextPath()%>/assets/financial-baseWeb/js/plugins.js"></script>
<script src="<%=request.getContextPath()%>/assets/financial-baseWeb/js/public.js"></script>
<!--页首高风险预警功能-->
<script type="text/javascript" src=""></script>
<!--高风险预警详细列表功能-->
<script type="text/javascript" src="<%=request.getContextPath()%>/assets/jinrongban/highRiskEarlyWarningAll.js"></script>
<!-- <script>highRiskEarlyWarning();</script> -->
<!--submint_form()  -->
<script type="text/javascript">
	$("#signOut").click(function () {
        window.opener = null;
        window.open("","_self");
        window.close();
    });
	//小图标鼠标移入事件
	$('#choo').mouseover(function(){
		$('.ech').show(1000);
		//遍历所有的input元素
		var dd=$('.ech').find('li')
		$.each(dd,function(index,item){
			//判断这个input是否被选中
			if($('item').find('input').is(":checked")){
				//取消选中转台
				item.children('input').checked=false;
			}
		})
	})
	//创建一个对应关系
	var obj={
		one:"#main_map",
		two:"#main_map_num",
		three:"#mainPie",
		four:"#mainLine",
		five:"#mainBar2",
		six:"#mainBar3",
		seven:"#mainBar1",
		eight:"#mainLine2"
	}
	//点击确定事件
	$('.ok').click(function(){
		$('.ech').hide();
		//遍历所有的input元素
		var dd=$('.ech').find('li')
		$.each(dd,function(index,item){

			//判断这个input是否被选中
			if($(item).find('input').is(":checked")){

				console.log($(item).find("input").attr("id"))
				//在判断上边的条条

				console.log(obj[$(item).find("input").attr("id")])
				//获取这个input的id值
				var selector = obj[$(item).find('input').attr('id')];

				$(selector).show();
			}else{
				var selector1 = obj[$(item).find('input').attr('id')];

				$(selector1).hide();
			}
		})
	})

	function  submint_form(){
		//提交表单
		$('#topbar-search').submit();
	}
	//论坛跳转
	function  submint_turn_luntan(){
		var name = getCookie("SUN");
		$('#username').val(name);
		//提交表单
		$('#jvForm').submit();
	}
	//获取指定名称cookie的值
	function getCookie(cookieName) {
		var strCookie = document.cookie;
		var arrCookie = strCookie.split("; ");
		for(var i = 0; i < arrCookie.length; i++){
			var arr = arrCookie[i].split("=");
			if(cookieName == arr[0]){
				return arr[1];
			}
		}
		return "";
	}
   // 无锡项目上传文件
   function submitCompanyFile(a) {
       var formData = new FormData();
       var fileName = $(a)[0].files[0];
       if (fileName == undefined) {
           alert("文件不能为空！");
           return false;
       }
       formData.append("filename",fileName);
       $.ajax({
           url : getBaseURL() + "/financecaseController/importData",
           data:formData,
           type:"post",
           async: false,
           cache: false,
           contentType: false,
           processData: false,
           success:function (data) {
               console.log(data);
               var errorName = "";
               if(data.length==0){
                   errorName="导入成功";
               }else{
                   if(data[0] == "后台错误"){
                       errorName = "导入失败，后台错误"
                   }else{
                       errorName="部分数据导入未成功，第"
                       for (var i = 0; i < data.length; i++) {
                           if(i != data.length-1){
                               errorName += data[i] +"，";
                           }else{
                               errorName += data[i];
                           }
                       };
                       errorName+="行数据有问题，请检查后重新提交这部分错误数据"
                   }
               }
               alert(errorName);
               $(a).val("");
           },
           error:function (data_error) {
               console.log(data_error);
               alert("导入失败");
               $(a).val("");
               return false;
           }
       });
   }
</script>
</html>
