<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>登陆页面</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="Charisma, a fully featured, responsive, HTML5, Bootstrap admin template.">
	
	<style type="text/css">
	  body {
		padding-bottom: 40px;
	  }
	  .sidebar-nav {
		padding: 9px 0;
	  }
	</style>
	<link href="<%=request.getContextPath() %>/resources/css/bootstrap-cerlean.css" id="bs-css" rel="stylesheet">
	<link href="<%=request.getContextPath() %>/resources/css/bootstrap-responsive.css" rel="stylesheet">
	<link href="<%=request.getContextPath() %>/resources/css/charisma-app.css" rel="stylesheet">
	<link href="<%=request.getContextPath() %>/resources/css/jquery-ui-1.8.21.custom.css" rel="stylesheet">
	<link href='<%=request.getContextPath() %>/resources/css/fullcalendar.css' rel='stylesheet'>
	<link href='<%=request.getContextPath() %>/resources/css/fullcalendar.print.css' rel='stylesheet'  media='print'>
	<link href='<%=request.getContextPath() %>/resources/css/chosen.css' rel='stylesheet'>
	<link href='<%=request.getContextPath() %>/resources/css/uniform.default.css' rel='stylesheet'>
	<link href='<%=request.getContextPath() %>/resources/css/colorbox.css' rel='stylesheet'>
	<link href='<%=request.getContextPath() %>/resources/css/jquery.cleditor.css' rel='stylesheet'>
	<link href='<%=request.getContextPath() %>/resources/css/jquery.noty.css' rel='stylesheet'>
	<link href='<%=request.getContextPath() %>/resources/css/noty_theme_default.css' rel='stylesheet'>
	<link href='<%=request.getContextPath() %>/resources/css/elfinder.min.css' rel='stylesheet'>
	<link href='<%=request.getContextPath() %>/resources/css/elfinder.theme.css' rel='stylesheet'>
	<link href='<%=request.getContextPath() %>/resources/css/jquery.iphone.toggle.css' rel='stylesheet'>
	<link href='<%=request.getContextPath() %>/resources/css/opa-icons.css' rel='stylesheet'>
	<link href='<%=request.getContextPath() %>/resources/css/uploadify.css' rel='stylesheet'>


	<link rel="shortcut icon" href="<%=request.getContextPath() %>/resources/img/favicon.ico">
		
</head>

