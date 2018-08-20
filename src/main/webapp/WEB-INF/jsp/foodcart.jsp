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
<title>海角七号餐厅</title>
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
//自动获取当前用户的地址
	window.onload=function(){
		$.ajax({
			async:false,
			type: "GET",
			url: "findAddress",//注意路径
			data:{},
			dataType:"json",
			success:function(data){
		        for (var i = 0; i < data.length; i++) {
		            var text = data[i].detail;
		      		var value = data[i].id;
		      		document.getElementById("findAddress").add(new Option(text, value));//绑定DropDownList的value值，text值
		  		}
		     },
		     err:function(){
		     	alert("请求失败");
		     }

		});
		
	}

</script>
<script>
	function clearhistory() {
		window.location.replace("/User?param=0");
	}
</script>
<script type="text/javascript">
	//当点击+或-号时，会向服务器发送请求，并通知服务器修改哪个商品及数量是多少
	function changeCount(id, count) {
		//将字符串转换成数字
		count = parseInt(count);
		//确认删除功能
		if (count <= 0) {
			var flag = window.confirm("确认删除吗");
			if (!flag) { //取消时，直接让程序结束
				document.getElementById(id).value = 1;
				count = 1;
			} else {
				count = 0;
			}
		}

		location.href = "${pageContext.request.contextPath}/changeCartCount?id="+ id + "&count=" + count;
		
	}
</script>
<script>
//确认订单
function doInsertOut(){
	var remark=$("#remark").val();
	var ads_id=$("#findAddress").val();
	ads_id=parseInt(ads_id);

	location.href="${pageContext.request.contextPath}/doInsertOut?remark="+remark+"&ads_id="+ads_id;
}
</script>
</head>
<!-- END HEAD -->
<body
	class="page-header-fixed sidemenu-closed-hidelogo page-content-white page-md header-white dark-sidebar-color logo-dark">
	<!--<c:if test="${!(tip ==null)}"><script>alert("${tip}")</script></c:if>
<c:remove  var="tip"/>-->



	<!-- start page content -->
	<div class="">
		<div class="page-content">
			<div class="page-bar">
				<div class="page-title-breadcrumb">
					<div class=" pull-left">
						<div class="page-title">&nbsp &nbsp &nbsp海角七号外卖购物车</div>
					</div>
					<ol class="breadcrumb page-breadcrumb pull-right">
						<li><i class="fa fa-home"></i>&nbsp;<a class="parent-item"
							href="index1">主页</a>&nbsp;<i class="fa fa-angle-right"></i></li>
						<li><a class="parent-item" href="takefood1">返回外卖点餐页面</a>&nbsp;<i
							class="fa fa-angle-right"></i></li>
						<li class="active">您的购物车</li>
					</ol>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<div class="card card-box">
						<div class="card-head">
							<header>您的购物车信息</header>
							<div class="tools">
								<a class="fa fa-repeat btn-color box-refresh"
									href="javascript:;"></a> <a
									class="t-collapse btn-color fa fa-chevron-down"
									href="javascript:;"></a> <a
									class="t-close btn-color fa fa-times" href="javascript:;"></a>
							</div>
						</div>
						<div class="card-body ">
							<div class="row p-b-20">
								<div class="col-md-6 col-sm-6 col-6">
									<div class="btn-group">
										
										<button onclick="doInsertOut()">提交订单</button>
									</div>
								</div>

								<div class="table-scrollable">
									<table
										class="table table-hover table-checkable order-column full-width"
										id="example4">
										<thead>
											<tr>
												<th class="center">菜品名</th>
												<th class="center">数量</th>
												<th class="center">价格</th>
												<th class="center">取消</th>
												<!--<th class="center"> 类型</th>
                                                <th class="center"> 面积</th>
                                                <th class="center"> 菜品设施</th>
                                                <th class="center"> 租金</th>-->

											</tr>
										<tbody>
											
												<c:forEach items="${cart}" var="entry">
													<tr>
														<td class="center">${entry.key.fname}</td>
														<td class="center"><input type="button" value='-'
															onclick="changeCount('${entry.key.id}','${entry.value-1}')">

															<input name="count" type="text" value="${entry.value}"
															id="${entry.key.id}"
															onblur="changeCount('${entry.key.id}',this.value)" /> <input
															type="button" value='+' style="width: 20px"
															onclick="changeCount('${entry.key.id}','${entry.value+1}')">
														</td>
														<td class="center">${entry.key.price}</td>
														<td class="center"><input type="button"
															onclick="changeCount('${entry.key.id}',0)" value="取消"></td>
													</tr>
													
												</c:forEach>
											
										</tbody>


										</thead>
									</table>
									备注：<input type="text" id="remark">
									选择地址：<select id="findAddress"></select>
								</div>
							</div>
						</div>
					</div>
				</div>
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
</body>
</html>