<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<link rel="stylesheet" type="text/css" href="Register.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>メニュー画面</title>
<script
 src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
</head>
<body>
 <div id="blook1">
  <div id="blook2">
  			<h1 align="center">
				<b>商品登録</b>
			</h1>
				<p class="mb1">
					登録日：<input name="day1" type="text" style="text-align: right;" size="1">月
						<input name="day2" type="text" style="text-align: right;" size="1">日
				</p>
				<div id="width">
					<p class="mb1">
						品番：<select name="order1">
							<option value="1">PIXUS MG7730F</option>
							<option value="2">PIXUS MG7730</option>
							<option value="3">PIXUS MG6930</option>
							<option value="4">PIXUS MG5730</option>
							<option value="5">PIXUS MG3630</option>
						</select>
					</p>
				</div>
				<div id="width2">
					<p class="mb1">
						発注数:<input type="text" name="order2" size="2">
					</p>
				</div>
				<p class="mb2">
					登録者名：<input type="text" name="name">
				</p>
				<div id="width">
					<p class="mb2">
						納品完了予定日：
						<input name="comp1" type="text" style="text-align: right;" size="2">年
						<input name="comp2" type="text" style="text-align: right;" size="1">月
						<input name="comp3" type="text" style="text-align: right;" size="1">日
					</p>
				</div>
				<h3>※登録完了後の品番、発注数の変更はできません。</h3>
				<p class="submit" align="center">
					<input type="submit" value="次へ">
				</p>
  </div>
  <div id="blook5">
   <div id="blook3">
    <div id="Menu">
     <h2>Menu</h2>
    </div>
   </div>
   <div id="blook4">
    <div id="button1">
     <input type="button" value="発注確認">
    </div>
    <div id="button2">
     <input type="button" value="進捗確認">
    </div>
        <div id="button3">
     <input type="button" value="注文発注">
    </div>
        <div id="button4">
     <input type="button" value="発送準備">
    </div>
   </div>
  </div>
 </div>
</body>
</html>