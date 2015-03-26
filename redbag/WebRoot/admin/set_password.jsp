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
			     <div class="main_hd">
						<h2>
							商家信息
						</h2>
					</div>
				    <div class="main_bd  password_set">
					<div class="info_box">
						<div class="form_wrp">
							<form action="return:false" class="form" id="login"  enctype="multipart/form-data">
								<div class="frm_control_group group_password"  >
									<label for="" class="frm_label">
										当前密码
									</label>
									<div class="frm_controls" >
										<span class="frm_input_box"> 
										     <input id="currentPassword" name="currentPassword" type="password" class="frm_input"> 
										</span>
										<p id="old_paw"  class="frm_msg_pas fail"  style="display: none;">密码长度不足6位，或者使用了非法字符</p>
									</div>
								</div>
								<div class="frm_control_group  group_password">
									<label for="" class="frm_label">
										新密码
									</label>
									<div class="frm_controls">
										<span class="frm_input_box"> 
										   <input name="newPassword" id="newPassword" type="password" class="frm_input">
										</span>
										<p id="news_paw"  class="frm_msg_pas fail" style="display: none;">密码长度不足6位，或者使用了非法字符</p>
										<p class="frm_tips">字母、数字或者英文符号，最短6位，区分大小写</p>
									</div>
								</div>
								<div class="tool_bar border with_form">
									<span class="btn btn_loading btn_primary btn_input">
										<button id="savePassWord" type="button">
											保存
										</button> 
									</span>
								</div>
							</form>
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
	<script type="text/javascript">
	/*验证方法*/
	function checkpre(){
	        	 if(isNull($("#mobile").val())||$("#mobile").val().length<6||isNumberOr_Letter($("#mobile").val())==false){
	        		 $("#old_paw").html("<font style='color:red;'>密码长度不足6位，或者使用了非法字符</font>");
	        		 return false;
	        	 }else{
	        		 $("#old_paw").html(""); 
	        	 }
	        	 if(isNull($("#password").val())||$("#password").val().length<6||isNumberOr_Letter($("#password").val())==false){

	        		 $("#news_paw").show();
	        		 return false; 
	        		 
	        	 }else{
	        		 $("#news_paw").hide();
	        	 }
	        	 return true;
	        	 
	         }
    /*提交方法*/
    function chengePassword(){
    	 $("#savePassWord").bind("click",function(){
       		if(checkpre()){
       			alert(1);
       			var params = $("form[id=login]").serialize();
       			var currentPassword=$("#currentPassword").val();
       			var newPassword=$("#newPassword").val();
               	$.ajax({
              			async: true,
              			cache: false,
              			type: 'post',
              		    url:'<%=basePath %>/updatePassword.action?password=currentPassword&newpassword=newPassword',
              			error: function(){},
              			success: function(data){
            			var req = eval('('+data+')');
            			var local=req.resultCode;
            			var info=req.resultInfo;
   	     				if(local==1){
   	     				}else{
   	     					alert(info);
   	     				}
              			}
              		});
       		}
       	});
    	
    }
    /*加载完成*/
    $(document).ready(function(e) {
    	   /*左侧导航栏目添加样式*/
	    	$("#password").addClass("sel");
	    	chengePassword();
    	 
      });
	</script>
</html>
