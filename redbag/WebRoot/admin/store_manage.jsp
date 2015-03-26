<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>门店管理</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="icon" type="image/png" href="<%=basePath%>admin/images/logo.ico">
	 <!-- 头部样式 -->
    <link rel="stylesheet" type="text/css" href="<%=basePath%>admin/css/base.css">
    <!-- 头部样式 -->
	<link rel="stylesheet" type="text/css" href="<%=basePath%>admin/css/alyout_head.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>admin/css/store_list.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>admin/css/pagination.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>admin/css/lib22.css">
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
				<div class="col_main" >

					<div class="main_hd main_hd_bd">
						<h2>
							门店管理
						</h2>

					</div>

					<div class="main_bd"  style="width:900px; overflow: h">
						<div class="sub_title_bar white group">
							<div class="sub_title_bar_r">
								<a class="btn btn_primary r"  href="<%=basePath%>admin/addshop.jsp">新建门店</a>
							</div>

							<div id="CitySelectContainer">
								<div class="dropdown_menu l js_province">
									<a href="javascript:;" class="btn dropdown_switch jsDropdownBt"><label
											class="jsBtLabel">
											北京市
										</label><i class="arrow"></i>
									</a>
									<div class="dropdown_data_container jsDropdownList"
										style="display: none;">
										<ul class="dropdown_data_list">
											<li class="dropdown_data_item ">
												<a onclick="return false;" href="javascript:;"
													class="jsDropdownItem" data-value="澳门特别行政区" data-index="33"
													data-name="澳门特别行政区">澳门特别行政区</a>
											</li>


										</ul>
									</div>
								</div>
								<div class="dropdown_menu l js_city">
									<a href="javascript:;" class="btn dropdown_switch jsDropdownBt"><label
											class="jsBtLabel">
											东城区
										</label><i class="arrow"></i>
									</a>
									<div class="dropdown_data_container jsDropdownList"
										style="display: none;">
										<ul class="dropdown_data_list">
											<li class="dropdown_data_item ">
												<a onclick="return false;" href="javascript:;"
													class="jsDropdownItem" data-value="东城区" data-index="0"
													data-name="东城区">东城区</a>
											</li>
										</ul>
									</div>
								</div>
								<div class="dropdown_menu l js_district" style="display: none;"></div>
							</div>
							<span class="frm_input_box search append"> <a
								href="javascript:void(0);" id="js_search"
								class="frm_input_append"> <i
									class="icon16_common search_gray">搜索</i>&nbsp; </a> <input
									type="text" id="js_keyword" placeholder="请输入门店名称或地址" value=""
									class="frm_input"> </span>

						</div>
						<div class="table_wrp" id="js_search_result">
							<table class="table" cellspacing="0">
								<thead class="thead">
									<tr>
										<th class="table_cell name">
											<div class="td_panel tl js_validity_faq" data-x="-64"
												data-y="-10">
												门店名称&nbsp;
												<i class="icon_msg_mini ask"></i>
											</div>
										</th>
										<th class="table_cell adr">
											<div class="td_panel tl">
												门店地址
											</div>
										</th>

										<th class="table_cell state">
											<div class="td_panel tl">
												<div class="dropdown_menu" id="js_filter_state">
													<a href="javascript:;"
														class="btn dropdown_switch jsDropdownBt"><label
															class="jsBtLabel">
															全部
														</label><i class="arrow"></i>
													</a>
													<div class="dropdown_data_container jsDropdownList"
														style="display: none;">
														<ul class="dropdown_data_list">


															<li class="dropdown_data_item ">
																<a onclick="return false;" href="javascript:;"
																	class="jsDropdownItem" data-value="" data-index="0"
																	data-name="全部">全部</a>
															</li>

															<li class="dropdown_data_item ">
																<a onclick="return false;" href="javascript:;"
																	class="jsDropdownItem" data-value="2" data-index="1"
																	data-name="审核中">审核中</a>
															</li>

															<li class="dropdown_data_item ">
																<a onclick="return false;" href="javascript:;"
																	class="jsDropdownItem" data-value="3" data-index="2"
																	data-name="生效">生效</a>
															</li>

															<li class="dropdown_data_item ">
																<a onclick="return false;" href="javascript:;"
																	class="jsDropdownItem" data-value="4" data-index="3"
																	data-name="审核失败">审核失败</a>
															</li>


														</ul>
													</div>
												</div>
											</div>
										</th>
										<th class="table_cell oper">
											<div class="td_panel">
												操作
											</div>
										</th>
									</tr>
								</thead>
								<tbody class="tbody" id="store_count"  style="height:500px; border:1px solid red;">
						
								</tbody>
							</table>
							<div class="pagination_wrp" id="js_pager"></div>
						</div>
					</div>
					
		

				</div>
				<!-- 右侧end -->
			</div>
		</div>
		<jsp:include page="footer.jsp"></jsp:include>
		 <!--jquery模板 ----------------------------------------->
		<script type="text/x-tmpl" id="store_list" >
         {% for (var i=0; i< o.length ;i++) { %}
               <tr   data-id="{%=o[i].id%}">
                       <td class="table_cell name">
								<div class="td_panel tl">
									{%=o[i].shopname%}
								</div>
						</td>
						<td class="table_cell adr">
								<div class="td_panel tl">
									{%=o[i].location%}	
								</div>
						</td>
						<td class="table_cell state">
						       <div class="td_panel tl">
										<span class="fail pass"><i></i>审核中</span>
							  </div>
						</td>
						<td class="table_cell oper">
								<div class="td_panel">
				                  <a data-x="-135" data-storeid="{%=o[i].id%}" data-state="3" href="javascript:void(0);" class="js_delete">删除</a>
			                      <a href="<%=basePath%>admin/stroe_update.jsp?state_id={%=o[i].id%}">详情</a>
			                   </div>
						</td>
		   </tr>
         {%}%}         
        </script>
	</body>
		<script type="text/javascript"  src="<%=basePath%>js/jquery-1.9.1.js"></script>
		<script type="text/javascript"  src="<%=basePath%>js/tmpl.min.js"></script>
	    <script type="text/javascript"  src="<%=basePath%>admin/js/drawing.js"></script>
		<script type="text/javascript">
		function init_data_async(){
	    	$.ajax({//分类
	   			async: true,
	   			cache: false,
	   			type: 'post',
	   			url: '<%=basePath %>queryTbShopModelList.action',
	   			error: function(){},
	   			success: function(data){
		 			var req = eval('('+data+')');
		 			if(req.resultCode == 1){
			 			$("#store_count").html(tmpl("store_list",req.resultInfo));
			 			/*绑定删除事件*/
			 			bind_delete_action();
		 			}
		 			else{
		 				alert("load data failed.");
		 			}
	   			}
	   		});
		}
		
		function bind_delete_action()
		{
			$(".js_delete").unbind("click");
			$(".js_delete").bind("click",function(){
				if(confirm("确定删除此数据?")){
	    	    var id=$(this).attr("data-storeid");
	    	    var delNode = $(this).parent().parent().parent();
	    		$.ajax({//分类
		   			async: true,
		   			cache: false,
		   			type: 'post',
		   			url: '<%=basePath %>deleteTBShop.action?tbShop.id='+id,
		   			error: function(){},
		   			success: function(data){
		   				$(delNode).remove();
		   			}
		   		});
				}
	    	});
			
		}
		
	    $(document).ready(function(e) {
	    	$("#store").addClass("sel");
	    	/*获取列表*/
			init_data_async();
	    });
		</script>

</html>
