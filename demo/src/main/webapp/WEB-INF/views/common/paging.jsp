<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script>
	function submitMe() {
		document.submitForm.submit();
		return true;
	}
</script>
<div>
	<div class="row">
		<div class="col-sm-8" style="margin-top: -36px;">
		<form action="/${param.linkPaggin}" name="submitForm" id="form1" method="post">
			<ul class="pagination">
				<c:choose>
					<c:when test="${searchDto.page == 1}">
						<li class="page-item"><a class="page-link" disabled>Prev</a></li>
					</c:when>
					<c:otherwise>
						<c:url value='/${param.linkPaggin}/?page=${searchDto.page - 1}' var="pagintion"/>
						<li class="page-item"><a class="page-link" href="${pagintion}" method="post">Prev</a></li>
					</c:otherwise>
				</c:choose>
				
				<c:forEach begin="1" end="${searchDto.totalPage}" varStatus="status">
					<button type="hidden" name="page" value="${status.count}"></button>
					<c:url value='/${param.linkPaggin}' var="pagintion"/>
					<c:choose>
						<c:when test="${status.count == searchDto.page}">
							<li class="page-item active">
								<a class="page-link" href=javascript:this.submitMe();>
									<c:out value="${status.count}"></c:out>
								</a>
							</li>
						</c:when>
						<c:otherwise>
							<li class="page-item">
								<a class="page-link" href=javascript:this.submitMe();>
									<c:out value="${status.count}"></c:out>
								</a>
							</li>
						</c:otherwise>
					</c:choose>
				</c:forEach>
				
				<c:choose>
					<c:when test="${searchDto.page == searchDto.totalPage}">
						<li class="page-item"><a class="page-link" disabled>Sau</a></li>
					</c:when>
					<c:otherwise>
						<c:url value='/${param.linkPaggin}?page=${searchDto.page + 1}' var="pagintion"/>
						<li class="page-item"><a class="page-link" href="${pagintion}">Sau</a></li>
					</c:otherwise>
				</c:choose>
			</ul>
		</form>	
		</div>
	</div>
</div>