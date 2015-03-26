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
	    <link rel="stylesheet" type="text/style" href="<%=basePath%>admin/css/stroe_mange_preview.css">
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
						
							<div class="main_bd store_preview" id="js_preview">
						
					        </div>
					
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
    <script type="text/javascript"  src="<%=basePath%>js/tmpl.min.js"></script>
	<script type="text/html" id="js_preview_tpl">
	<div class="msg_pre_view js_preview_container">
	<h3 class="frm_title">基本信息</h3>
	<ul>
		<li class="group">
			<span class="l title">门店名</span>
			<div class="msg">{%=o.shopname%}</div>
		</li>

		<li class="group">
			<span class="l title">类目</span>
			<div class="msg">{%=o.shopcategoryid%}</div>
		</li>
		<li class="group">
			<span class="l title">地址</span>
			<div class="msg">{%=o.location%}</div>
		</li>
	</ul>
</div>
<form class="store_build" id="js_store_build" novalidate="novalidate" >
	<div><input type="hidden" value="{%=o.id %}" name="tbShop.id"/></div>
    <div class="msg_pre_view js_preview_container">
	 <h3 class="frm_title">服务信息	
		<span class="frm_title_dec">服务信息审核中，完成前不可再次修改</span>
	 </h3>

	                   <div class="frm_control_group">
									<label for="" class="frm_label">
										电话
									</label>
									<div class="frm_controls">
										<span class="frm_input_box"> <input type="text"  value="{%=o.mobile%}"
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
										<span class="frm_input_box"> <input type="text"  value="{%=o.priceperperson%}"
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
										<span class="frm_input_box"> <input type="text"  value="{%=o.opentime%}"
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
												class="frm_input" name="closetime"  value="{%=o.closetime%}"> </span>
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
											<textarea class="frm_textarea"  name="tbShop.recommond"
												placeholder="">{%=o.recommond%}</textarea>
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
											<textarea class="frm_textarea"  name="tbShop.featuredservices" >{%=o.featuredservices%}</textarea>
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
											<textarea class="frm_textarea"  name="tbShop.summary" >{%=o.summary%}</textarea>
										</div>
										<p class="frm_tips">
											对品牌或门店的简要介绍
										</p>
									</div>
								</div>
 
</div>
  </form>
<div id="js_edit_container">
</div>
							</script>
	<script type="text/javascript">
	/*验证信息*/
	function  checkForm(){
		if($(checkMobile("#js_telephone")).val()){
			$("#telephone").html("<font style='color:red;'>请输入正确的电话号码</font>");
			return false;
		}else{
			$("#telephone").html("");
		}
		return true;
		
	}
	/*提交信息*/
	var id=<%=request.getParameter("state_id")%>;
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
	     			data:params,
	     			type: 'post',
	     		    url:'<%=basePath%>updateTBShop.action',
	     			error: function(){},
	     			success: function(data){
		   			var req = eval('('+data+')');
		   			var local=req.resultCode;
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
	/*显示详情信息*/
	 function bind_show_action(){
			$.ajax({
			async: true,
			cache: false,
			type: 'post',
		    url:'<%=basePath%>queryTBShop.action?tbShop.id='+id,
			error: function(){},
			success: function(data){
				var req = eval('('+data+')');
				$("#js_preview").html(tmpl("js_preview_tpl",req.resultInfo));
			}
      });
	}
	  /*加载完毕后*/
	  $(document).ready(function(e) {
	    	$("#store").addClass("selected");
            bind_show_action();
			bind_add_action();

	    	
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
	</script>
</html>
