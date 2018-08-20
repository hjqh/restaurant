<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="en">
<!-- BEGIN HEAD -->
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1" name="viewport"/>
    <meta name="description" content="Responsive Admin Template"/>
    <meta name="author" content="SmartUniversity"/>
    <title>海角七号餐厅</title>
    <!-- google font -->
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700"
          rel="stylesheet" type="text/css"/>
    <!-- icons -->
    <link href="assets/plugins/simple-line-icons/simple-line-icons.min.css" rel="stylesheet"
          type="text/css"/>
    <link href="assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet"
          type="text/css"/>
    <!--bootstrap -->
    <link href="assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <!-- Material Design Lite CSS -->
    <link rel="stylesheet" href="assets/plugins/material/material.min.css">
    <link rel="stylesheet" href="assets/css/material_style.css">
    <!-- data tables -->
    <link href="assets/plugins/datatables/plugins/bootstrap/dataTables.bootstrap4.min.css"
          rel="stylesheet" type="text/css"/>
    <!-- animation -->
    <link href="assets/css/pages/animate_page.css" rel="stylesheet">
    <!-- Template Styles -->
    <link href="assets/css/style.css" rel="stylesheet" type="text/css"/>
    <link href="assets/css/plugins.min.css" rel="stylesheet" type="text/css"/>
    <link href="assets/css/responsive.css" rel="stylesheet" type="text/css"/>
    <link href="assets/css/theme-color.css" rel="stylesheet" type="text/css"/>
    <!-- favicon -->
    <link rel="shortcut icon" href="assets/img/favicon.ico"/>
    <script>
        function clearhistory() {
            window.location.replace("/User?param=0");
        }
    </script>
