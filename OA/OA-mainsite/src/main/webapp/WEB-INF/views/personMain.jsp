<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>无标题文档</title>
</head>
<body>
<table width="773" height="371" border="1">
  <tbody>
    <tr>
      <td width="85">姓名：</td>
      <td width="155">${teacher.name }</td>
      <td width="116">身份证号：</td>
      <td width="169">${teacher.identificationid }</td>
      <td width="214" rowspan="8">&nbsp;</td>
    </tr>
    <tr>
      <td>性别：</td>
      <td>${teacher.gender }</td>
      <td><p>员工编号：</p></td>
      <td>${teacher.id }</td>
    </tr>
    <tr>
      <td>年龄：</td>
      <td>${teacher.age }</td>
      <td>单位：</td>
      <td>${teacher.department }</td>
    </tr>
    <tr>
      <td>籍贯：</td>
      <td>${teacher.nativeplace }</td>
      <td>注册批次：</td>
      <td>${teacher.registerbatch }</td>
    </tr>
    <tr>
      <td>入职时间：</td>
      <td>${teacher.entrytime }</td>
      <td>状态：</td>
      <td>${teacher.status }</td>
    </tr>
    <tr>
      <td>联系方式：</td>
      <td colspan="3">无</td>
    </tr>
    <tr>
      <td>手机号码：</td>
      <td>${teacher.phone }</td>
      <td>第二联系号码：</td>
      <td>${teacher.secondphone }</td>
    </tr>
    <tr>
      <td height="35">QQ：</td>
      <td>${teacher.qq }</td>
      <td>电子邮箱：</td>
      <td>${teacher.email }</td>
    </tr>
    <tr>
      <td>联系地址：</td>
      <td colspan="4">${teacher.address }</td>
    </tr>
  </tbody>
</table>
</body>
</html>