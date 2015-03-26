<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>IdentifyingCode page</title>
		<link rel="stylesheet" href="themes/default/default.css" />
		<script src="js/kindeditor-all-min.js"></script>
		<script src="js/lang/zh_CN.js"></script>
		<script type="text/javascript">  
        function myReload(){  
            document.getElementById("createCheckCode").src=document.getElementById("createCheckCode").src + "?nocache="+new Date().getTime();  
        }  
        
        
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
								editor.hideDialog();
							}
						});
					});
				});
			});
    </script>
	</head>

	<body>
		<form action="PictureCheckCode" method="post">
			<input name="checkCode" type="text" id="checkCode" title="验证码区分大小写"
				maxlength="4">
			<img id="createCheckCode" src="PictureCheckCode.jpeg">
			<a href="#" onClick="myReload()">看不清，换一个</a>
		</form>
		
		<p><input type="text" id="url3" value="" /> <input type="button" id="image3" value="选择图片" />（本地上传）</p>
	</body>
</html>
