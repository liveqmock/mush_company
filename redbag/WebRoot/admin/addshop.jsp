<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>My JSP 'addshop.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<link rel="stylesheet" type="text/style" href="<%=basePath%>admin/css/base.css">
		<link rel="stylesheet" type="text/css"   href="<%=basePath%>admin/css/alyout_head.css">
		<link rel="stylesheet" type="text/style" href="<%=basePath%>admin/css/lib22.css">
		<link rel="stylesheet" type="text/style" href="<%=basePath%>admin/css/store_manager.css">
		<link rel="stylesheet" type="text/style" href="<%=basePath%>admin/css/widget_add_img.css">
	</head>

	<body class="zh_CN">
	    <!-- header -->
		<jsp:include page="header.jsp"></jsp:include>
		<div id="body" class="body">
			<div id="js_container_box" class="container_box cell_layout side_l">
				<jsp:include page="menu.jsp"></jsp:include>

				<div class="col_main">
					<div class="main_hd main_hd_bd">
						<h2>
							门店管理
						</h2>


						<div class="title_tab" id="topTab"></div>
						<div class="page_nav title_bottom">
							<a
								href="<%=basePath%>admin/store_manage.jsp"
								class="icon_goback">返回上一层</a>
							<a
								href="<%=basePath%>admin/store_manage.jsp">门店管理</a>
							/ 创建新门店
						</div>
					</div>

					<div class="main_bd">
						<form class="store_build" id="js_store_build" novalidate="novalidate">
							<div class="frm_section">
								<h3 class="frm_title">
									基本信息
									<span class="frm_title_dec">基本信息提交后不可修改</span>
								</h3>
								<input type="hidden" name="sosomap_poi_uid"  id="js_sosomap_poi_uid">
								<div class="frm_control_group">
								
									<label for="" class="frm_label">
										门店名
									</label>
									<div class="frm_controls">
										<span class="frm_input_box"> <input type="text"
												class="frm_input" id="js_shopname" name="tbShop.shopname">
										</span>
										<p id="shopname"></p>
										<p class="frm_tips">
											门店名不得含有区域地址信息（如，北京市XXX公司）
										</p>
									</div>

								</div>
								<div class="frm_control_group">
									<label for="" class="frm_label">
										类目
									</label>
									<div class="frm_controls">
										<div id="js_category_dom">
											<div class="js_category_container">
												<div class="category_container_0 dropdown_menu" >
													<a href="javascript:;"
														class="btn dropdown_switch jsDropdownBt">
														<label class="jsBtLabel">
															美食
														</label><i class="arrow"></i>
													</a>
													<div class="dropdown_data_container jsDropdownList">
														<ul class="dropdown_data_list"  id="store_class">
														</ul>
													</div>
												</div>
												<div class="category_container_1 dropdown_menu">
													<a href="javascript:;"
														class="btn dropdown_switch jsDropdownBt"><label
															class="jsBtLabel">
															其它美食
														</label><i class="arrow"></i>
													</a>
													<div class="dropdown_data_container jsDropdownList"
														style="display: none;">
														<ul class="dropdown_data_list"  id="store_class_children">

														</ul>
													</div>
												</div>
											</div>
											<input type="hidden" name="category"
												class="js_category_value" value="美食,其它美食">
										</div>
									</div>

								</div>
								<div class="frm_control_group">
									<label for="" class="frm_label">
										地址
									</label>
									<div class="frm_control_row">
										<div class="frm_controls menu_controls">
											<div id="CitySelectContainer">
												<span class="dropdown_menu l js_province">
												<a href="javascript:;" class="btn dropdown_switch jsDropdownBt">
												<label class="jsBtLabel">请选择</label><i class="arrow"></i>
												  </a>
													<div class="dropdown_data_container jsDropdownList"  style="display: none;">
														<ul class="dropdown_data_list">
															<li class="dropdown_data_item ">
																<a onclick="return false;" href="javascript:;"
																	class="jsDropdownItem" data-value="" data-index="0"
																	data-name="请选择">请选择</a>
															</li>
														</ul>
													</div> 
												</span>
												<span class="dropdown_menu l js_city" style="display: none;"></span>
												<span class="dropdown_menu l js_district"
													style="display: none;"></span>
											</div>
											<input type="hidden" name="province" id="js_province">
											<input type="hidden" name="city" id="js_city">
											<input type="hidden" name="district" id="js_district">
											<input type="hidden" name="latitude" id="js_latitude">
											<input type="hidden" name="longitude" id="js_longitude">
										</div>
										<div class="frm_controls input_controls">
											<div class="input_btn group">
												<span class="frm_input_box l"> <input type="text"
														placeholder="输入详细地址，请勿重复填写省市区信息" name="address"
														id="searchSubmit" class="frm_input"> </span>
												<a class="btn btn_default l" id="js_search_pos"
													href="javascript:;">搜索标注</a>
												<div id="searchResultPanel" style="border:1px solid #C0C0C0;width:150px;height:auto; display:none;"></div>
												<a class="btn btn_default l dn" id="js_remark"
													href="javascript:;">修改</a>
											</div>
										</div>
									</div>
								</div>
								<div class="frm_control_group" id="js_mark_position">
									<label for="" class="frm_label">
										定位
									</label>
									<div class="frm_controls">
										<div class="map_panel">
											<div class="map_top group">

												<a href="javascript:;" class="btn btn_default btn_mark l"
													id="js_open_mark"><i class="ico"></i>标注新门店</a>
											</div>
											<div class="map crosspoint map_result" id="map">
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="frm_section">
								<h3 class="frm_title">
									服务信息
									<span class="frm_title_dec">该部分为公共编辑信息，每个添加了该门店的商户均可提交修改意见，并在审核后选择性采纳</span>
								</h3>
								<!--<div class="frm_control_group">
									<label for="" class="frm_label">
										门店图片
										<br>
										<span class="frm_label_dec">(选填)</span>
									</label>
									<div class="frm_controls">
										<p class="frm_tips">
											像素要求必须为640*340像素，支持.jpg .jpeg .bmp .png格式，大小不超过2M
										</p>
										<div id="js_upload_wrp">
											<div class="img_upload_wrp group">

												<div class="img_upload_box">
													<a class="img_upload_box_oper js_upload" id="js_pic_url"
														href="javascript:"> <i class="icon20_common add_gray">
															上传 </i> </a>
												</div>
												<div class="upload_box">
    <div class="upload_area">
        <a class="create_access_primary js_upload" id="js_pic_url" href="javascript:">
            <i class="icon20_common add_gray">
                上传            </i>
        </a>
    </div>
