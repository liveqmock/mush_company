<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>门店Info</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>admin/css/base.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>admin/css/alyout_head.css">
	<link rel="stylesheet" type="text/style" href="<%=basePath%>admin/css/stroe_mange_preview.css">
    <link rel="stylesheet" type="text/style" href="<%=basePath%>admin/css/lib22.css">
	<link rel="stylesheet" type="text/style" href="<%=basePath%>admin/css/store_manager.css">
	<link rel="stylesheet" type="text/style" href="<%=basePath%>admin/css/widget_add_img.css">
  </head>
  
  <body>
 <!-- header -->
		<jsp:include page="header.jsp"></jsp:include>
	    <!-- header  end-->
		<div id="body" class="body page_shaketv">
			<div id="js_container_box" class="container_box cell_layout side_l"  style="clear: both;">
			    <!-- 左侧 -->
				<jsp:include page="menu.jsp"></jsp:include>
				<!-- 左侧end -->
				<!-- 右侧 -->
				<div class="col_main">

					<div class="main_hd main_hd_bd">
						<h2>
							门店管理
						</h2>
						<div class="title_tab" id="topTab"></div>
						<div class="page_nav title_bottom">
							<a href="<%=basePath%>admin/store_manage.jsp" class="icon_goback">返回上一层</a>
							<a href="<%=basePath%>admin/store_manage.jsp">门店管理</a>/ 详情
						</div>
						<div class="highlight_box" id="js_detail_head">
							<div class="desc">
								<p class="store_name">
									中投互动科技有限公司(回龙观分公司)

								</p>
								<span class="state warning">审核中，预计5个工作日内完成</span>
							</div>
						</div>
					</div>
					
<script type="text/javascript"  src="<%=basePath%>js/jquery-1.9.1.js"></script>
<script type="text/javascript"  src="<%=basePath%>js/tmpl.min.js"></script>
<script type="text/javascript">

             function bind_show_action(){
                var id=<%=request.getParameter("state_id")%>;
				$.ajax({
     			async: true,
     			cache: false,
     			type: 'post',
     		    url:'<%=basePath%>queryTBShop.action?tbShop.id='+id,
     			error: function(){},
     			success: function(data){
     				alert(data);
	   				var req = eval('('+data+')');
	   				$("#js_preview").html(tmpl("js_preview_tpl",req.resultInfo));
     			}
	         });
	
}
  $(document).ready(function(e) {
    	$("#store").addClass("selected");
    	/*获取列表*/
		bind_show_action();
    	
    });
</script>
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
<div class="msg_pre_view js_preview_container">
	<h3 class="frm_title">服务信息	
		<span class="frm_title_dec">服务信息审核中，完成前不可再次修改</span>
	</h3>
	<ul>
		<li class="group">
			<span class="l title">电话</span>
			<div class="msg">{%=o.mobile%}</div>
		</li>
		<li class="group">
			<span class="l title">人均价格</span>
			<div class="msg">{%=o.priceperperson%}</div>
		</li>
		<li class="group">
			<span class="l title">营业时间始</span>
			<div class="msg">{%=o.opentime%}</div>
		</li>
        <li class="group">
			<span class="l title">营业时间止</span>
			<div class="msg">{%=o.closetime%}</div>
		</li>
		<li class="group">
			<span class="l title">推荐</span>
			<div class="msg">{%=o.recommond%}</div>
		</li>
		<li class="group">
			<span class="l title">特色服务</span>
			<div class="msg">{%=o.featuredservices%}</div>
		</li>
		<li class="group">
			<span class="l title">简介</span>
			<div class="msg">{%=o.summary%}</div>
        </li>
     </ul>
</div>
<div id="js_edit_container">
</div>
</script>
	
					<div class="main_bd store_preview" id="js_preview">
						
					</div>
				</div>
				<!-- 右侧end -->
			</div>
		</div>
		<jsp:include page="footer.jsp"></jsp:include>
  </body>
  <script type="text/javascript" src="http://api.map.baidu.com/api?type=quick&ak=6f625c6afa8432c9e6bdee70b21f10c2&v=1.0"></script>
	<script type="text/javascript">
		var map = new BMap.Map("map");
		map.centerAndZoom(new BMap.Point(116.404, 39.915), 11);
		map.addControl(new BMap.ZoomControl());
		var local = new BMap.LocalSearch(map, {
			renderOptions:{map: map}
		});
		local.search("景点");
	</script>
</html>
