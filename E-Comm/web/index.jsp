<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>主页</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<!--<script src="js/jquery.min.js"></script>-->
<!-- Custom Theme files -->
<!--theme-style-->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />	
<!--//theme-style-->
<!--start easyui-->
<script type="text/javascript" src="easyui/jquery.min.js"></script>
<script type="text/javascript" src="easyui/jquery.easyui.min.js"></script>
<link rel="stylesheet" type="text/css" href="easyui/themes/default/easyui.css"/>
<link rel="stylesheet" type="text/css" href="easyui/themes/icon.css"/>

<!--end easyui-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- start menu -->
<link href="css/memenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/memenu.js"></script>
<script>$(document).ready(function(){$(".memenu").memenu();});</script>
<script src="js/simpleCart.min.js"> </script>
<!-- slide -->
<script src="js/responsiveslides.min.js"></script>
   <script>
    $(function () {
      $("#slider").responsiveSlides({
      	auto: true,
      	speed: 500,
        namespace: "callbacks",
        pager: true,
      });
    });
    function doSearch(){
        alert();
    }
    
    function openWin(){
        $('#win').window({
            width:600,
            height:400,
            modal:true
        });
    }
  </script>
</head>
<body>

<!--header-->
<div class="header">
	<div class="header-top">
		<div class="container">
		<div class="col-sm-4 world">
                    <c:if test="${fn:length(buyer) gt 0}">
                    <ul class="afterLogin-left">
                        <li><a href="#">我的主场</a></li>
                        <li><a href="#">收藏夹</a></li>
                        <li><a href="#">购物车</a></li>
                        <li><a href="#">联系客服</li>
                     </ul>
                    </c:if>
				</div>
				<div class="col-sm-4 logo">
					<a href="index.jsp"><img src="images/logo1.jpg" width="70%" height="60%" alt=""></a>
				</div>
		
			<div class="col-sm-4 header-left">		
            		<!-- 用户没登录 -->
                       
                        <c:if test="${fn:length(buyer) eq 0 }">
                            <p class="log">
                            <a href="buyerLogin.jsp?lastpage=index.jsp">请登录</a>
