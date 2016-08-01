$(function(){
	//ページを表示させる箇所の設定
	var $content = $('.make');
	//ボタンをクリックした時の処理
	$(document).on('click', '.gnavi a', function(event) {

		$("#image").css("display","inline");
		setTimeout(function(){
			$("#image").css("display","none");
		},1500);

		//gnavi、bindで囲ってあるものを見えなくする
		$('.gnavi').hide();

		//bindで囲ってあるdivのidとclassを消去する
		$("#bind div").removeAttr("id");
		$(".bind2 div").removeAttr("class").removeAttr("href");
		event.preventDefault();

		//.gnavi aのhrefにあるリンク先を保存
		var link = $(this).attr("href");

		//リンク先が今と同じであれば遷移しない
		if(link == lastpage){
			return false;
		}else{
			$content.fadeOut(600, function() {
				getPage(link);
			});

			//今のリンク先を保存
			lastpage = link;
		}
	});
	//初期設定
	getPage("Blank.html");
	var lastpage = "Blank.html";

	//ページを取得してくる
    function getPage(elm){
    	$.ajax({
            type: 'GET',
            url: elm,
            dataType: 'html',
            success: function(data){
                $content.html(data).fadeIn(600);
            },
            error:function() {
                       alert('問題がありました。');
                   }
    	});
    }
});

