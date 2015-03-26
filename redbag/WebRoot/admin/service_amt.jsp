<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>服务协议</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
    <link  rel="stylesheet" type="text/style" href="<%=basePath%>admin/css/base.css" >
     <link  rel="stylesheet" type="text/style" href="<%=basePath%>admin/css/alyout_head.css" >
     <link  rel="stylesheet" type="text/style" href="<%=basePath%>admin/css/page_news.css" >
  </head>
	<body class="zh_CN">
		<div class="head" id="header">
			<div class="head_box">
				<div class="inner wrp">
					<h1 class="logo">
						<a href="/" title="微信公众平台"></a>
					</h1>
					<div class="account">
					</div>
				</div>
			</div>
		</div>
		<div id="body" class="body page_news ">
			<div class="container_box side_l ">
				<div class="container_hd">
					<h2></h2>
					<div class="extra_info">
						&nbsp;
					</div>
				</div>
				<div class="container_bd">
					<div class="col_side">
					</div>
					<div class="col_main">
						<div class="news_box ">
							<div class="inner">
								<h3>
									大标题
								</h3>
								<h4>
									【首部及导言】
								</h4>
								<p>欢迎你使用平台！</p>
								<p class="em_text"></p>
								<h4>子项标题</h4>
								<p>1.1</p>
								<p>1.2</p>
								<p class="em_text">1.3</p>
								<h4>子项标题二</h4>
								<p>2.1</p>
								<p>2.2</p>
								<p class="em_text">2.3</p>
								<!-- 结尾 -->
								<p class="company_sign">腾讯公司<br></p>
							</div>
						</div>
						<div class="tool_bar border tc">
							<a href="<%=basePath%>admin/login.jsp" class="btn btn_default">返回首页</a>
						</div>
					</div>
				</div>
			</div>
		</div>

		<jsp:include page="footer.jsp"></jsp:include>


	</body>

</html>
