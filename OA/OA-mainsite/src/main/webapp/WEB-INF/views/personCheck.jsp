<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>无标题文档</title>
<link href="<%=request.getContextPath() %>/resources/css/kqgl.css" rel="stylesheet" type="text/css">
</head>

<body>
<h3>个人考勤管理</h3>
<hr>
<span>
	<p>考勤情况：
    <select>    
        <option value="正常上班" >正常上班</option>
        <option value="非正常上班">非正常上班</option>
    </select>
    <button class="grkq_button">查询</button>
</span>
<table width="100%" border="1">
  <tbody>
    <tr>
      <th bgcolor="#F2F2F2">上午上班时间</th>
      <th bgcolor="#F2F2F2">上午下班时间</th>
      <th bgcolor="#F2F2F2">下午上班时间</th>
      <th bgcolor="#F2F2F2">下午下班时间</th>
      <th bgcolor="#F2F2F2">考勤状态</th>
      <th bgcolor="#F2F2F2">操作</th>
    </tr>
    <c:forEach items="${attendance}" var="item">
    <tr>
      <td class="ygxm" id="ygxm_1">${item.morningstarttime }</td>
      <td class="sxs" id="sxs_1">${item.morningendtime }</td>
      <td class="xss" id="xss_1">${item.afterstarttime }</td>
      <td class="xxs" id="xxs_1">${item.afterendtime }</td>
      <td class="kqzt" id="kqzt_1">
      <c:if test="${item.result  == 1}">
                                   正常上班
      </c:if>
       <c:if test="${item.result == 2} ">
                                   上班迟到
       </c:if>
        <c:if test="${item.result == 3} ">
                                     因事未到
        </c:if>
      </td>
      <td><button class="grkq_button" id="grkq_button_7" >删除</button></td>
    </tr>
    </c:forEach>
        
  </tbody>
</table>


</body>
</html>