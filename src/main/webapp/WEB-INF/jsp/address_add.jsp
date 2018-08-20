<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<!-- BEGIN HEAD -->
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="width=device-width, initial-scale=1" name="viewport" />
<meta name="description" content="Responsive Admin Template" />
<meta name="author" content="SmartUniversity" />
<title>个人中心</title>
<!-- google font -->
<link
	href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700"
	rel="stylesheet" type="text/css" />
<!-- icons -->
<link href="assets/plugins/simple-line-icons/simple-line-icons.min.css"
	rel="stylesheet" type="text/css" />
<link href="assets/plugins/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css" />
<!--bootstrap -->
<link href="assets/plugins/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<!-- Material Design Lite CSS -->
<link rel="stylesheet" href="assets/plugins/material/material.min.css">
<link rel="stylesheet" href="assets/css/material_style.css">
<!-- animation -->
<link href="assets/css/pages/animate_page.css" rel="stylesheet">
<!-- Template Styles -->
<link href="assets/css/style.css" rel="stylesheet" type="text/css" />
<link href="assets/css/plugins.min.css" rel="stylesheet" type="text/css" />
<link href="assets/css/responsive.css" rel="stylesheet" type="text/css" />
<link href="assets/css/theme-color.css" rel="stylesheet" type="text/css" />
<!-- dropzone -->
<link href="assets/plugins/dropzone/dropzone.css" rel="stylesheet"
	media="screen">
<!-- Date Time item CSS -->
<link rel="stylesheet"
	href="assets/plugins/material-datetimepicker/bootstrap-material-datetimepicker.css" />
