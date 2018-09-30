<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Login</title>
		<link rel="stylesheet" href="<c:url value="/css/bootstrap.css" />">
		<link rel="stylesheet" href="<c:url value="/css/bootstrap-datepicker.min.css"/>">
		<link rel="stylesheet" href="<c:url value="/css/jquery.autocomplete.css"/>">
		<link rel="stylesheet" href="<c:url value="/css/style.css"/>">
		<script src="<c:url value="/js/jquery-1.10.2.min.js"/>"></script>
		<script src="<c:url value="/js/jquery.autocomplete.min.js"/>"></script>
		<script src="<c:url value="/js/bootstrap.js"/>"></script>
		<script src="<c:url value="/js/bootstrap-datepicker.min.js"/>"></script>
		<script src="<c:url value="/js/bootstrap-datepicker.ja.min.js"/>"></script>
		<script src="<c:url value="/js/charlie.js"/>" type="text/javascript"></script>
	</head>
	<body LeftMargin="0" TopMargin="0">
		<object type="text/html" data="common/header.html?login"
		class="header-include"></object>

		<div>
			<div class="col-md-6 col-md-offset-3 ">
				<h3 class="form-signin-heading MTFB001001-title">LOGIN</h3>
				<hr style="border-bottom: solid 3px #888888">
				<form:form modelAttribute="login" class="form-horizontal MTFB001001-block">
					<label class="form-signin-heading" style="color: red !important; text-align: center;">
						<c:out value="${loginFail }"></c:out>
					</label>
					<div class="form-group">
						<label for="login_name" class="col-md-2 control-label MTFB001001-item">ID：</label>
						<div class="col-md-10 MTFB001001-input_box">
							<form:input path="id" class="form-control" id="login_name"
								placeholder="Name" autocomplete="on" autofocus="autofocus" /><br />
							<p><form:errors path="id" style="color:red" /></p>
						</div>
					</div>

					<div class="form-group">
						<label for="input_password"
							class="col-md-2 control-label MTFB001001-item">PassWord：</label>
						<div class="col-md-10 MTFB001001-input_box">
							<form:password path="passWord" class="form-control" id="input_password"
								placeholder="Password" autocomplete="on" /><br />
							<p><form:errors path="passWord" style="color:red" /></p>
						</div>
					</div>

					<div class="form-group">
						<div class="col-md-offset-2 col-md-10 button-box">
							<button type="submit" class="btn btn-primary btn-block">Login</button>
						</div>
					</div>
				</form:form>
			</div>
		</div>
	</body>
</html>