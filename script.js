;(function (d, $) {

  var jQdm_slideMenu;

  jQdm_slideMenu = function(){

	// 初期設定
    var prop = {
    	deferredImage: 'img.deferred',

      pagerContainer: '.navigation',
      pagerTargetContainer: '#galleryContainer',
      pagerLoadingContents: '#galleryContainer .column'
    }

    function init(){
    	// 画像の遅延読み込み関数を実行する
    	deferredImage_setting()
    	// 特定の要素までスクロールしたら、外部ページを読み込む
      $(prop.pagerTargetContainer).infinitescroll({
        itemSelector: prop.pagerLoadingContents,
         animate: false, // ページ読み込み後に特定の位置までアニメーション移動させるか
        extraScrollPx: 300,// ページ読み込み後に移動する距離（px）
        pixelsFromNavToBottom: 50, // スクロール位置が、ページ下端からどれくらい距離で読み込みを開始するか（px）
        loading: {
          img: "img/loading.gif",  // ローディング中の画像
          msgText: "画像を読み込んでいます...",  // ページ読み込み時に表示されるメッセージ
          finishedMsg: "" // すべてのページが読み込まれた後のメッセージ
        },
      }, function(_t, _opt){  // ページ読み込み後の処理
        var _len = _t.length;
        while(_len--){
          deferredImage_setting($(_t[_len]).find(prop.deferredImage));
        }
      });

	  }

    // 逕ｻ蜒上�驕�ｻｶ隱ｭ縺ｿ霎ｼ縺ｿ險ｭ螳�
    function deferredImage_setting(_$t){

      $( _$t || prop.deferredImage).lazyload({
        threshold : 10,
        effect: 'fadeIn',
        effectspeed: 1000
      });
    }
	// 譁�ｭ怜�鄂ｮ謠帛�逅�
    function replaceString(_str, _bf, _af, _flg){
      var _reg = new RegExp(_bf || '[\\.#]', _flg || '');
      return _str ? _str.replace(_reg, _af || '') : false;
    }
    init();
  };
  jQdm_slideMenu();
})(document, jQuery);