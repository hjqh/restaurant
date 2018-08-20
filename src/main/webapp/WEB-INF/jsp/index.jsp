<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>

<head>
<title>海角七号餐厅</title>

<link rel="stylesheet" href="frist/default.css">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
<meta name="format-detection" content="telephone=no">
<meta name="renderer" content="webkit">
<meta name="author" content="www.cssmoban.com" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Cache-Control" content="no-siteapp" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<link rel="stylesheet" href="frist/default.css">
<script>
	//
</script>
</head>
<body>

	<header>
		<div class="header-nav">
			<div role="navigation">
				<a href="#" rel="home" class="hd-logo" title="美食餐厅"><img
					src="frist/images/logo.png"></a>
				<li>
					<div>
				<c:choose>
					<c:when test="${user == null }">
						<!-- 顶部未登录 -->
							<a href="login1" name="login">登录|注册<span><i
							class="iconfont ">&#xe6aa;</i></span></a>
					</c:when>
					<c:otherwise>
						<!-- 顶部已登录 -->
						<a href="#"><span style="font-size:18px">#${user.getName()}@欢迎来到海角七号<i
							class="iconfont ">&#xe6aa;</i></span></a>
					</c:otherwise>
				</c:choose>
					</div>
				</li>

				<ul class="hd-nav">
					<li class="search-box-li">
						<div>
							<input type="text" name="search-keyword" placeholder="输入关键词"
								form="search-keyword"><i class="iconfont search-submit">&#xe617;</i>
						</div> <i class="search-exit"></i>
					</li>
					<li><a href="index1" name="index">网站首页<span><i
								class="iconfont ">&#xe6aa;</i></span></a></li>
					<li><a href="#dibu" name="contact">预订座位<span><i
								class="iconfont ">&#xe6aa;</i></span></a></li>
					<li><a href="takefood1" name="productlist">外送服务<span><i
								class="iconfont ">&#xe6aa;</i></span></a></li>
					<li><a href="user_food1" name="person">个人中心<span><i
								class="iconfont ">&#xe6aa;</i></span></a></li>
				</ul>

				<div class="motai"></div>
				<ul>
					<li><a><i class="iconfont search-botton">&#xe617;</i></a></li>
					<li><a>中文</a></li>
					<li><a>En</a></li>
					<li><a><i class="iconfont nav-bottom">&#xe61f;</i></a></li>
				</ul>

			</div>
			<div class="search-box">
				<form method="post" action="#" id="search-keyword">
					<input type="text" name="search-keyword" placeholder="请输入您的内容">
					<span> </span>
				</form>

			</div>

		</div>

		<div class="header-carousel container">

			<div id="myCarousel" class="carousel slide">
				<!-- 轮播（Carousel）指标 -->
				<ol class="carousel-indicators">

					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="1"></li>
					<li data-target="#myCarousel" data-slide-to="2"></li>
				</ol>
				<!-- 轮播（Carousel）项目 -->
				<div class="carousel-inner">
					<div class="item active">
						<img src="frist/images/banner.jpg" style="width: 100%;"
							alt="First slide">
					</div>
					<div class="item">
						<img src="frist/images/banner2.jpg" style="width: 100%;"
							alt="Second slide">
					</div>
					<div class="item">
						<img src="frist/images/banner3.jpg" style="width: 100%;"
							alt="Third slide">
					</div>
				</div>
				<!-- 轮播（Carousel）导航 -->
				<a class="carousel-control left" href="#myCarousel"
					data-slide="prev"></a> <a class="carousel-control right"
					href="#myCarousel" data-slide="next"></a>
			</div>

		</div>
	</header>
	<main class="main-first-bgcolor">
	<div>
		<div class="main-head">
			<p>
				<span>我们提供</span>
			</p>
		</div>
		<div class="main-we-provide">
			<ul>
				<li><span><img src="frist/images/lunch.png" alt=""></span>
					<h2>中餐</h2>
					<p>公司目前经营的范围包括：电子商务平台开发技术支持、技术转让、运维技术服务大数据、云计算等。</p></li>
				<li><span><img src="frist/images/dinner.png" alt=""></span>
					<h2>晚餐</h2>
					<p>公司目前经营的范围包括：电子商务平台开发技术支持、技术转让、运维技术服务大数据、云计算等。</p></li>
				<li><span><img src="frist/images/coffee.png" alt=""></span>
					<h2>甜品/咖啡</h2>
					<p>公司目前经营的范围包括：电子商务平台开发技术支持、技术转让、运维技术服务大数据、云计算等。</p></li>
			</ul>
		</div>
	</div>

	<div>
		<div class="main-head">
			<p>
				<span>菜式欣赏</span>
			</p>
		</div>
	</div>
	</main>
	<div class="copyrights">
		Collect from <a href="http://www.cssmoban.com/">网页模板</a>
	</div>
	<main> <img class="mdbanner" src="frist/images/mdbanner.jpg">
	</main>
	<main>
	<div class="main-body">
		<p>
			<span>每一种食物来源都经过我们的精挑细选，关于食材我们只选最天然、健康、优质的，只为一份对极致美味的追求，用心做好每一份菜，是我们不变的宗旨。</span>
		</p>
		<ul class="main-body-img">
			<li><img src="frist/images/mdlist1.jpg"></li>
			<li><img src="frist/images/mdlist2.jpg"></li>
			<li><img src="frist/images/mdlist3.jpg"></li>
			<li><img src="frist/images/mdlist4.jpg"></li>
			<li><img src="frist/images/mdlist5.jpg"></li>
			<li><img src="frist/images/mdlist6.jpg"></li>
			<li><img src="frist/images/mdlist7.jpg"></li>
			<li><img src="frist/images/mdlist8.jpg"></li>
			<li><img src="frist/images/mdlist9.jpg"></li>
		</ul>
	</div>
	</main>
	<main>
	<ul class="main-submenu">
		<li><a href="#">午餐</a></li>
		<li><a href="#">晚餐</a></li>
		<li><a href="#">甜品</a></li>
		<li><a href="#">饮料</a></li>
	</ul>
	<ul class="main-submenu-info main-submenu-first">
		<li><a href="#">
				<div class="food-name">
					<p>玫瑰香酥西兰花</p>
					<p>Rose fried broccoli</p>
				</div>
				<div class="food-price">
					<p>
						￥<span>25</span>
					</p>
				</div>
				<div class="img-bg"></div> <img src="frist/images/foodlist1.jpg">
		</a></li>
		<li><a href="#">
				<div class="food-name">
					<p>玫瑰香酥西兰花</p>
					<p>Rose fried broccoli</p>
				</div>
				<div class="food-price">
					<p>
						￥<span>25</span>
					</p>
				</div>
				<div class="img-bg"></div> <img src="frist/images/foodlist2.jpg">
		</a></li>
		<li><a href="#"><img src="frist/images/foodlist3.jpg"></a></li>
		<li><a href="#"><img src="frist/images/foodlist4.jpg"></a></li>
		<li><a href="#"><img src="frist/images/foodlist5.jpg"></a></li>
		<li><a href="#"><img src="frist/images/foodlist6.jpg"></a></li>
	</ul>

	</main>
	<main>
	<div>
		<div class="main-head">
			<p>
				<span>美食资讯</span>
			</p>
		</div>
	</div>
	<ul class="main-submenu main-submenu-second">
		<li><a href="#">最新新闻</a></li>
		<li><a href="#">餐厅新闻</a></li>
		<li><a href="#">美食热闻</a></li>
		<li><a href="#">甜品站</a></li>
	</ul>
	<ul class="main-submenu-info ">
		<li><a href="#">
				<div class="activity-duration">
					<img src="frist/images/activity-duration.png">
					<p>6-1日</p>
				</div> <img src="frist/images/foodnewlist1.jpg">
				<h1 class="food-head">周末轻松制作美味甜品</h1>
				<p class="food-info">每个周末都抽出一个小时的时间来为自己做一份甜品，让周末的休闲充满制作甜蜜和品尝甜蜜的快乐。</p>
		</a></li>
		<li><a href="#">
				<div class="activity-duration">
					<img src="frist/images/activity-duration.png">
					<p>6-1日</p>
				</div> <img src="frist/images/foodnewlist1.jpg">
				<h1 class="food-head">周末轻松制作美味甜品</h1>
				<p class="food-info">每个周末都抽出一个小时的时间来为自己做一份甜品，让周末的休闲充满制作甜蜜和品尝甜蜜的快乐。</p>
		</a></li>
		<li><a href="#">
				<div class="activity-duration">
					<img src="frist/images/activity-duration.png">
					<p>6-1日</p>
				</div> <img src="frist/images/foodnewlist1.jpg">
				<h1 class="food-head">周末轻松制作美味甜品</h1>
				<p class="food-info">每个周末都抽出一个小时的时间来为自己做一份甜品，让周末的休闲充满制作甜蜜和品尝甜蜜的快乐。</p>
		</a></li>

	</ul>

	</main>
	<main id="dibu">

	<div class="main-head">
		<p>
			<span>在线预定座位</span>
		</p>
	</div>
	<div class="main-reserve">

		<form action="doOrder" method="post" id="food-reserve">
			<ul>
				<li><label for="date">尊敬的客户</label> <!--<input type="text" name="date" id="date">-->
					<input type="text" name="name" readonly="readonly"
					value="<c:out value='${user.getName()}'/>"></li>
				<li><label for="date">联系方式</label> <!--<input type="text" name="date" id="date">-->
					<input type="text" name="phone" readonly="readonly"
					value="<c:out value='${user.getPhone()}'/>"></li>

				<li><label for="date">日期</label> <!--<input type="text" name="date" id="date">-->
					<input type="date" name="orderday" onchange="showOd()"
					id="orderday"></li>

				<li><label for="time">午/晚餐</label>
					<div class="">
						<select class="" name="ordertime" onchange="showOd()"
							id="ordertime">
							<option value="午餐">午餐（11-15点）</option>
							<option value="晚餐">晚餐（11-15点）</option>
						</select>
					</div></li>
				<li><label for="numberofpeople">类型</label> <!--<input type="text" name="numberofpeople" id="numberofpeople">-->
					<select class="" name="tabletype" onchange="showOd()"
					id="tabletype">
						<option value="2人桌">2人桌</option>
						<option value="4人桌">4人桌</option>
						<option value="6人桌">6人桌</option>
						<option value="小包厢">小包厢</option>
						<option value="中包厢">中包厢</option>
						<option value="大包厢">大包厢</option>
				</select></li>
				<li><label for="time">可订桌子/包厢编号</label>
					<div class="">
						<select class="" name="seat_id" id="seat_id" onchange="addsid">
							<option></option>
							<option></option>
						</select>
					</div></li>
				<li><label for="guestbook">留言</label> <input type="text"
					name="remark" id="remark"></li>
			</ul>
			<a class="reserve">预定</a>
		</form>
	</div>
	</main>

	<footer>
		<div>
			<ul class="footer-top">
				<li><a href="index.html">网站首页</a></li>
				<li><a href="about.html">关于我们</a></li>
				<li><a href="productlist.html">菜式欣赏</a></li>
				<li><a href="article.html">美食资讯</a></li>
				<li><a href="contact.html">在线预订</a></li>
			</ul>
		</div>


		<div>
			<ul class="footer-body">

				<li><span>电话:</span><span>0714-8868331</span></li>
				<li><span>邮箱:</span><span>123@dayeyunalading.com</span></li>
				<li><span>地址:</span><span>湖北省大冶市XXX大道XXX办公室</span></li>
			</ul>
			<P>
				<span><a href="http://www.haothemes.com/" target="_blank"
					title="好主题">好主题</a>提供 - More Templates <a
					href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a>
					- Collect from <a href="http://www.cssmoban.com/" title="网页模板"
					target="_blank">网页模板</a></span>
			</P>
			<ul class="footer-footer">
				<li><i class="iconfont ">&#xe613;</i></li>
				<li><i class="iconfont ">&#xe634;</i></li>
				<li><i class="iconfont ">&#xe602;</i></li>
			</ul>
		</div>
	</footer>


</body>

<script src="frist/lib/jquery/jquery.js"></script>
<script src="frist/lib/bootstrap/bootstrap.js"></script>
<script src="frist/js/main.js"></script>

<script type="text/javascript">
	var tip = ${param.tip};
	if (tip == 1) {
		alert("尊敬的客户,您已预定成功,可在个人中心查看订单");
	}else{
		alert("尊敬的客户,请你提前一天预定");
	}
</script>


<script>
	function showOd() {

		var tt = $('#tabletype option:selected').val();//选中的文本; 
		var ot = $('#ordertime option:selected').val();
		var od = $("#orderday").val();
		$("#seat_id").find("option").remove();
		$.ajax({
			async : false,
			type : "POST",
			url : "doFindSeatId",//注意路径
			data : {
				"od" : od,
				"ot" : ot,
				"tt" : tt
			},
			dataType : "json",
			success : function(data) {
				for (var i = 0; i < data.name.length; i++) {

					var text = data.name[i];
					var value = data.name[i];
					document.getElementById("seat_id").add(
							new Option(text, value));//绑定DropDownList的value值，text值
				}
			},
			err : function() {
				alert("请求失败");
			}

		});

	}
</script>



</html>