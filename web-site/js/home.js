$(function(){
	$('.paper-left, .paper-right').click(function() {

		$(".paper-left").animate({
		    left: "-50vw"
	    }, 1500 );

		$(".door-left").animate({
			left: "-50vw"
	    }, 1500 );

		$(".paper-right").animate({
			right: "-50vw"
	    }, 1500 );

		$(".door-right").animate({
			right: "-50vw"
	    }, 1500 );

		setTimeout(function(){

			$("#viewArea").animate({
				top: "-100vh"
		    }, 1500);
		}, 1500);
	});
});

var i = 1;
$(function(){
	$('#image').click(function () {

		switch(i) {

		case 1: $("#side_menu").animate({
				"left":"0"
			});
		break;

		case 2: $("#side_menu").animate({
				"left":"-300px"
			});
		break;

		}

		i++;
		if(i>2) {
			i = 1;
		}
	});
});