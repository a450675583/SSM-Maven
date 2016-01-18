<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>User List</title>
</head>
<body>
<a href="addpage.jhtml"/>用户注册</a>
<br/>
<br/>
<span >所有用户</span>
<br/>
<br/>
    <table border="2px" width="800" >
       <tbody>
         <tr>
            <th>id</th>
            <th>用户名</th>
            <th>密码</th>
            <th>邮箱</th>
            <th>电话</th>
            <th>操作</th>
         </tr>
         <c:forEach items="${list}" var="user">
            <tr>
              <td>${user.id}</td>
              <td>${user.username}</td>
              <td>${user.password}</td>
              <td>${user.email}</td>
              <td>${user.phone}</td>
              <td>
                 <a href="deleteUser.jhtml?id=${user.id}">删除</a>
                 <a href="editUser.jhtml?id=${user.id}">编辑</a>
              </td>
            </tr>
         </c:forEach>
       </tbody>
    </table>
</body>
</html>