<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- 共通パーツ サイドバー -->
<div class="part-body sidebar">
	<div class="row">
		<!-- left -->
		<div class="col-md-12">
			<!-- パネルで囲む -->
			<div class="panel panel-default sideber-menu_header" >
				<div class="panel-heading"><a id="sidebar-menu" class="sidebar-menu_link">Menu</a></div>
			</div>

			<div class="panel-group sideber-menu_body">
				<div class="panel panel-default" style="border-top: 0px;">
					<div class="panel-heading">
						<h4 class="panel-title">
							<a class="glyphicon glyphicon-list" data-toggle="collapse" href="#collapse1"  onclick="close_accordion()"> 会員管理</a>
						</h4>
					</div>
					<div id="collapse1" class="panel-collapse collapse">
						<ul class="list-group">
							<li class="list-group-item"><a class="panel sidebar-button" href="../MBFB002001.html" target="_parent">会員情報</a></li>
							<li class="list-group-item"><a class="panel sidebar-button" href="" target="_parent">会員持ち馬情報</a></li>
							<li class="list-group-item"><a class="panel sidebar-button" href="../MBFB004001.html" target="_parent">オペレーション履歴</a></li>
							<li class="list-group-item"><a class="panel sidebar-button" href="../MBFB011001.html" target="_parent">募集馬申込</a></li>
							<li class="list-group-item"><a class="panel sidebar-button" href="../MBFB012001.html" target="_parent">募集抽選</a></li>
							<li class="list-group-item"><a class="panel sidebar-button" href="../MBFB013001.html" target="_parent">確認書兼出資契約書</a></li>
							<li class="list-group-item"><a class="panel sidebar-button" href="../MBFB007001.html" target="_parent">メッセージBOX管理</a></li>
							<li class="list-group-item"><a class="panel sidebar-button" href="../MBFB008001.html" target="_parent">問い合わせ管理</a></li>
							<li class="list-group-item"><a class="panel sidebar-button" href="../MBFB015001.html" target="_parent">マイナンバー収集管理</a></li>
							<li class="list-group-item"><a class="panel sidebar-button" href="../MBFB006001.html" target="_parent">仮会員失効リスト印刷</a></li>
						</ul>
					</div>
					<div class="panel-heading">
						<h4 class="panel-title">
							<a class="glyphicon glyphicon-list" data-toggle="collapse" href="#collapse2" onclick="close_accordion()"> 愛馬管理</a>
						</h4>
					</div>
					<div id="collapse2" class="panel-collapse collapse">
						<ul class="list-group">
							<li class="list-group-item"><a class="panel sidebar-button" href="../HSFB016001.html" target="_parent">愛馬情報</a></li>
							<li class="list-group-item"><a class="panel sidebar-button" href="../HSFB084001.html" target="_parent">愛馬在厩地</a></li>
							<li class="list-group-item"><a class="panel sidebar-button" href="../HSFB016006.html" target="_parent">愛馬怪我履歴</a></li>
							<li class="list-group-item"><a class="panel sidebar-button" href="../HSFB017001.html" target="_parent">活躍馬情報</a></li>
							<li class="list-group-item"><a class="panel sidebar-button" href="../HSFB022001.html" target="_parent">競馬ブックデータ連携結果照会</a></li>
							<li class="list-group-item"><a class="panel sidebar-button" href="../HSFB088001.html" target="_parent">募集期間マスタ情報</a></li>
							<li class="list-group-item"><a class="panel sidebar-button" href="../HSFB089001.html" target="_parent">レースマスタ情報</a></li>
						</ul>
					</div>
					<div class="panel-heading">
						<h4 class="panel-title">
							<a class="glyphicon glyphicon-list" data-toggle="collapse" href="#collapse3"  onclick="close_accordion()"> 会計管理</a>
						</h4>
					</div>
					<div id="collapse3" class="panel-collapse collapse">
						<ul class="list-group">
							<li class="list-group-item"><a class="panel sidebar-button" href="../ACFB067001.html" target="_parent">精算書計算・発行</a></li>
							<li class="list-group-item"><a class="panel sidebar-button" href="../ACFB065001.html" target="_parent">月次確定処理</a></li>
							<li class="list-group-item"><a class="panel sidebar-button" href="../ACFB059001.html" target="_parent">分配金入力(レース)</a></li>
							<li class="list-group-item"><a class="panel sidebar-button" href="../ACFB059006.html" target="_parent">分配金入力(レース外)</a></li>
							<li class="list-group-item"><a class="panel sidebar-button" href="../ACFB061001.html" target="_parent">預託料入力</a></li>
							<li class="list-group-item"><a class="panel sidebar-button" href="../ACFB062001.html" target="_parent">保険料入力</a></li>
							<li class="list-group-item"><a class="panel sidebar-button" href="../ACFB063001.html" target="_parent">追加出資金入力</a></li>
							<li class="list-group-item"><a class="panel sidebar-button" href="../ACFB064001.html" target="_parent">調整金入力</a></li>
							<li class="list-group-item"><a class="panel sidebar-button" href="../ACFB070001.html" target="_parent">引去データ作成</a></li>
							<li class="list-group-item"><a class="panel sidebar-button" href="../ACFB072001.html" target="_parent">送金データ作成</a></li>
							<li class="list-group-item"><a class="panel sidebar-button" href="../ACFB058001.html" target="_parent">入金処理</a></li>
							<li class="list-group-item"><a class="panel sidebar-button" href="../ACFB066001.html" target="_parent">取得価格設定</a></li>
							<li class="list-group-item"><a class="panel sidebar-button" href="../ACFB045001.html" target="_parent">会計資料出力指示</a></li>
							<li class="list-group-item"><a class="panel sidebar-button" href="../ACFB055001.html" target="_parent">支払調書出力</a></li>
							<li class="list-group-item"><a class="panel sidebar-button" href="../ACFB054001.html" target="_parent">除名者一覧照会</a></li>
							<li class="list-group-item"><a class="panel sidebar-button" href="../ACFB075001.html" target="_parent">廃馬登録</a></li>
							<li class="list-group-item"><a class="panel sidebar-button" href="../ACFB074001.html" target="_parent">種牡馬売却登録</a></li>
							<li class="list-group-item"><a class="panel sidebar-button" href="../ACFB073001.html" target="_parent">仮口情報</a></li>
							<li class="list-group-item"><a class="panel sidebar-button" href="../ACFB018001.html" target="_parent">ポイント履歴(馬別)</a></li>
						</ul>
					</div>
					<div class="panel-heading">
						<h4 class="panel-title">
							<a class="glyphicon glyphicon-list" data-toggle="collapse" href="#collapse4"  onclick="close_accordion()"> 営業管理</a>
						</h4>
					</div>
					<div id="collapse4" class="panel-collapse collapse">
						<ul class="list-group">
							<li class="list-group-item"><a class="panel sidebar-button" href="../SLFB036001.html" target="_parent">馬近況・レポート入力</a></li>
							<li class="list-group-item"><a class="panel sidebar-button" href="../SLFB083001.html" target="_parent">特集・ニュース入力</a></li>
							<li class="list-group-item"><a class="panel sidebar-button" href="../SLFB086001.html" target="_parent">写真アップロード</a></li>
							<li class="list-group-item"><a class="panel sidebar-button" href="../SLFB085001.html" target="_parent">動画配信</a></li>
							<li class="list-group-item"><a class="panel sidebar-button" href="../SLFB087001.html" target="_parent">フロント制御</a></li>
							<li class="list-group-item"><a class="panel sidebar-button" href="../SLFB035001.html" target="_parent">メール配信</a></li>
							<li class="list-group-item"><a class="panel sidebar-button" href="../SLFB032001.html" target="_parent">資料請求入力</a></li>
							<li class="list-group-item"><a class="panel sidebar-button" href="../SLFB050001.html" target="_parent">カタログ発送</a></li>
							<li class="list-group-item"><a class="panel sidebar-button" href="../SLFB023001.html" target="_parent">イベント・プレゼント受付</a></li>
							<li class="list-group-item"><a class="panel sidebar-button" href="../SLFB043001.html" target="_parent">新規会員分析</a></li>
						</ul>
					</div>
					<div class="panel-heading">
						<h4 class="panel-title">
							<a class="glyphicon glyphicon-list" data-toggle="collapse" href="#collapse5"  onclick="close_accordion()"> メンテナンス</a>
						</h4>
					</div>
					<div id="collapse5" class="panel-collapse collapse">
						<ul class="list-group">
							<li class="list-group-item"><a class="panel sidebar-button" href="../MTFB076001.html" target="_parent">ユーザ管理</a></li>
							<li class="list-group-item"><a class="panel sidebar-button" href="../MTFB077001.html" target="_parent">汎用マスタ情報</a></li>
							<li class="list-group-item"><a class="panel sidebar-button" href="../MTFB078001.html" target="_parent">銀行マスタ一覧</a></li>
							<li class="list-group-item"><a class="panel sidebar-button" href="../MTFB079001.html" target="_parent">郵便マスタ取込</a></li>
							<li class="list-group-item"><a class="panel sidebar-button" href="../MTFB082001.html" target="_parent">よくある質問</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<script type="text/javascript">

/* サイドバーメニューの大項目数 */
const collapseNum = 5;

/* 1初期表示制御 */
$(function(){
    /* パラメータを取得 */
	var colNo = ${param.colNo};
    if(colNo){
		$('#collapse'+colNo).collapse('show'); //デフォルトでオープン
    }
});

/* サイドバー 「Menu」押下時
   アコーディオンを全て閉じる
*/
$(function(){
	$('#sidebar-menu').on('click', function(event) {
		close_accordion();
	});
});

function close_accordion(){
	// アコーディオンを全て閉じる
	for (collapseIndex = 1; collapseIndex <= collapseNum; collapseIndex++){
		$('#collapse'+collapseIndex).collapse('hide');
	}
}

</script>
