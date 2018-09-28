// メインコンテンツ アコーディオン制御
$(function(){
	// Collapseイベント
	$('#table-collapse01,#table-collapse02,#table-collapse03,#table-collapse04,#table-collapse05,#table-collapse06').on({
		// 折り畳み開く処理
		'show.bs.collapse': function() {
			$('a[href="#' + this.id + '"] span.glyphicon-chevron-down')
				.removeClass('glyphicon-chevron-down')
				.addClass('glyphicon-chevron-up');
			},
		// 折り畳み閉じる処理
		'hide.bs.collapse': function() {
		$('a[href="#' + this.id + '"] span.glyphicon-chevron-up')
			.removeClass('glyphicon-chevron-up')
			.addClass('glyphicon-chevron-down');
		}
	});
	// ハッシュリンクキャンセル
	$('a[href="#table-collapse01"],a[href="#table-collapse02"],a[href="#table-collapse03"],a[href="#table-collapse04],a[href="#table-collapse05"],a[href="#table-collapse06"]').on('click', function(event) {
		event.preventDefault();
	});
});
// テーブル 印刷状況 表示制御
$(function(){
	$('#print-list').change(function(){
		if ($('#print-list').val() > '00') {
			$('.tabel-print_status').hide();
			$('.print_status' + $('#print-list').val()).show();
		} else {
			$('.tabel-print_status').hide();
		}
	});
});

//テーブル チェックボックス制御
function checkTarget(){
	if($('#checkTargetFlg').val() == 0){
		$('input[name="check_target"]').prop('checked', true);
		$('#checkTargetFlg').val('1');
	} else {
		$('input[name="check_target"]').prop('checked', false);
		$('#checkTargetFlg').val('0');
	}
}

// 共通 戻るボタン 表示制御
$(function(){
    if(window.location.search){
        /* パラメータを取得 */
        var param = window.location.search.substring(1,window.location.search.length);

        if(param == '1'){
        	$('#rtnBtn').css('display','block');
        	$('.form-signin-headingr').addClass('common-title_inline');
        }
    }
});

