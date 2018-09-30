<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- 共通パーツ ヘッダー -->
<div class="part-body header">
	<nav class="navbar navbar-default header-nav">
		<div class="container-fluid">
			<div class="navbar-header">
				<label class="navbar-text">Charlie</label>
			</div>
			<div id="memberInfo">
				<div class="collapse navbar-collapse navbar-right">
					<label class="navbar-text"> ID:<c:out value="${loginInfo.loginId}" /></label>
					<label class="navbar-text"> 氏名:<c:out value="${loginInfo.loginNm}" /></label>
					<label class="navbar-text"> 部署:XXXX</label>
					<label class="navbar-text"><a style="text-decoration: none; color: #777;" href="/logout" target="_parent"> Logout</a></label>
				</div>
			</div>
		</div>
	</nav>
</div>

<script type="text/javascript">
// ログイン画面or以外の画面で、会員情報の表示制御を行う
function getdata(){
    if(window.location.search){
        /* パラメータを取得 */
        var param = window.location.search.substring(1,window.location.search.length);
        var memberInfoBlock = document.getElementById("memberInfo");
		if(param == "login") {
			memberInfoBlock.style.display = "none"
		}
    }
}
// ロード時に実行
window.onload=getdata;
</script>
