<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>注册</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
    <link  rel="stylesheet" type="text/style" href="<%=basePath%>admin/css/base.css" >
    <!-- 头部样式 -->
    <link  rel="stylesheet" type="text/style" href="<%=basePath%>admin/css/alyout_head.css" >
    <!-- 注册内容 -->
	<link  rel="stylesheet" type="text/style" href="<%=basePath%>admin/css/page_register.css" >
	<!-- 绿色导航 -->
	<link  rel="stylesheet" type="text/style" href="<%=basePath%>admin/css/processor_bar.css" >
	<link rel="stylesheet" href="<%=basePath%>themes/default/default.css" />
  </head>
	<body class="zh_CN">
	    <jsp:include page="header.jsp"></jsp:include>
		<div id="body" class="body page_simple ">
			<div class="container_box">
				<div class="col_main">
					<div class="main_bd">
						<div id="stepItems">
							<ul class="processor_bar grid_line">

								<li class="step grid_item size1of5 current">
									<h4>
										1 基本信息
									</h4>
								</li>

								<li class="step grid_item size1of5 next">
									<h4>
										2 商家信息
									</h4>
								</li>
<!-- 
								<li class="step grid_item size1of5 nnext">
									<h4>
										3 选择类型
									</h4>
								</li>

								<li class="step grid_item size1of5 nnext">
									<h4>
										4 信息登记
									</h4>
								</li>

								<li class="no_extra step grid_item size1of5 nnext">
									<h4>
										5 公众号信息
									</h4>
								</li> -->

							</ul>
						</div>
						<div id="register">
							<div class="info_box">
								<div class="form_wrp">
									<form action="return:false" class="form" id="login">
									 <div  id="register_all">
									   <div>
										 <fieldset class="frm_fieldset">
											<div class="frm_title mini_tips">
												<i class="icon_msg_mini info"></i>每个手机号仅能申请一个帐号
											</div>
										    <div class="frm_control_group">
												<label for="" class="frm_label">手机号</label>
												<div class="frm_controls">
													<span class="frm_input_box"> 
													    <input name="userModel.mobile"  id="js_mobile" type="text" class="frm_input"> 
													</span>
	 												<p id="mobile_info" class="frm_msg fail" style="display: none;">请输入正确的手机号</p>
													<p class="frm_tips">手机号为数字类型</p>
												 </div>
											</div>
										  	<div class="frm_control_group">
												<label for="" class="frm_label">密码</label>
												<div class="frm_controls">
													<span class="frm_input_box"> 
													    <input name="userModel.password"  id="pw1" type="password"  class="frm_input"> 
													</span>
													<p id="pw1_info" class="frm_msg fail" style="display: none;"> 密码长度不足6位，或者使用了非法字符</p>
													<p class="frm_tips">字母、数字或者英文符号，最短6位，区分大小写</p>
												</div>
											</div>
											<div class="frm_control_group">
												<label for="" class="frm_label">确认密码</label>
												<div class="frm_controls">
													<span class="frm_input_box">
													     <input name="pw2"  id="pw2" type="password" class="frm_input" > 
													</span>
												    <p id="pw2_info" class="frm_msg fail" style="display: none;">密码长度不足6位，或者使用了非法字符</p>
													<p class="frm_tips">请再次输入密码</p>
												</div>
											</div>
											<div class="tool_bar border with_form">
												<span class="btn btn_loading btn_primary btn_input">
												     <button id="js_nextBtn" type="button">下一步</button>
												</span>
										    </div>
										</fieldset>
						 </div>
						<div  style="display: none">
								<fieldset class="frm_fieldset">
										<div class="frm_title mini_tips">
											<i class="icon_msg_mini info"></i>每个手机号仅能申请一个帐号
										</div>
									    <div class="frm_control_group">
											<label for="" class="frm_label">
												商家名称
											</label>
											<div class="frm_controls">
												<span class="frm_input_box">
												    <input name="userModel.header"  id="js_header" type="text"  class="frm_input"> 
											    </span>
												<p class="frm_msg fail" id="header_info"  style="display: none;">商家名称不能为空</p>
											</div>
										</div>
										<div class="frm_control_group">
											<label for="" class="frm_label">
												商家LOGO
											</label>
											<div>
												<img alt="" src="" id="register_logo"  style="border: 1px solid #e7e7eb; width:120px; height:120px; vertical-align: middle;">  <input type="button" id="image3" value="选择图片" /> 
											</div>
										</div>
										<div class="frm_control_group">
											<label for="" class="frm_label">验证码</label>
											<div class="frm_controls" id="js_verifycodeImgArea">
											    <div class="verifycode">
												<span class="frm_input_box">
												<input id="checkCode" name="checkCode" type="text" value="" class="frm_input frm_msg_content"  title="验证码区分大小写"   maxlength="4">
												</span>
											    <div class="verifyimg_wrp">
											        <img id="createCheckCode" src="PictureCheckCode.jpeg">
											        <a href="javascript:;" class="changeVerifyCode"  onClick="myReload()">换一张</a>
											    </div>
										    	<p class="frm_msg fail" style="display: none;">验证码错误，请重新输入</p>
												</div>
											</div>
										</div>
									</fieldset>
									<div class="tool_area">
										<label for="js_agree"
											class="frm_control_checkbox frm_checkbox_label">
											<input id="js_agree" name="agree"
												type="checkbox" value="">
											我同意并遵守
											<a href="<%=basePath%>admin/service_amt.jsp" target="_blank">《服务协议》</a>
										</label>
									</div>
									<div class="tool_bar border with_form">
									  <span class="btn btn_loading btn_primary btn_input">
										   <button id="js_upBtn" type="button">
												上一步
										   </button>
										</span>
										<span class="btn btn_loading btn_primary btn_input">
										   <button id="js_registerBtn" type="submit" class="">
												注册
											</button>
										</span>
									</div>
							     </div>
							</div>
									
				</form>
		</div>
		<div class="tips_show">
			<p>
				已有微信公众帐号？
				<a href="<%=basePath%>/admin/login.jsp">立即登录</a>
			</p>

		</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	<jsp:include page="footer.jsp"></jsp:include>
		<script type="text/javascript"  src="<%=basePath%>js/jquery-1.8.3.min.js"></script>
		<script type="text/javascript"  src="<%=basePath%>admin/js/jquery.cookies.2.2.0.min.js"></script>
		<script type="text/javascript"  src="<%=basePath%>admin/js/util.js"></script>
		<script src="<%=basePath%>js/kindeditor-all-min.js"></script>
		<script src="<%=basePath%>js/lang/zh_CN.js"></script>
		<script type="text/javascript"> 
		/*验证码*/
        function myReload(){  
            document.getElementById("createCheckCode").src=document.getElementById("createCheckCode").src + "?nocache="+new Date().getTime();  
        }  
		/*上传logo*/
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
								K('#register_logo').attr('src',url);
								editor.hideDialog();
							}
						});
					});
				});
			});
          </script>
	    <script type="text/javascript">
	         /*手机验证*/
	         function checkRegister() {
	        	 if(isNull($("#js_mobile").val())||checkMobile($("#js_mobile").val())==false){
	        		 $("#mobile_info").show();
	        		 return false;
	        	 }else{
	        		 $("#mobile_info").hide();
	        	 }
	        	 if(isNull($("#pw1").val())||$("#pw1").val().length<6||isNumberOr_Letter($("#pw1").val())==false){
	        		 $("#pw1_info").show();
	        		 return false;
	        	 }else{
	        	  	 $("#pw1_info").hide();
	        	 }
	        	 if($("#pw1").val()!==$("#pw2").val()){
	        		 $("#pw2_info").show();
	        		 return false; 
	        	 }else{
	        	 	 $("#pw2_info").hide();
	        	 }
	        	 return true;
	        	 
	         }
	         function  checkRegister_name(){
	        	 if(isNull($("#js_header").val())){
	        		 $("#header_info").show();
	        		 return false;
	        	 }else{
	        		 $("#header_info").hide();
	        	 }
	        	 return true;
	         }
	         /*注册方法*/
	         function bind_register(){
	        	 $("#js_registerBtn").bind("click",function(){
	            		if(checkRegister_name()){
	                    var params = $("form[id=login]").serialize();
	                    $("form[id=login]").submit();
	                	$.ajax({
	               			async: true,
	               			cache: false,
	               			type: 'post',
	        				data : params,
	               		    url:'<%=basePath %>/userRegister.action',
	               			error: function(){},
	               			success: function(data){
	             				var req = eval('('+data+')');
	             				var local=req.resultCode;
	             				var resultInfo=req.resultInfo;
	             				if(local==1){
	             					window.location.href="<%=basePath%>admin/store_manage.jsp";
	             				}else{
	             					alert(resultInfo);
	             				}
	             				
	               			}
	               		});
	            	  }
	            	});
	            	
	         }
	         /*头部tab样式*/
	         function  bind_tab(){
	        	 $("#js_nextBtn").bind("click",function(){
         			if(checkRegister()){
         				$(".processor_bar").children("li").eq(0).removeClass("current").addClass("prev");
         				$(".processor_bar").children("li").eq(1).removeClass("next").addClass("current");
         				$("#register_all").children("div").eq(0).hide();
                  	    $("#register_all").children("div").eq(1).show();
         			}
	         	});
	         	$("#js_upBtn").bind("click",function(){
    				$(".processor_bar").children("li").eq(1).removeClass("current").addClass("next");
     				$(".processor_bar").children("li").eq(0).removeClass("prev").addClass("current");
	         	    $("#register_all").children("div").eq(1).hide();
	         	    $("#register_all").children("div").eq(0).show();

	         		
	         	});
	         }
            /*注册*/
            $(document).ready(function(e) {
            	bind_tab();
            	bind_register();
            	
            });
        </script>

		

	</body>
</html>
