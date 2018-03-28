<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${not empty param.login }">
									<c:forEach items="${acc}" var="accs">
					
					

					
	<c:if test="${accs.user==param.username and accs.pass==param.password}">
		<c:redirect url="/admin"/>
	</c:if>
	</c:forEach>
</c:if>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Đăng nhập</title>
<!--Bootstrap-->
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap-theme.min.css">

<link href="FA/css/font-awesome.min.css" rel="stylesheet">

<link rel="stylesheet" type="text/css" media="all" href="css/custom_SlideMenu.css" />


<script src="js/jquery-3.2.0.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<!--End Bootstrap-->
<style>
th, td {
    padding: 5px;
    font-size:20px;
}
</style>
</head>
<body>
<div class="container">

<div class="col-md-10 col-md-offset-2">
<p style="font-size:30px">ĐĂNG NHẬP QUẢN LÍ</p><br/>
<form action="/login" method="post">
<table>
    <tr>
        <td>
            <label><b>Username:</b></label>  
        </td>
        <td>
             <input type="text" name="username"/>
        </td>
    </tr>
        <tr>
        <td>
            <label><b>Password: </b></label>  
        </td>
        <td>
             <input type="text" name="password"/>
        </td>
    </tr>
</table>
<br/>
<input type="submit" name="login" value="Đăng nhập"/>
</form>

</div>
</div>
</body>
</html>