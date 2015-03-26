<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>设置修改密码</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
    <!-- 初始化 //菜单-->
	<link rel="stylesheet" type="text/css" href="<%=basePath%>admin/css/base.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>admin/css/alyout_head.css">
    <link rel="stylesheet" href="<%=basePath%>themes/default/default.css" />
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
							商家信息
						</h2>
					</div>
					<div class="main_bd">
						<div class="account_setting_area">
							<ul>
								<li class="account_setting_item">
									<h4>
									    商家名称
									</h4>
									
									 <span class="frm_input_box"> <input
												id="currentPassword" name="currentPassword" type="password"
												class="frm_input" onpaste="return false"> </span>
										<p class="frm_tips" id="old_paw">

										</p>
								
								</li>
								<li class="account_setting_item">
									<h4>
										商家LOGO
									</h4>
							
        
					                   <img class="meta_pic" src=""  style="width:150px;height:150px; vertical-align: middle;"> 
					                    
					                   <input type="button" id="image3" value="选择图片"   style="padding:0px 20px; height:35px;"/>（本地上传）
					         
								</li>
							</ul>
							<div class="tool_bar border with_form">
									<span class="btn btn_loading btn_primary btn_input">
										<button id="savePassWord" type="button">
											保存
										</button> 
									</span>
							</div>
						</div>

					</div>
			     
			</div>
		    <!-- 右侧end -->
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
<script type="text/javascript"  src="<%=basePath%>js/jquery-1.8.3.min.js"></script>
<script type="text/javascript"  src="<%=basePath%>js/jquery.cookies.2.2.0.min.js"></script>
<script type="text/javascript"  src="<%=basePath%>admin/js/util.js"></script>
<script src="<%=basePath%>js/kindeditor-all-min.js"></script>
<script src="<%=basePath%>js/lang/zh_CN.js"></script>
		<script type="text/javascript">
			function check_seller(){ }
		    $(document).ready(function(e) {
		    	$("#seller").addClass("sel");
		    });
		</script>
		<script type="text/javascript">  
        
        KindEditor.ready(function(K) {
				var editor = K.editor({
					uploadJson : 'jsp/upload_json.jsp',
                	fileManagerJson : 'jsp/file_manager_json.jsp',
					allowFileManager : true
				});
				K('#image3').click(function() {
					editor.loadPlugin('image', function() {
						editor.plugin.imageDialog({
							showRemote : false,
							imageUrl : K('#url3').val(),
							clickFn : function(url, title, width, height, border, align) {
								K('#url3').val(url);
								K('.meta_pic').attr('src',url);
								editor.hideDialog();
							}
						});
					});
				});
			});
    </script>
</html>
