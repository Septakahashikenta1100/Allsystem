<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset='utf-8'>
<title>Focused - jQueryプラグイン</title>

<!-- ↓で、jQueryを使用可能にするためのscript -->
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>

<!-- ↓で、選択した値ごとに画像を表示させる -->
<script src="jquery.focused.js"></script>
</head>
<body>
<h1>Focused のデモでーす。</h1>
<div class="demo">
<select name="focus">
  <option value="1">PIXUS MG7730F</option>
  <option value="2">プリニー1</option>
  <option value="3">プリニー2</option>
  <option value="4">プリニー3</option>
</select>
<!-- 選択した値ごとに画像を表示させる画像のURL -->
<div data-focus="1">
  <img src="http://cweb.canon.jp/pixus/lineup/allinone/mg7730f/img/index/prod-photo.jpg">
</div>
<div data-focus="2">
  <img src="http://stat.ameba.jp/user_images/bd/3e/10096816699_s.jpg">
</div>
<div data-focus="3">
  <img src="http://www.cardbox.sc/image/shop/181/201412/30pri_002.jpg">
</div>
<div data-focus="4">
  <img src="https://pbs.twimg.com/profile_images/2774986233/6740483b681ca44dc60683fdbf768719_400x400.jpeg">
</div>
<!-- ↑ここまで↑ -->
</div>

<script>
$(function domReady() {
	<!-- ↓demoの中身を表示させる -->
  $('.demo').focused();
});
</script>
</body>
</html>