<body>
		<div class="container-fluid">
		<div class="row-fluid">
		
			<div class="row-fluid">
				<div class="span12 center login-header">
					<h2>中兴科技办公室管理系统</h2>
				</div>
			</div>
			
			<div class="row-fluid">
				<div class="well span5 center login-box">
					<div class="alert alert-info">
						请使用用户名和密码登陆
					</div>
					<form class="form-horizontal" action="<%=request.getContextPath() %>/dologin" method="post">
						<fieldset>
							<div class="input-prepend" title="username" data-rel="tooltip">
								<span class="add-on"><i class="icon-user"></i></span><input autofocus class="input-large span10" name="username" id="username" type="text" value="" />
							</div>
							<div class="clearfix"></div>

							<div class="input-prepend" title="password" data-rel="tooltip">
								<span class="add-on"><i class="icon-lock"></i></span><input class="input-large span10" name="password" id="password" type="password" value="" />
							</div>
							<div class="clearfix"></div>

							<div class="input-prepend">
							<label class="remember" for="remember"><input type="checkbox" id="remember" />记住</label>
							</div>
							<div class="clearfix"></div>

							<p class="center span5">
							<button type="submit" class="btn btn-primary">登陆</button>
							</p>
						</fieldset>
					</form>
				</div>
			</div>
				</div>
		
	</div>

	

	<!-- jQuery -->
	<script src="<%=request.getContextPath() %>/resources/js/jquery-1.7.2.min.js"></script>
	<!-- jQuery UI -->
	<script src="<%=request.getContextPath() %>/resources/js/jquery-ui-1.8.21.custom.min.js"></script>
	<!-- transition / effect library -->
	<script src="<%=request.getContextPath() %>/resources/js/bootstrap-transition.js"></script>
	<!-- alert enhancer library -->
	<script src="<%=request.getContextPath() %>/resources/js/bootstrap-alert.js"></script>
	<!-- modal / dialog library -->
	<script src="<%=request.getContextPath() %>/resources/js/bootstrap-modal.js"></script>
	<!-- custom dropdown library -->
	<script src="<%=request.getContextPath() %>/resources/js/bootstrap-dropdown.js"></script>
	<!-- scrolspy library -->
	<script src="<%=request.getContextPath() %>/resources/js/bootstrap-scrollspy.js"></script>
	<!-- library for creating tabs -->
	<script src="<%=request.getContextPath() %>/resources/js/bootstrap-tab.js"></script>
	<!-- library for advanced tooltip -->
	<script src="<%=request.getContextPath() %>/resources/js/bootstrap-tooltip.js"></script>
	<!-- popover effect library -->
	<script src="<%=request.getContextPath() %>/resources/js/bootstrap-popover.js"></script>
	<!-- button enhancer library -->
	<script src="<%=request.getContextPath() %>/resources/js/bootstrap-button.js"></script>
	<!-- accordion library (optional, not used in demo) -->
	<script src="<%=request.getContextPath() %>/resources/js/bootstrap-collapse.js"></script>
	<!-- carousel slideshow library (optional, not used in demo) -->
	<script src="<%=request.getContextPath() %>/resources/js/bootstrap-carousel.js"></script>
	<!-- autocomplete library -->
	<script src="<%=request.getContextPath() %>/resources/js/bootstrap-typeahead.js"></script>
	<!-- tour library -->
	<script src="<%=request.getContextPath() %>/resources/js/bootstrap-tour.js"></script>
	<!-- library for cookie management -->
	<script src="<%=request.getContextPath() %>/resources/js/jquery.cookie.js"></script>
	<!-- calander plugin -->
	<script src='<%=request.getContextPath() %>/resources/js/fullcalendar.min.js'></script>
	<!-- data table plugin -->
	<script src='<%=request.getContextPath() %>/resources/js/jquery.dataTables.min.js'></script>

	<!-- chart libraries start -->
	<script src="<%=request.getContextPath() %>/resources/js/excanvas.js"></script>
	<script src="<%=request.getContextPath() %>/resources/js/jquery.flot.min.js"></script>
	<script src="<%=request.getContextPath() %>/resources/js/jquery.flot.pie.min.js"></script>
	<script src="<%=request.getContextPath() %>/resources/js/jquery.flot.stack.js"></script>
	<script src="<%=request.getContextPath() %>/resources/js/jquery.flot.resize.min.js"></script>
	<!-- chart libraries end -->

	<!-- select or dropdown enhancer -->
	<script src="<%=request.getContextPath() %>/resources/js/jquery.chosen.min.js"></script>
	<!-- checkbox, radio, and file input styler -->
	<script src="<%=request.getContextPath() %>/resources/js/jquery.uniform.min.js"></script>
	<!-- plugin for gallery image view -->
	<script src="<%=request.getContextPath() %>/resources/js/jquery.colorbox.min.js"></script>
	<!-- rich text editor library -->
	<script src="<%=request.getContextPath() %>/resources/js/jquery.cleditor.min.js"></script>
	<!-- notification plugin -->
	<script src="<%=request.getContextPath() %>/resources/js/jquery.noty.js"></script>
	<!-- file manager library -->
	<script src="<%=request.getContextPath() %>/resources/js/jquery.elfinder.min.js"></script>
	<!-- star rating plugin -->
	<script src="<%=request.getContextPath() %>/resources/js/jquery.raty.min.js"></script>
	<!-- for iOS style toggle switch -->
	<script src="<%=request.getContextPath() %>/resources/js/jquery.iphone.toggle.js"></script>
	<!-- autogrowing textarea plugin -->
	<script src="<%=request.getContextPath() %>/resources/js/jquery.autogrow-textarea.js"></script>
	<!-- multiple file upload plugin -->
	<script src="<%=request.getContextPath() %>/resources/js/jquery.uploadify-3.1.min.js"></script>
	<!-- history.js for cross-browser state change on ajax -->
	<script src="<%=request.getContextPath() %>/resources/js/jquery.history.js"></script>
	<!-- application script for Charisma demo -->
	<script src="<%=request.getContextPath() %>/resources/js/charisma.js"></script>
	
		
</body>
</html>
