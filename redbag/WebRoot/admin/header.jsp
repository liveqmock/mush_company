<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>头部</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
    <link rel="stylesheet" type="text/css" href="<%=basePath%>css/base.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/alyout_head.css">
  </head>
  
  <body>
    <!-- header start -->
		<div class="head" id="header">
			<div class="head_box">
				<div class="inner wrp">
					<h1 class="logo">
						<a href="/" title="微信公众平台"></a>
					</h1>
					
				</div>
			</div>
		</div>
         <!-- header end -->
  </body>
</html>
