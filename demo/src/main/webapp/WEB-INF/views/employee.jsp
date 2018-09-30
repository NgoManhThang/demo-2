<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>   
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Employee Information</title>
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
<body>
	<c:url value="/common/header.jsp" var="header"/>
	<jsp:include page="./common/header.jsp" />
	
	<section class="common-main">
		<!-- start breadcrumb -->
		<ol class="breadcrumb">
			<li>会員管理</li>
			<li>会員情報一覧</li>
		</ol>
		<!-- Start title -->
		<div class="common-title">
			<h3 class="form-signin-headingr">会員情報一覧</h3>
		</div>
		
		<section class="common-contents">
			<c:url value="/MBFB002001/search" var="searchMemberInfor"/>
			<form:form modelAttribute="memberInfor" action="${searchMemberInfor}" method="post">
				<section class="table01">
					<table class="table table-bordered">
						<tbody>
							<tr>
								<th class="MBFB002001-search_header">会員番号</th>
								<td class="MBFB002001-search_table01">
									<input type="text" class="table-textbox_half" /> ～ <input type="text" class="table-textbox_half" /></td>
								<th class="MBFB002001-search_header">会員名</th>
								<td class="MBFB002001-search_table02"><input type="text" /></td>
								<th class="MBFB002001-search_header">会員カナ名</th>
								<td class="MBFB002001-search_table02"><input type="text" /></td>
							</tr>
							<tr>
								<jsp:include page="./common/paging.jsp" flush="true">
									<jsp:param name="linkPaggin" value="list-member-1" />
								</jsp:include>
							</tr>
						</tbody>
					</table>
				</section>
			</form:form>
		</section>
	</section>
	
	<c:url value="../common/sidebar.jsp" var="sidebar"/>
	<jsp:include page="./common/sidebar.jsp" flush="true">
		<jsp:param name="colNo" value="3" />
	</jsp:include>
</body>
</html>