<!--<a href="javascript:void(0);" onclick="openWin()">请登录</a>-->
                            <span style="color:black">或者</span><a  href="buyerRegister.jsp?lastpage=index.jsp"  >注册</a>
                            </p>
                            <div class="sellerCenter"><a href="salerLogin.jsp?lastpage=index.jsp">卖家中心</a></div>
                        </c:if> 
                        <!--after login 登录之后，要获取买家的名字-->
                        
                        <c:if test="${fn:length(buyer) gt 0}">
                            <p class="log"> 
                            您好，${buyer.username}。
                            </p>
                            <div class="cart box_1">
                                <a href="checkout.html">
                                <h3> <div class="total">
                                    <span class="simpleCart_total"></span></div>
                                    <img src="images/cart.png" alt=""/></h3>
                                </a>
                                <p><a href="javascript:;" class="simpleCart_empty">清空购物车</a></p>
                                            
                            </div>
                        </c:if>
                        
                        <!--点击登录 出现的window-->
                        
                            <div id="win" style="width:250px;height:150px;padding:10px;display: none;">
                                    This window stay inside its parent
                            </div>
                        
					
					<div class="clearfix"> </div>
			</div>
				<div class="clearfix"> </div>
		</div>
		</div>
		<div class="container">
			<div class="head-top">
				<div class="col-sm-2 number">
					<span><i class="glyphicon glyphicon-phone"></i>085 596 234</span>
				</div>
		 <div class="col-sm-8 h_menu4">
				<ul class="memenu skyblue">
					  <li class=" grid"><a  href="index.html">主页</a></li>	
                                          <li><a class="grid"  href="#">男士</a>
				      	<div class="mepanel">
						<div class="row">
							<div class="col1">
								<div class="h_nav">
									<h4>男装</h4>
									<ul>
										<li><a href="products.html">T恤</a></li>
										<li><a href="products.html">运动装</a></li>
										<li><a href="products.html">哈伦裤</a></li>
										<li><a href="products.html">套装</a></li>
										<li><a href="products.html">西装</a></li>
										<li><a href="products.html">针织衫</a></li>
										<li><a href="products.html">外套</a></li>
										<li><a href="products.html">牛仔裤</a></li>
										<li><a href="products.html">卫衣</a></li>
										<li><a href="products.html">情侣装</a></li>
										
									</ul>	
								</div>							
							</div>
							<div class="col1">
								<div class="h_nav">
									<h4>男鞋</h4>
									<ul>
										<li><a href="products.html">休闲鞋</a></li>
										<li><a href="products.html">靴子</a></li>
										<li><a href="products.html">运动鞋</a></li>
										<li><a href="products.html">皮鞋</a></li>
										<li><a href="products.html">跑步鞋</a></li>
										<li><a href="products.html">旅游鞋</a></li>
										<li><a href="products.html">平底鞋</a></li>
										<li><a href="products.html">拖鞋</a></li>
										<li><a href="products.html">凉鞋</a></li>
									</ul>	
								</div>							
							</div>
							<div class="col1">
								<div class="h_nav">
									<h4>著名品牌</h4>
									<ul>
										<li><a href="products.html">李宁</a></li>
										<li><a href="products.html">Persol太阳镜</a></li>
										<li><a href="products.html">Nike</a></li>
										<li><a href="products.html">普拉达</a></li>
										<li><a href="products.html">New Balance</a></li>
										<li><a href="products.html">Jack & Jones</a></li>
										<li><a href="products.html">达芙妮</a></li>
										<li><a href="products.html">YSL</a></li>
										<li><a href="products.html">匡威</a></li>
									</ul>	
								</div>												
							</div>
						  </div>
						</div>
					</li>
				    <li class="grid"><a  href="#">女士</a>
					  	<div class="mepanel">
						<div class="row">
							<div class="col1">
								<div class="h_nav">
									<h4>女装</h4>
									<ul>
										<li><a href="products.html">毛呢外套</a></li>
										<li><a href="products.html">运动装</a></li>
										<li><a href="products.html">连衣裙</a></li>
										<li><a href="products.html">T恤</a></li>
										<li><a href="products.html">卫衣</a></li>
										<li><a href="products.html">半身裙</a></li>
										<li><a href="products.html">围巾</a></li>
										<li><a href="products.html">雪纺衫</a></li>
										<li><a href="products.html">牛仔裤</a></li>
										<li><a href="products.html">短裤</a></li>
										
									</ul>	
								</div>							
							</div>
							<div class="col1">
								<div class="h_nav">
									<h4>女鞋</h4>
									<ul>
										<li><a href="products.html">高跟鞋</a></li>
										<li><a href="products.html">平底鞋</a></li>
										<li><a href="products.html">单鞋</a></li>
										<li><a href="products.html">休闲鞋</a></li>
										<li><a href="products.html">运动鞋</a></li>
										<li><a href="products.html">高帮鞋</a></li>
										<li><a href="products.html">低高跟鞋</a></li>
										<li><a href="products.html">职业女鞋</a></li>
										<li><a href="products.html">拖鞋</a></li>
										<li><a href="products.html">凉鞋</a></li>
									
									</ul>
								</div>							
							</div>
							<div class="col1">
								<div class="h_nav">
									<h4>著名品牌</h4>
									<ul>
										<li><a href="products.html">李宁</a></li>
										<li><a href="products.html">Persol太阳镜</a></li>
										<li><a href="products.html">Nike</a></li>
										<li><a href="products.html">普拉达</a></li>
										<li><a href="products.html">New Balance</a></li>
										<li><a href="products.html">Jack & Jones</a></li>
										<li><a href="products.html">达芙妮</a></li>
										<li><a href="products.html">YSL</a></li>
										<li><a href="products.html">匡威</a></li>
									</ul>	
								</div>												
							</div>
						  </div>
						</div>
			    </li>
                <li class="grid"><a  href="#">美妆洗护用品</a>
					  	<div class="mepanel">
						<div class="row">
							<div class="col1">
								<div class="h_nav">
									<h4>美妆</h4>
									<ul>
										<li><a href="products.html">面膜/洁面</a></li>
										<li><a href="products.html">防晒</a></li>
										<li><a href="products.html">爽肤水/面霜/乳液/眼霜</a></li>
										<li><a href="products.html">卸妆</a></li>
										<li><a href="products.html">男士护肤</a></li>
										<li><a href="products.html">粉底液/BB霜/隔离/彩妆盘</a></li>
										<li><a href="products.html">眼线/睫毛膏</a></li>
										<li><a href="products.html">唇膏/腮红</a></li>
										<li><a href="products.html">身体护理/纤体/脱毛</a></li>
										<li><a href="products.html">香水</a></li>
									</ul>	
								</div>							
							</div>
							<div class="col1">
								<div class="h_nav">
									<h4>洗护</h4>
									<ul>
										<li><a href="products.html">洗发水/护发素/染发膏</a></li>
										<li><a href="products.html">沐浴露/身体乳液</a></li>
										<li><a href="products.html">牙膏/牙刷/漱口水</a></li>
										<li><a href="products.html">足浴/足贴</a></li>
										<li><a href="products.html">洗手液</a></li>
										<li><a href="products.html">抽纸/卷纸</a></li>
										<li><a href="products.html">厨房清洁</a></li>
										<li><a href="products.html">家私/皮具护理</a></li>
										<li><a href="products.html">洗衣液</a></li>
										<li><a href="products.html">香薰</a></li>
									
									</ul>
								</div>							
							</div>
							<div class="col1">
								<div class="h_nav">
									<h4>著名品牌</h4>
									<ul>
										<li><a href="products.html">资源</a></li>
										<li><a href="products.html">斯塔夫</a></li>
										<li><a href="products.html">VS沙宣</a></li>
										<li><a href="products.html">Dr.G</a></li>
										<li><a href="products.html">innisfree/悦诗风吟</a></li>
										<li><a href="products.html">YSL</a></li>
										<li><a href="products.html">资生堂</a></li>
										<li><a href="products.html">CENTRUM/善存</a></li>
										<li><a href="products.html">DHC</a></li>
									</ul>	
								</div>												
							</div>
						  </div>
						</div>
                </li>
                <li class="grid"><a  href="#">家电数码用品</a>
					  	<div class="mepanel">
						<div class="row">
							<div class="col1">
								<div class="h_nav">
									<h4>家电</h4>
									<ul>
										<li><a href="products.html">蒸汽拖把/除螨仪</a></li>
										<li><a href="products.html">净水器</a></li>
										<li><a href="products.html">吸尘器</a></li>
										<li><a href="products.html">豆浆机</a></li>
										<li><a href="products.html">榨汁机</a></li>
										<li><a href="products.html">电饭煲</a></li>
										<li><a href="products.html">剃须刀/足浴盆</a></li>
										<li><a href="products.html">卷发器/护膝</a></li>
										<li><a href="products.html"> 蓝牙音箱/洗衣机/冰箱</a></li>
										<li><a href="products.html">空调</a></li>
									</ul>	
								</div>							
							</div>
							<div class="col1">
								<div class="h_nav">
									<h4>数码</h4>
									<ul>
										<li><a href="products.html">win10平板/超级本</a></li>
										<li><a href="products.html"> 镜头/ 单反/卡片机</a></li>
										<li><a href="products.html">摄像机</a></li>
										<li><a href="products.html">拍立得/微单</a></li>
										<li><a href="products.html">自拍神器</a></li>
										<li><a href="products.html">路由器/</a></li>
										<li><a href="products.html">电脑配件</a></li>
										<li><a href="products.html">自拍</a></li>
										<li><a href="products.html">一体机</a></li>
										<li><a href="products.html">移动电源</a></li>
									
									</ul>
								</div>							
							</div>
							<div class="col1">
								<div class="h_nav">
									<h4>著名品牌</h4>
									<ul>
										<li><a href="products.html">iPhone</a></li>
										<li><a href="products.html">Lenov/联想</a></li>
										<li><a href="products.html">Dell/戴尔</a></li>
										<li><a href="products.html">iPad</a></li>
										<li><a href="products.html">华硕</a></li>
										<li><a href="products.html">东施</a></li>
										<li><a href="products.html">ThinkPad</a></li>
										<li><a href="products.html">三星</a></li>
										<li><a href="products.html">清华同方</a></li>
									</ul>	
								</div>												
							</div>
						  </div>
						</div>
                </li>
				<!--
                <li><a  href="typo.html">Blog</a></li>				
				<li><a class="color6" href="contact.html">Conact</a></li>
                -->
			  </ul> 
			</div>
				<div class="col-sm-2 search">		
                <!--use easyui-->
			<input class="easyui-searchbox" data-options="prompt:'请输入商品',searcher:doSearch" style="width:100%">
            <!--end easyui-->

		</div>
		</div>
	</div>