<!-- favicon -->
<link rel="shortcut icon" href="assets/img/favicon.ico" />
</head>
<!-- END HEAD -->
<body
	class="page-header-fixed sidemenu-closed-hidelogo page-content-white page-md header-white dark-sidebar-color logo-dark">
	<!-- tip -->
	<!--<c:if test="${!(tip ==null)}"><script>alert("${tip}")</script></c:if>-->
	<c:remove var="tip" />
	<!-- endtip -->


	<div class="page-wrapper">
		<!-- start header -->
		<div class="page-header navbar navbar-fixed-top">
			<div class="page-header-inner ">
				<!-- logo start -->
				<div class="page-logo">
					<a href="index1"> <img alt="" src="assets/img/logo.png">
						<span class="logo-default">个人中心</span>
					</a>
				</div>
				<!-- logo end -->


				<!-- start mobile menu -->

				<!-- end mobile menu -->
				<!-- start header menu -->
				<div class="top-menu">
					<ul class="nav navbar-nav pull-right">
						<!-- start notification dropdown -->

						<!-- end notification dropdown -->
						<!-- start message dropdown -->
						<!-- start manage user dropdown -->
						<li class="dropdown dropdown-user"><a href="javascript:;"
							class="dropdown-toggle" data-toggle="dropdown"
							data-hover="dropdown" data-close-others="true"> <img alt=""
								class="img-circle " src="assets/img/dp.jpg" /> <span
								class="username username-hide-on-mobile">
									 ${user.getName()} </span> <i class="fa fa-angle-down"></i>
						</a>
							<ul class="dropdown-menu dropdown-menu-default animated jello">
								<li><a href="login1"> <i class="icon-logout"></i> Log
										Out
								</a></li>
							</ul></li>
						<!-- end manage user dropdown -->
					</ul>
				</div>
			</div>
		</div>
		<!-- end header -->

		<!-- start page container -->
		<div class="page-container">
			<!-- start sidebar menu -->
			<div class="sidebar-container">
				<div class="sidemenu-container navbar-collapse collapse fixed-menu">
					<div id="remove-scroll">
						<ul class="sidemenu page-header-fixed p-t-20"
							data-keep-expanded="false" data-auto-scroll="true"
							data-slide-speed="200">
							<li class="sidebar-toggler-wrapper hide">
								<div class="sidebar-toggler">
									<span></span>
								</div>
							</li>

							<li class="menu-heading"><span>-- 功能列表</span></li>


							<li class="nav-item"><a href="#" class="nav-link nav-toggle">
									<i class="material-icons">business_center</i> <span
									class="title">订单信息</span> <span class="arrow"></span>
							</a>
								<ul class="sub-menu">

									<li class="nav-item "><a href="user_food1"
										class="nav-link "> <span class="title">查看外卖订单</span>
									</a></li>
									<li class="nav-item"><a href="user_seat1"
										class="nav-link "> <span class="title">查看座位预定</span>
									</a></li>
								</ul></li>


							<li class="nav-item active"><a href="#"
								class="nav-link nav-toggle"> <i class="material-icons">vpn_key</i>
									<span class="title">配送地址信息</span> <span class="arrow"></span>
							</a>
								<ul class="sub-menu">
									
									<li class="nav-item  active"><a href="#"
										class="nav-link "> <span class="title">管理配送地址</span>
									</a></li>
								</ul>
							</li>


							<li class="nav-item"><a href="#" class="nav-link nav-toggle">
									<i class="material-icons">group</i> <span class="title">个人信息及密码</span>
									<span class="arrow"></span>
							</a>
								<ul class="sub-menu">
									
									<li class="nav-item"><a href="user_imf1"
										class="nav-link "> <span class="title">个人信息修改</span>
									</a></li>
									<li class="nav-item"><a href="user_pwd1" class="nav-link ">
											<span class="title">密码修改</span>
									</a></li>
								</ul></li>

							<li class="menu-heading m-t-20">
						</ul>
					</div>
				</div>
			</div>
			<!-- end sidebar menu -->


			<!-- start page content -->
			<div class="page-content-wrapper">
				<div class="page-content">
					<div class="page-bar">
						<div class="page-title-breadcrumb">
							<div class=" pull-left">
								<div class="page-title">管理地址信息</div>
							</div>
							<ol class="breadcrumb page-breadcrumb pull-right">
								<li><i class="fa fa-home"></i>&nbsp;<a class="parent-item"
									href="index1">主页</a>&nbsp;<i class="fa fa-angle-right"></i></li>
								<li><a class="parent-item" href="">地址信息</a>&nbsp;<i
									class="fa fa-angle-right"></i></li>
								<li class="active">管理地址信息</li>
							</ol>
						</div>
					</div>


					<div class="table-scrollable">
						<table
							class="table table-hover table-checkable order-column full-width"
							id="example4">
							<thead>
								<tr>
									<th class="center">已有配送地址</th>
									<th class="center">操作</th>

								</tr>
							<tbody>
								<c:forEach var="userAddress" items="${userAddress }">
									<tr>
										
										<td class="center">${userAddress.detail }</td>
										<td class="center"><a href = "doAddressDel?aid=${userAddress.id}">删除</a></td>
									</tr>
								</c:forEach>
							</tbody>
							</thead>
						</table>
					</div>


					<div class="row">
						<div class="col-sm-12">
							<div class="card-box">
								<div class="card-head">
									<header>添加地址信息</header>
								</div>
								<form name="add" action="doAddress" method="post">

									<div class="col-lg-12 p-t-20">
										<div
											class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label getmdl-select getmdl-select__fix-height txt-full-width">
											<input class="mdl-textfield__input" type="text" id="list1"
												value="" readonly tabIndex="-1" name="street"> <label
												for="list1" class="pull-right margin-0"> <i
												class="mdl-icon-toggle__label material-icons">keyboard_arrow_down</i>
											</label> <label for="list1" class="mdl-textfield__label">选择街道</label>
											<ul data-mdl-for="list1"
												class="mdl-menu mdl-menu--bottom-left mdl-js-menu">
												<li class="mdl-menu__item" data-val="莲前街道">莲前街道</li>
												<li class="mdl-menu__item" data-val="湖里街道">湖里街道</li>
												<li class="mdl-menu__item" data-val="金山街道">金山街道</li>
											</ul>
										</div>

										<div class="col-lg-12 p-t-20">
											<div
												class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label txt-full-width">
												<input class="mdl-textfield__input" type="text"
													id="food_name" name="detail"> <label
													class="mdl-textfield__label">详细地址（小区/写字楼）</label>
												<!--  <span id="tip"></span>-->
											</div>
										</div>

										<div class="col-lg-12 p-t-20 text-center">
											<button type="button"
												class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect m-b-10 m-r-20 btn-pink"
												onclick="validate()">提交</button>
											<button type="button"
												class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect m-b-10 btn-default "
												onclick="cancel()">取消</button>
										</div>

									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- end page content -->
			<!-- end page container -->
			<!-- start footer -->
			<div class="page-footer">
				<div class="page-footer-inner">
					2018 &copy; 海角七号 <a href="mailto:redstartheme@gmail.com"
						target="_top" class="makerCss">工作室</a>
				</div>
				<div class="scroll-to-top">
					<i class="icon-arrow-up"></i>
				</div>
			</div>
			<!-- end footer -->
		</div>

	</div>
	<!-- start js include path -->
	<script src="assets/plugins/jquery/jquery.min.js"></script>
	<script src="assets/plugins/popper/popper.min.js"></script>
	<script src="assets/plugins/jquery-blockui/jquery.blockui.min.js"></script>
	<script src="assets/plugins/jquery-slimscroll/jquery.slimscroll.min.js"></script>
	<!-- bootstrap -->
	<script src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
	<!-- Common js-->
	<script src="assets/js/app.js"></script>
	<script src="assets/js/layout.js"></script>
	<script src="assets/js/theme-color.js"></script>
	<!-- Material -->
	<script src="assets/plugins/material/material.min.js"></script>
	<script src="assets/js/pages/material_select/getmdl-select.js"></script>
	<script
		src="assets/plugins/material-datetimepicker/moment-with-locales.min.js"></script>
	<script
		src="assets/plugins/material-datetimepicker/bootstrap-material-datetimepicker.js"></script>
	<script src="assets/plugins/material-datetimepicker/datetimepicker.js"></script>
	<!-- dropzone -->
	<script src="assets/plugins/dropzone/dropzone.js"></script>
	<script src="assets/plugins/dropzone/dropzone-call.js"></script>
	<!-- animation -->
	<script src="assets/js/pages/ui/animations.js"></script>
	<!-- end js include path -->
	<script>
		var deltip=${param.deltip};
		if(deltip==1){
			alert("删除成功");
		}
	
	
	</script>
	
	


	<script>
		function cancel() {
			location.reload();
		}

		function validate() {
			//验证表单完整性
			var flag = true;
			$("input[type='text']").each(function() {
				if ($(this).val() == "") {
					alert("请填写完整!");
					flag = false;
					return false;
				}
			})
			if (flag == true) {
				add.submit();
			} else {
				return false;
			}
		}
	</script>

	<script type="text/javascript"> 
		function confirmFunction() { 
				if(confirm("是否真的要跳转？")) { 
				window.location.href="http://www.3156.cn"; 
				} 
		}	
</script> 

</body>
</html>