</head>
<!-- END HEAD -->
<body class="page-header-fixed sidemenu-closed-hidelogo page-content-white page-md header-white dark-sidebar-color logo-dark">
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
                <a href="index1">
                    <img alt="" src="assets/img/logo.png">
                    <span class="logo-default">海角七号</span> </a>
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
                    <li class="dropdown dropdown-user">
                        <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown"
                           data-hover="dropdown" data-close-others="true">
                            <img alt="" class="img-circle " src="assets/img/dp.jpg"/>
                            <span class="username username-hide-on-mobile">  ${manager.getName()} 管理员 </span>
                            <i class="fa fa-angle-down"></i>
                        </a>
                        <ul class="dropdown-menu dropdown-menu-default animated jello">
                            <li>
                                <a href="login1">
                                    <i class="icon-logout"></i> Log Out </a>
                            </li>
                        </ul>
                    </li>
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
                    <ul class="sidemenu page-header-fixed p-t-20" data-keep-expanded="false"
                        data-auto-scroll="true" data-slide-speed="200">
                        <li class="sidebar-toggler-wrapper hide">
                            <div class="sidebar-toggler">
                                <span></span>
                            </div>
                        </li>

                        <li class="menu-heading">
                            <span>-- 功能列表</span>
                        </li>
                     

                        <li class="nav-item  active">
                            <a href="#" class="nav-link nav-toggle">
                                <i class="material-icons">business_center</i>
                                <span class="title">订单信息</span>
                                <span class="arrow"></span>
                            </a>
                            <ul class="sub-menu">
                                <li class="nav-item" >
                                    <a href="out_deal1" class="nav-link ">
                                        <span class="title">外送订单处理</span>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="all_out_food1" class="nav-link ">
                                        <span class="title">查看外卖订单</span>
                                    </a>
                                </li>
                                <li class="nav-item  active">
                                    <a href="all_order_seat1" class="nav-link ">
                                        <span class="title">查看座位预定</span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        
                        
                        <li class="nav-item">
                            <a href="#" class="nav-link nav-toggle">
                                <i class="material-icons">vpn_key</i>
                                <span class="title">菜品信息</span>
                                <span class="arrow"></span>
                            </a>
                            <ul class="sub-menu">
                                <li class="nav-item">
                                    <a href="food_add1" class="nav-link ">
                                        <span class="title">添加菜品</span>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="all_food1" class="nav-link ">
                                        <span class="title">查看所有菜品</span>
                                    </a>
                                </li>
                                
                             
                            </ul>
                        </li>
      
      
                        <li class="nav-item">
                            <a href="#" class="nav-link nav-toggle">
                                <i class="material-icons">group</i>
                                <span class="title">海角七号工作室</span>
                                <span class="arrow"></span>
                            </a>
                            
                        </li>

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
                            <div class="page-title">订单信息</div>
                        </div>
                        <ol class="breadcrumb page-breadcrumb pull-right">
                            <li><i class="fa fa-home"></i>&nbsp;<a class="parent-item"
                                                                   href="index1">主页</a>&nbsp;<i
                                    class="fa fa-angle-right"></i>
                            </li>
                            <li><a class="parent-item" href="">订单信息</a>&nbsp;<i
                                    class="fa fa-angle-right"></i>
                            </li>
                            <li class="active">预定座位信息</li>
                        </ol>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="card card-box">
                            <div class="card-head">
                                <header>预定座位信息</header>
                                <div class="tools">
                                    <a class="fa fa-repeat btn-color box-refresh"
                                       href="javascript:;"></a>
                                    <a class="t-collapse btn-color fa fa-chevron-down"
                                       href="javascript:;"></a>
                                    <a class="t-close btn-color fa fa-times"
                                       href="javascript:;"></a>
                                </div>
                            </div>
                            <div class="card-body ">
                                <div class="row p-b-20">
                                   
                                    <div class="table-scrollable">
                                        <table class="table table-hover table-checkable order-column full-width"
                                               id="example4">
                                            <thead>
                                            <tr>
                                                
                                                <th class="center"> 订单号</th>
                                               
                                                <th class="center">用户名字</th>
                                                <th class="center">联系方式</th>
                                                <th class="center">座位类型</th>
                                                <th class="center">座位编号</th>
                                                <th class="center">预定日期</th>
                                                <th class="center">午/晚餐</th>
                                                <th class="center">备注</th> 
                                                <th class="center">订金</th>
                                                <th class="center">状态</th>
                                                
                                                <!--<th class="center"> 类型</th>
                                                <th class="center"> 面积</th>
                                                <th class="center"> 菜品设施</th>
                                                <th class="center"> 租金</th>-->
                                                
                                            </tr>
                                            <tbody>
                                            <c:forEach var="find_all_seat" items="${find_all_seat }">
                                                <tr>
                                                    
                                                    <td class="center"><a
                                                            href=""></a>${find_all_seat.id }</td>
                                                    <td class="center">${find_all_seat.user.name }</td>
                                                    <td class="center">${find_all_seat.user.phone }</td>
                                                   <td class="center">${find_all_seat.seat.tabletype }</td>
                                                   <td class="center">${find_all_seat.seat.id }</td>
                                           
                                                   <td class="center">${find_all_seat.orderday }</td>
                                                   <td class="center">${find_all_seat.ordertime }</td>
                                                    <td class="center">${find_all_seat.remark }</td>
                                                    <td class="center">${find_all_seat.seat.price }</td>
                                                    <td class="center">${find_all_seat.state }</td>
                                                  
                                                    
                                                </tr>
                                            </c:forEach>
                                            </tbody>
                                            </thead>
                                        </table>
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
    <div class="page-footer-inner"> 2018 &copy; 海角七号
        <a href="mailto:redstartheme@gmail.com" target="_top" class="makerCss">工作室</a>
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
<script src="assets/plugins/datatables/plugins/bootstrap/dataTables.bootstrap4.min.js"></script>
<script src="assets/js/pages/table/table_data.js"></script>
<!-- Material -->
<script src="assets/plugins/material/material.min.js"></script>
<!-- animation -->
<script src="assets/js/pages/ui/animations.js"></script>
<!-- end js include path -->
</body>
</html>