</div>
<!--banner-->
<div class="banner">
	<div class="col-sm-3 banner-mat">
		<img class="img-responsive"	src="images/ba1.jpg" alt="">
	</div>
	<div class="col-sm-6 matter-banner">
	 	<div class="slider">
	    	<div class="callbacks_container">
	      		<ul class="rslides" id="slider">
	        		<li>
	          			<img src="images/1.jpg" alt="">
	       			 </li>
			 		 <li>
	          			<img src="images/2.jpg" alt="">   
	       			 </li>
					 <li>
	          			<img src="images/1.jpg" alt="">
	        		</li>	
	      		</ul>
	 	 	</div>
		</div>
	</div>
	<div class="col-sm-3 banner-mat">
		<img class="img-responsive" src="images/ba.jpg" alt="">
	</div>
	<div class="clearfix"> </div>
</div>
<!--content-->
<div class="content">
	<div class="container">
		<div class="content-top">
			<h1>新品上市</h1>
			<div class="content-top1">
				<div class="col-md-3 col-md2">
					<div class="col-md1 simpleCart_shelfItem">
						<a href="single.html">
							<img class="img-responsive" src="images/pi.png" alt="" />
						</a>
						<h3><a href="single.html">T恤</a></h3>
						<div class="price">
								<h5 class="item_price">￥300</h5>
								<a href="#" class="item_add">加入购物车</a>
								<div class="clearfix"> </div>
						</div>
					</div>
				</div>	
			<div class="col-md-3 col-md2">
					<div class="col-md1 simpleCart_shelfItem">
						<a href="single.html">
							<img class="img-responsive" src="images/pi2.png" alt="" />
						</a>
						<h3><a href="single.html">T恤</a></h3>
						<div class="price">
								<h5 class="item_price">￥300</h5>
								<a href="#" class="item_add">加入购物车</a>
								<div class="clearfix"> </div>
						</div>
						
					</div>
				</div>	
			<div class="col-md-3 col-md2">
					<div class="col-md1 simpleCart_shelfItem">
						<a href="single.html">
							<img class="img-responsive" src="images/pi4.png" alt="" />
						</a>
						<h3><a href="single.html">T恤</a></h3>
						<div class="price">
								<h5 class="item_price">￥300</h5>
								<a href="#" class="item_add">加入购物车</a>
								<div class="clearfix"> </div>
						</div>
						
					</div>
				</div>	
			<div class="col-md-3 col-md2">
					<div class="col-md1 simpleCart_shelfItem">
						<a href="single.html">
							<img class="img-responsive" src="images/pi1.png" alt="" />
						</a>
						<h3><a href="single.html">T恤</a></h3>
						<div class="price">
								<h5 class="item_price">￥300</h5>
								<a href="#" class="item_add">加入购物车</a>
								<div class="clearfix"> </div>
						</div>
						
					</div>
				</div>	
			<div class="clearfix"> </div>
			</div>	
			<div class="content-top1">
				<div class="col-md-3 col-md2">
					<div class="col-md1 simpleCart_shelfItem">
						<a href="single.html">
							<img class="img-responsive" src="images/pi3.png" alt="" />
						</a>
						<h3><a href="single.html">T恤</a></h3>
						<div class="price">
								<h5 class="item_price">￥300</h5>
								<a href="#" class="item_add">加入购物车</a>
								<div class="clearfix"> </div>
						</div>
						
					</div>
				</div>	
			<div class="col-md-3 col-md2">
					<div class="col-md1 simpleCart_shelfItem">
						<a href="single.html">
							<img class="img-responsive" src="images/pi5.png" alt="" />
						</a>
						<h3><a href="single.html">T恤</a></h3>
						<div class="price">
								<h5 class="item_price">￥300</h5>
								<a href="#" class="item_add">加入购物车</a>
								<div class="clearfix"> </div>
						</div>
						
					</div>
				</div>	
			<div class="col-md-3 col-md2">
					<div class="col-md1 simpleCart_shelfItem">
						<a href="single.html">
							<img class="img-responsive" src="images/pi6.png" alt="" />
						</a>
						<h3><a href="single.html">牛仔裤</a></h3>
						<div class="price">
								<h5 class="item_price">￥300</h5>
								<a href="#" class="item_add">加入购物车</a>
								<div class="clearfix"> </div>
						</div>
						
					</div>
				</div>	
			<div class="col-md-3 col-md2">
					<div class="col-md1 simpleCart_shelfItem">
						<a href="single.html">
							<img class="img-responsive" src="images/pi7.png" alt="" />
						</a>
						<h3><a href="single.html">T恤</a></h3>
						<div class="price">
								<h5 class="item_price">￥300</h5>
								<a href="#" class="item_add">加入购物车</a>
								<div class="clearfix"> </div>
						</div>
						
					</div>
				</div>	
			<div class="clearfix"> </div>
			</div>	
		</div>
	</div>
</div>
<!--//content-->
<!--footer-->
<div class="footer">
	<div class="container">
		
	<div class="footer-bottom">
		<div class="container">
				<div class="col-sm-3 footer-bottom-cate">
					
				</div>
				<div class="col-sm-3 footer-bottom-cate">
					<h6>新手指路</h6>
					<ul>
						<li><a href="#">新手专区</a></li>
						<li><a href="#">消费保障</a></li>
						<li><a href="#">24小时在线服务</a></li>
						<li><a href="#">新手指南</a></li>
						
					</ul>
				</div>
				<div class="col-sm-3 footer-bottom-cate">
					<h6>导航</h6>
					<ul>
						<li><a href="#">女装女鞋</a></li>
						<li><a href="#">男装男鞋</a></li>
						<li><a href="#">美妆护肤</a></li>
						<li><a href="#">家电数码</a></li>
						
					</ul>
				</div>
				<div class="col-sm-3 footer-bottom-cate cate-bottom">
					
				</div>
				<div class="clearfix"> </div>
				<p class="footer-class">Copyright &copy; 2016.Company name 版权所有.</p>
			</div>
	</div>
</div>

<!--//footer-->
</body>
</html>