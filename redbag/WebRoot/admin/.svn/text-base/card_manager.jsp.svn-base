<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>卡券管理</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
    <link rel="stylesheet" type="text/css" href="<%=basePath%>admin/css/base.css">
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
				<div class="col_main">

				 <div class="main_hd main_hd_bd">
						<h2>
							卡券管理
						</h2>

					</div>

					
				</div>
				<!-- 右侧end -->
			</div>
		</div>
		<jsp:include page="footer.jsp"></jsp:include>
	</body>
		<script type="text/javascript"  src="<%=basePath%>js/jquery-1.9.1.js"></script>
		<script type="text/javascript"  src="<%=basePath%>js/tmpl.min.js"></script>
		<script type="text/html" id="js_result_tpl">
<table class="table" cellspacing="0">
	<thead class="thead thead_dropdown">
		<tr>
			<th class="table_cell kind"><div class="td_panel tl" id="js_filter_type">卡券类型</div></th>
			<th class="table_cell name"><div class="td_panel tl">卡券名称</div></th>
			<th class="table_cell time"><div class="td_panel tl">卡券有效期</div></th>
			<th class="table_cell state"><div class="td_panel td_dropdown_menu"><div class="dropdown_menu" id="js_filter_state"></div></div></th>
			<th class="table_cell store"><div class="td_panel">库存</div></th>
			<th class="table_cell oper"><div class="td_panel tr">操作</div></th>
		</tr>
	</thead>
	<tbody class="tbody">
	{if !data.length}
		<tr>
			<td class="empty_tips" colspan="6">
							{if state}无该状态卡券，请查看其他状态卡券或点击{else}暂无卡券，点击{/if}
							<a href="javascript:void(0);" id="js_add_card_link">添加免费券</a>
			</td>
		</tr>
	{else}
	{each data as card i}
		<tr>
			<td class="table_cell kind"><div class="td_panel tl">{convert_type card.type}</div></td>
            <td class="table_cell name {if card.is_intercomm}card_intercomm {/if}{if card.can_shake}card_shake{/if}"><div class="td_panel tl">{card.title}
                {if card.is_intercomm}<i class="icon18 ic_intercomm"></i> {/if} {if card.can_shake}<i class="icon18 ic_shake"></i>{/if}
            </div></td>
			<td class="table_cell time"><div class="td_panel tl">
				{validtime card 'YYYY-MM-DD'}
			</div></td>
			<td class="table_cell state">
				<div class="td_panel tl">
					<span class="fail pass"><i></i>{convert_state card.status}</span>
					{if card.status == 2}
					<i data-cid='{card.id}' data-x="-132" data-y="88" class="icon_msg_mini ask js_refuse_reason"></i>
					{/if}
				</div>
			</td>
			<td class="table_cell store">
				<div class="td_panel">{card.quantity}
                
                {if !card.is_from_intercomm}
                <a href="javascript:;" class="icon_edit js_modify_quantity" data-cid="{card.id}" data-actionid="20" data-x="-126">&#xe600;</a>
                {/if}
				</div>
			</td>
			<td class="table_cell oper"><div class="td_panel tr">
			
			{if !card.is_expire && (card.status == 3||card.status==6)}
            <a data-cid="{card.id}" href="javascript:void(0);" class="js_sendout">投放</a>
			{/if}
			<a href="/merchant/electroniccardmgr?action=detail&t=cardticket/detail&cardid={card.id}&lang=zh_CN&token=1659342359&flag=">详情</a>
			{if card.status==6}
				<a href="/merchant/cardstat?action=carddetailstatpage&t=cardticket/overview_detail&card_id={card.id}&ispay=&lang=zh_CN&token=1659342359" id="js_report">报表</a>
            {/if}
            {if !card.is_from_intercomm}
			{if card.status == 1 || card.status == 2 || card.status==3||card.status==8}
				<a data-cid="{card.id}" href="javascript:void(0);" data-x="-126" class="js_delete_card">删除</a>
            {/if}
            {/if}
			</td>
		</tr>
	{/each}
	{/if}
	</tbody>
</table>
<div class="pagination_wrp" id="js_pager"></div>
</script>
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
			 			$("#js_search_result").html(tmpl("js_result_tpl",req.resultInfo));
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
	    	$("#card").addClass("sel");
	    	/*获取列表*/
			init_data_async();
	    });
		</script>

</html>
