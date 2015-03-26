<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>卡券添加</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
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
			     
			</div>
		    <!-- 右侧end -->
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
  </body>
</html>