</div>-->

												<!-- <div class="img_upload_wrp img_upload_preview_box js_upload_preview js_pics"> -->

												<!-- </div> -->
												<!--
<div class="upload_preview js_upload_preview">
    <div class="pics_wrp js_pics">
        
    </div>
</div>
												<div class="js_pager"></div>
											</div>
										</div>
										<input type="hidden" id="js_pic_url_hidden" name="pic_url">
									</div>
								</div>-->

								<div class="frm_control_group">
									<label for="" class="frm_label">
										电话
									</label>
									<div class="frm_controls">
										<span class="frm_input_box"> <input type="text"
												class="frm_input" name="tbShop.mobile" id="js_telephone">
										</span>
										<p id="telephone"></p>
										<p class="frm_tips">
											固定电话需加区号；区号、分机号均用“-”连接
										</p>
									</div>

								</div>
								<div class="frm_control_group">
									<label for="" class="frm_label">
										人均价格
										<br>
										<span class="frm_label_dec">(选填)</span>
									</label>
									<div class="frm_controls">
										<span class="frm_input_box"> <input type="text"
												class="frm_input" name="tbShop.priceperperson"> </span>
										<p class="frm_tips">
											大于零的整数，须如实填写，默认单位为人民币
										</p>
									</div>
								</div>
								<div class="frm_control_group">
									<label for="" class="frm_label">
										营业时间始
										<br>
										<span class="frm_label_dec">(选填)</span>
									</label>
									<div class="frm_controls">
										<span class="frm_input_box"> <input type="text"
												class="frm_input" name="opentime"> </span>
									</div>
									<p class="frm_tips">
										如，10:00
									</p>
								</div>
								<div class="frm_control_group">
									<label for="" class="frm_label">
										营业时间止
										<br>
										<span class="frm_label_dec">(选填)</span>
									</label>
									<div class="frm_controls">
										<span class="frm_input_box"> <input type="text"
												class="frm_input" name="closetime"> </span>
									</div>
									<p class="frm_tips">
										如，21:00
									</p>
								</div>
								<div class="frm_control_group">
									<label for="" class="frm_label">
										推荐
										<br>
										<span class="frm_label_dec">(选填)</span>
									</label>
									<div class="frm_controls">
										<div class="frm_textarea_box">
											<textarea class="frm_textarea" name="tbShop.recommond"
												placeholder=""></textarea>
										</div>
										<p class="frm_tips">
											如，推荐菜，推荐景点，推荐房间
										</p>
									</div>
								</div>
								<div class="frm_control_group">
									<label for="" class="frm_label">
										特色服务
										<br>
										<span class="frm_label_dec">(选填)</span>
									</label>
									<div class="frm_controls">
										<div class="frm_textarea_box">
											<textarea class="frm_textarea" name="tbShop.featuredservices" placeholder=""></textarea>
										</div>
										<p class="frm_tips">
											如，免费停车，WiFi
										</p>
									</div>
								</div>
								<div class="frm_control_group">
									<label for="" class="frm_label">
										简介
										<br>
										<span class="frm_label_dec">(选填)</span>
									</label>
									<div class="frm_controls">
										<div class="frm_textarea_box">
											<textarea class="frm_textarea" name="tbShop.summary"  placeholder="" ></textarea>
										</div>
										<p class="frm_tips">
											对品牌或门店的简要介绍
										</p>
									</div>
								</div>
							</div>
						</form>
				
							<div class="tool_bar border with_form tc">
								<span class="btn btn_input btn_primary"><button
										id="js_submit" type="button">
										提交
									</button> </span>
							</div>
						
					</div>
				</div>
			</div>
		</div>
		<jsp:include page="footer.jsp"></jsp:include>
	</body>
	<script type="text/javascript" src="<%=basePath %>js/jquery-1.8.3.min.js"></script>
	<script type="text/javascript"  src="<%=basePath%>admin/js/util.js"></script>
	<script type="text/javascript" src="http://api.map.baidu.com/api?ak=6f625c6afa8432c9e6bdee70b21f10c2&v=2.0"></script>
    <script type="text/javascript"  src="<%=basePath%>js/tmpl.min.js"></script>
	 <!--jquery模板 -美食---------------------------------------->
		<script type="text/x-tmpl" id="store_list" >
         {% for (var i=0; i< o.length ;i++) { %}
         <li class="dropdown_data_item ">
		   <a onclick="return false;" href="javascript:;"  class="jsDropdownItem" data-value=""  data-index="{%=o[i].id%}"  data-name="{%=o[i].categoryname%}">{%=o[i].categoryname%}</a>
		 </li>
         {%}%}         
        </script>
       <!--jquery模板 -美食子类---------------------------------------->
		<script type="text/x-tmpl" id="store_list_children" >
         {% for (var i=0; i< o.length ;i++) { %}
         <li class="dropdown_data_item ">
		   <a onclick="return false;" href="javascript:;"  class="jsDropdownItem" data-value=""  data-index="{%=o[i].id%}"  data-name="{%=o[i].categoryname%}">{%=o[i].categoryname%}</a>
		 </li>
         {%}%}        
        </script>
        
	<script type="text/javascript">
	function  checkForm(){
		if(isNull($("#js_shopname").val()) ){
			$("#shopname").html("<font style='color:red;'>门店名称不能为空</font>");
			return false;
		}else{
			$("#telephone").html("");
		}
		if($(checkMobile("#js_telephone")).val()){
			$("#telephone").html("<font style='color:red;'>请输入正确的电话号码</font>");
			return false;
		}else{
			$("#telephone").html("");
		}
		return true;
		
	}
	function bind_add_action()
	{ 
		$("#js_submit").unbind("click");
		$("#js_submit").bind("click",function(){
			if(checkForm()){
			    var params = $("form[id=js_store_build]").serialize();
			    alert(params);
					$.ajax({
	     			async: true,
	     			cache: false,
	     			data : params,
	     			type: 'post',
	     		    url:'<%=basePath%>insertTBShop.action',
	     			error: function(){},
	     			success: function(data){
		   			var req = eval('('+data+')');
		   			var local=req.resultCode;
		   			var info=req.resultInfo;
		   				if(local==1){
		   					window.location.href="<%=basePath%>admin/store_manage.jsp";
		   				}else{
		   					alert(info);
		   				}
	     			}
	     		 });
			}
    	});
		
	}
	function bind_class_action(){
		$(".category_container_0").unbind("click");
		$(".category_container_0").bind("click",function(){
   			$(this).children("div").show();
   			$(this).children("div").addClass("open");
		});
		$(".category_container_1").unbind("click");
		$(".category_container_1").bind("click",function(){
   			$(this).children("div").show();
   			$(this).children("div").addClass("open");
		});
		
		$("#store_class").find("a").bind("click",function(){
			var id=$(this).attr("data-index");
   			$("#store_class").parent().hide();
   			queryChild(id);
		});
		
	}
	function init_data_async(){
		$.ajax({
 			async: true,
 			cache: false,
 			type: 'post',
 		    url: '<%=basePath%>queryTBShopYCategory.action?parentid=0',
 			error: function(){},
 			success: function(data){
   				var req = eval('('+data+')');
   				$("#store_class").append(tmpl("store_list",req.resultInfo));
   				bindSelectedItemAction();
 			}
 		 });
		
	}
	function queryChild (id){
		$.ajax({
	 			async: true,
	 			cache: false,
	 			type: 'post',
	 		    url:'<%=basePath%>queryTBShopECategory.action?shopCategoryId='+id,
	 			error: function(){},
	 			success: function(data){
	   				var req = eval('('+data+')');
	   				$("#store_class_children").append(tmpl("store_list_children",req.resultInfo));
	 			}
	 		 });
	}
	
	  $(document).ready(function(e) {
	    	$("#store").addClass("selected");
	    	/*获取列表*/
	    	init_data_async();
			bind_add_action();
			//bind_class_action();
	    	bindSelectedItemAction();
	    });
	</script>

	<script type="text/javascript">
	// 百度地图API功能
	function G(id) {
		return document.getElementById(id);
	}
	
		var map = new BMap.Map("map");    // 创建Map实例
		map.centerAndZoom(new BMap.Point(116.404, 39.915), 11);  // 初始化地图,设置中心点坐标和地图级别
		//map.addControl(new BMap.MapTypeControl());   //添加地图类型控件
		map.setCurrentCity("北京");          // 设置地图显示的城市 此项是必须设置的
		map.enableScrollWheelZoom(true);     //开启鼠标滚轮缩放
		 // 添加带有定位的导航控件
		var navigationControl = new BMap.NavigationControl({
		    // 靠左上角位置
		    anchor: BMAP_ANCHOR_TOP_LEFT,
		    // LARGE类型
		    type: BMAP_NAVIGATION_CONTROL_LARGE,
		    // 启用显示定位
		    enableGeolocation: true
		});
		map.addControl(navigationControl);
		
		
	/*var ac = new BMap.Autocomplete(    //建立一个自动完成的对象
		{"input" : "searchSubmit"
		,"location" : map
	});

	ac.addEventListener("onhighlight", function(e) {  //鼠标放在下拉列表上的事件
		var str = "";
		var _value = e.fromitem.value;
		var value = "";
		if (e.fromitem.index > -1) {
			value = _value.province +  _value.city +  _value.district +  _value.street +  _value.business;
		}    
		str = "FromItem<br />index = " + e.fromitem.index + "<br />value = " + value;
		
		value = "";
		if (e.toitem.index > -1) {
			_value = e.toitem.value;
			value = _value.province +  _value.city +  _value.district +  _value.street +  _value.business;
		}    
		str += "<br />ToItem<br />index = " + e.toitem.index + "<br />value = " + value;
		G("searchResultPanel").innerHTML = str;
	});
	var myValue;
	ac.addEventListener("onconfirm", function(e) {    //鼠标点击下拉列表后的事件
	var _value = e.item.value;
		myValue = _value.province +  _value.city +  _value.district +  _value.street +  _value.business;
		G("searchResultPanel").innerHTML ="onconfirm<br />index = " + e.item.index + "<br />myValue = " + myValue;
		
		setPlace();
	});

	function setPlace(){
		map.clearOverlays();    //清除地图上所有覆盖物
		function myFun(){
			var pp = local.getResults().getPoi(0).point;    //获取第一个智能搜索的结果
			map.centerAndZoom(pp, 18);
			map.addOverlay(new BMap.Marker(pp));    //添加标注
		}
		var local = new BMap.LocalSearch(map, { //智能搜索
		  onSearchComplete: myFun
		});
		local.search(myValue);
	}*/
	var marker = null;
	$("#js_search_pos").bind("click",function(){
	map.clearOverlays();    //清除地图上所有覆盖物
		function myFun(){
			var pp = local.getResults().getPoi(0).point;    //获取第一个智能搜索的结果
			//var last=JSON.stringify(pp); //将JSON对象转化为JSON字符
			//alert(pp.lng);
			//alert(pp.lat);
			//alert(last);
			map.centerAndZoom(pp, 18);
			marker = new BMap.Marker(pp);
			map.addOverlay(marker);    //添加标注
			marker.enableDragging();
		}
		var local = new BMap.LocalSearch(map, { //智能搜索
		  onSearchComplete: myFun
		});
		local.search($("#searchSubmit").val());
	});
	
	$("#js_open_mark").bind("click",function(){
		/*if(marker){
			marker.enableDragging();
		}
		else{
			marker.disableDragging();
		}*/
		if(marker){
			var p = marker.getPosition();  //获取marker的位置
			alert("marker的位置是" + p.lng + "," + p.lat);   
		}
	});
	
	
	function bindSelectedItemAction(){
		$('.dropdown_menu').unbind('click');
		$('.dropdown_menu').bind('click',function(){
			if($(this).children('.jsDropdownBt').parent().hasClass('open')){
				$(this).children('.jsDropdownBt').parent().removeClass('open');
				$(this).children('.jsDropdownList').css('display','none');
			}
			else{
				if($('.jsDropdownBt').parent().hasClass('open')){
					$('.jsDropdownBt').parent().removeClass('open');
					$('.jsDropdownList').css('display','none');
				}
				$(this).children('.jsDropdownBt').parent().addClass('open');
				$(this).children('.jsDropdownList').css('display','block');
			}
		});
	
		$('.jsDropdownItem').unbind('click');
		$('.jsDropdownItem').bind('click',function(){
			$(this).parents('.dropdown_menu').children('.jsDropdownBt').children('.jsBtLabel').html($(this).attr('data-name'));
			//event.stopPropagation();
		});
	}
	</script>
</html>
