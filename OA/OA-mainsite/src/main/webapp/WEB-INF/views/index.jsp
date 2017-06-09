<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>OA办公系统</title>
<link href="<%=request.getContextPath() %>/resources/css/new.css" rel="stylesheet" type="text/css">
<link href="<%=request.getContextPath() %>/resources/jQueryAssets/jquery.ui.core.min.css" rel="stylesheet" type="text/css">
<link href="<%=request.getContextPath() %>/resources/jQueryAssets/jquery.ui.theme.min.css" rel="stylesheet" type="text/css">
<link href="<%=request.getContextPath() %>/resources/jQueryAssets/jquery.ui.accordion.min.css" rel="stylesheet" type="text/css">
<script src="<%=request.getContextPath() %>/resources/jQueryAssets/jquery-1.8.3.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath() %>/resources/jQueryAssets/jquery-ui-1.9.2.accordion.custom.min.js" type="text/javascript"></script>
<script src="script.js" type="text/javascript"></script>
</head>
<body>
<div id="1" >
	<img src="images/办公.jpg" width="67" height="55" alt=""/>
    <strong style="font-family: Baskerville, 'Palatino Linotype', Palatino, 'Century Schoolbook L', 'Times New Roman', serif; font-style: normal; font-weight: 900; font-size: x-large; text-align: center; color: #000000;">中兴科技办公管理系统</strong>
 
</div>


<div id="Accordion1" width="20%" >
        <h3>教质部</h3>
        <div>
          <p><a href="" onClick="iframeFresh(this); return false;">教师咨询管理</a></p>
          <p><a href="" onClick="iframeFresh(this); return false;">findClass</a></p>
        </div>
        
        
        <h3>人事部</h3>
        <div>
          <p><a href="" onClick="iframeFresh(this); return false;">职工请假</a></p>
          <p><a href="" onClick="iframeFresh(this); return false;">请假审批</a></p>
        </div>
        
        
        <h3>财务部</h3>
        <div>
          <p><a href="" onClick="iframeFresh(this); return false;">报销类型</a></p>
          <p><a href="" onClick="iframeFresh(this); return false;">报销单详情</a></p>
        </div>
        
        
        <h3>教学部</h3>
        <div>
          <p><a href="" onClick="iframeFresh(this); return false;" >intro</a></p>
          <p><a href="" onClick="iframeFresh(this); return false;">searchClass</a></p>
        </div>
        
        
        <h3>个人中心</h3>
        <div>
            <p><a href="" onClick="iframeFresh(this); return false;">personMain</a></p>
            <p><a href="" onClick="iframeFresh(this); return false;">personCheck</a></p>
        </div>
</div>


<iframe id="fragment" src="<%=request.getContextPath() %>/personMain?username=wzyuser" width="80%" height="500">
</iframe>

<script type="text/javascript">
$(function() {
	$( "#Accordion1" ).accordion(); 
});
function iframeFresh(whickLink)
{
	//alert("slmeth");
	var fragment = document.getElementById("fragment");
	var x = whickLink.innerText;
	fragment.setAttribute("src",<%=request.getContextPath() %>/+x+"?username=wzyuser");
}
</script>
</body>
</html>