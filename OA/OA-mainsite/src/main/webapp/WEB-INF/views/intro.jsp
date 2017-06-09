<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>

	<meta charset="utf-8">
	<title>教师简介</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="Charisma, a fully featured, responsive, HTML5, Bootstrap admin template.">


	<link id="bs-css" href="<%=request.getContextPath() %>/resources/css/bootstrap-cerulean.css" rel="stylesheet">
	<style type="text/css">
		body {
			padding-bottom: 40px;
		}
		.sidebar-nav {
			padding: 9px 0;
		}
	</style>
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

	<!-- The HTML5 shim, for IE6-8 support of HTML5 elements -->
	<!--[if lt IE 9]>
	  <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	  <![endif]-->

	  <!-- The fav icon -->
	  <link rel="shortcut icon" href="<%=request.getContextPath() %>/resources/img/favicon.ico">
	  
	</head>

	<body style="
	margin-left: 100px;
	">
	<table class="table table-striped table-bordered bootstrap-datatable datatable dataTable" id="DataTables_Table_0" aria-describedby="DataTables_Table_0_info">
		<caption>员工详情</caption>
		<!-- <thead>
			<tr role="row"><th class="sorting_asc" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Username: activate to sort column descending" style="width: 199px;">教员</th><th class="sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="Date registered: activate to sort column ascending" style="width: 198px;">教室</th><th class="sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="Role: activate to sort column ascending" style="width: 95px;">时间</th><th class="sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="Status: activate to sort column ascending" style="width: 110px;">课程</th>
		</thead>    -->
		
		<tbody role="alert" aria-live="polite" aria-relevant="all">
			<tr class="odd">
				<th class="sorting_asc" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Username: activate to sort column descending" style="width: 79px;">员工编号</th>
				<td class="center " style="width: 79px;">${teacher.id }</td>
			</tr>
			<tr class="odd">
				<th class="sorting_asc" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Username: activate to sort column descending" style="width: 79px;">员工姓名</th>
				<td class="center " style="width: 79px;">${teacher.name }</td>
			</tr>
			<tr class="odd">
				<th class="sorting_asc" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Username: activate to sort column descending" style="width: 79px;">员工年龄</th>
				<td class="center " style="width: 79px;">${teacher.age }</td>
			</tr>
			<tr class="odd">
				<th class="sorting_asc" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Username: activate to sort column descending" style="width: 79px;">入职时间</th>
				<td class="center " style="width: 79px;">${teacher.entryTime }</td>
			</tr>
			<tr class="odd">
				<th class="sorting_asc" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Username: activate to sort column descending" style="width: 79px;">家庭地址</th>
				<td class="center " style="width: 79px;">${teacher.address }</td>
			</tr>
			<tr class="odd">
				<th class="sorting_asc" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Username: activate to sort column descending" style="width: 79px;">所属部门</th>
				<td class="center " style="width: 79px;">${teacher.department }</td>
			</tr>
			<tr class="odd">
				<th class="sorting_asc" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Username: activate to sort column descending" style="width: 79px;">所在单位</th>
				<td class="center " >${teacher.job }</td>
			</tr>
		</tbody>
	</table>
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
<script src="js/bootstrap-button.js"></script>
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
<script src='js/fullcalendar.min.js'></script>
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