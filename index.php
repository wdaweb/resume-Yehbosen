<?php include_once "base.php";?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>Document</title>
    <script src="./js/jquery-1.9.1.min.js"></script>
    <script src="./js/js.js"></script>
</head>
<body>
<?php

//利用網址傳值的方式來取得$_GET['do']的值，這個值代表我們要include進來的檔案
$do=(!empty($_GET['do']))?$_GET['do']:"home";

//我們將所有要include進來的後台功能檔案都放在 ./admin 目錄下，因此根據GET的值來組合include檔的完整路徑
$path="./front/" . $do . ".php";

//判斷檔案是否存在來決定是要匯入檔案還是預設匯入title.php
if(file_exists($path)){
  include $path;
}else{
  include "./front/home.php";
}
   
?>

<div class="" style="height:540px; width:23%; padding:0px; margin-left:22px; float:left; ">
                	<!--右邊-->
					<!--[可不做]依據session的有無來決定要顯示的按鈕文字及行為-->
					<?php

						if(empty($_SESSION['login'])){
					?>
                	<button style="width:100%; margin-left:auto; 
					margin-right:auto; margin-top:2px; 
					height:50px;" onclick="lo(&#39;?do=login&#39;)">管理登入</button>
					<?php
						}else{
					?>
                	<button style="width:100%; margin-left:auto; 
					margin-right:auto; margin-top:2px; 
					height:50px;" onclick="lo(&#39;admin.php&#39;)">返回管理</button>
					<?php
						}
					?>
</div>
</body>
</html>
