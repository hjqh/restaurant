<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
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
<!-- data tables -->
<link
	href="assets/plugins/datatables/plugins/bootstrap/dataTables.bootstrap4.min.css"
	rel="stylesheet" type="text/css" />
<!-- animation -->
<link href="assets/css/pages/animate_page.css" rel="stylesheet">
<!-- Template Styles -->
<link href="assets/css/style.css" rel="stylesheet" type="text/css" />
<link href="assets/css/plugins.min.css" rel="stylesheet" type="text/css" />
<link href="assets/css/responsive.css" rel="stylesheet" type="text/css" />
<link href="assets/css/theme-color.css" rel="stylesheet" type="text/css" />
<!-- favicon -->
<link rel="shortcut icon" href="assets/img/favicon.ico" />
<script>
	function clearhistory() {
		window.location.replace("/User?param=0");
	}
	
</script>
<script>
var txt=${param.tip};
if(txt){
	alert("修改成功！")
}
else{
	alert("修改失败！")
}
</script>
</head>
<!-- END HEAD -->
<body


	class="page-header-fixed sidemenu-closed-hidelogo page-content-white page-md header-white dark-sidebar-color logo-dark">
	<!--<c:if test="${!(tip ==null)}"><script>alert("${tip}")</script></c:if>
<c:remove  var="tip"/>-->
	<div class="page-wrapper">
		<!-- tip -->

		<!-- endtip -->
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


							<li class="nav-item"><a href="#" class="nav-link nav-toggle">
									<i class="material-icons">vpn_key</i> <span class="title">配送地址信息</span>
									<span class="arrow"></span>
							</a>
								<ul class="sub-menu ">
									
									<li class="nav-item"><a href="address_add"
										class="nav-link "> <span class="title">管理配送地址</span>
									</a></li>


								</ul></li>


							<li class="nav-item   active"><a href="#"
								class="nav-link nav-toggle"> <i class="material-icons">group</i>
									<span class="title">个人信息及密码</span> <span class="arrow"></span>
							</a>
								<ul class="sub-menu ">

									<li class="nav-item "><a href="user_imf1"
										class="nav-link "> <span class="title">个人信息修改</span>
									</a></li>
									<li class="nav-item active"><a href="user_pwd1"
										class="nav-link "> <span class="title">密码修改</span>
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
								<div class="page-title">密码修改</div>
							</div>
							<ol class="breadcrumb page-breadcrumb pull-right">
								<li><i class="fa fa-home"></i>&nbsp;<a class="parent-item"
									href="index1">主页</a>&nbsp;<i class="fa fa-angle-right"></i></li>
								<li><a class="parent-item" href="">个人信息</a>&nbsp;<i
									class="fa fa-angle-right"></i></li>
								<li class="active">密码修改</li>
							</ol>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">

							<form method="post" name="editbook" action="user_pwd2" onsubmit="return register()">

								<div class="row">
									<div class="col-sm-12">
										<div class="card-box">
											<div class="card-body row">
												<div class="col-lg-12 p-t-20">
													<div
														class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label txt-full-width">
														<input class="mdl-textfield__input" type="password" name="pwd"
															id="txtFirstName"> <label
															class="mdl-textfield__label">原密码</label>
													</div>
												</div>
												<div class="col-lg-12 p-t-20">
													<div
														class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label txt-full-width">
														<input id="password_register" class="mdl-textfield__input" type="password"
															name="pwd1"  > 
															<label class="mdl-textfield__label" for="text5">新密码</label> <span
															class="mdl-textfield__error">Number required!</span>
													</div>
												</div>
												<div class="col-lg-12 p-t-20">
													<div
														class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label txt-full-width">
														<input class="mdl-textfield__input" type="password"
															 id="determine_password_register" name="pwd2">
														<label class="mdl-textfield__label">确认密码</label>
													</div>
												</div>
												

												<div class="col-lg-12 p-t-20 text-center">
													<button 
														class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect m-b-10 m-r-20 btn-pink"
														type="submit" >修改</button>
													<button type="button"
														class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect m-b-10 btn-default"
														onclick="cancel()">取消</button>
												</div>
											</div>
										</div>
									</div>
								</div>
							</form>
						</div>
					</div>
					<!-- end page content -->
					<!-- start chat sidebar -->


					<!-- Start Setting Panel -->

				</div>
			</div>
		</div>
		<!-- end chat sidebar -->
	</div>
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
	<!-- data tables -->
	<script src="assets/plugins/datatables/jquery.dataTables.min.js"></script>
	<script
		src="assets/plugins/datatables/plugins/bootstrap/dataTables.bootstrap4.min.js"></script>
	<script src="assets/js/pages/table/table_data.js"></script>
	<!-- Material -->
	<script src="assets/plugins/material/material.min.js"></script>
	<!-- animation -->
	<script src="assets/js/pages/ui/animations.js"></script>
	<!-- end js include path -->

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
		function register(){
			//两次输入的密码要一致
			var password_register = $("#password_register").val();
			var determine_password_register = $("#determine_password_register").val();
			if(password_register != determine_password_register){
				alert("两次密码输入不一致");
				return false;
			}
			//密码只能是5-15位
			var regExp = new RegExp("^.{5,15}$");
			if(!regExp.test(password_register)){
				alert("正确密码为5-15位");
				return false;
			}
		}
	</script>


</body>
</html>