<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>首页</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
    <link rel="stylesheet" type="text/css" href="css/base.css">
    <!-- 初始化 //菜单-->
	<link rel="stylesheet" type="text/css" href="<%=basePath%>admin/css/base.css">
    <link rel="stylesheet" type="text/css" href="<%=basePath%>admin/css/alyout_head.css">
       <style type="text/css">
       body {
		background: #e7e8eb;
	}
    </style>
  </head>
  
  <body>
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
				    <iframe  	width="100%"  id="iframepage"    onLoad="iFrameHeight()"    name="iframepage" class="iframepage"  scrolling="no"  frameborder="0" src="<%=basePath%>admin/set_seller.jsp""></iframe>
				</div>
			    <!-- 右侧end -->
			</div>
		</div>
		<jsp:include page="footer.jsp"></jsp:include>
	</body>
	<script type="text/javascript"> 
	 function iFrameHeight() {
	        var ifm= document.getElementById("iframepage");
	        var subWeb = document.frames ? document.frames["iframepage"].document :ifm.contentDocument;
	            if(ifm != null && subWeb != null) {
	            ifm.height = subWeb.body.scrollHeight;
	            }
	    }
	</script>
  </body>
</html>
