<?php
include_once "base.php";
?>
<!DOCTYPE html
  PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0068)?do=title -->
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

  <title>履歷後台</title>
  <link href="./css/css.css" rel="stylesheet" type="text/css">
  <script src="./js/jquery-1.9.1.min.js"></script>
  <script src="./js/js.js"></script>
<body>
<div id="cover" style="display:none; ">
    <div id="coverr">
      <a style="position:absolute; right:3px; top:4px; cursor:pointer; z-index:9999;"
        onclick="cl(&#39;#cover&#39;)">X</a>
      <div id="cvr" style="position:absolute; width:99%; height:100%; margin:auto; z-index:9898;"></div>
    </div>
  </div>
<div id="">
      <div id="">
        <div id="" class="">
          <span class="">後台管理選單</span>
          <a style="font-size:30px; text-decoration:none;" href="?do=portrait">
            <div class="">
              肖像 
            </div>
          </a>
          <a style="font-size:30px; text-decoration:none;" href="?do=information">
            <div class="">
              個人資料 
            </div>
          </a>
          <a style="font-size:30px; text-decoration:none;" href="?do=skill">
            <div class="">
              技能 
            </div>
          </a>
          <a style="font-size:30px; text-decoration:none;" href="?do=requirement">
            <div class="">
              求職條件 
            </div>
          </a>
          <a style="font-size:30px; text-decoration:none;" href="?do=study">
            <div class="">
              學經歷 
            </div>
          </a>
          <a style="font-size:30px; text-decoration:none;" href="?do=work">
            <div class="">
              工作經歷 
            </div>
          </a>
          <a style="font-size:30px; text-decoration:none;" href="?do=autobiography">
            <div class="">
              自傳 
            </div>
          </a>
          <a style="font-size:30px; text-decoration:none;" href="?do=portfolio">
            <div class="">
              作品集 
            </div>
          </a>
          <!-- <a style="font-size:30px; text-decoration:none;" href="?do=admin">
            <div class="">
              管理者帳號管理 
            </div>
          </a> -->

          <table width="100%">
          <tbody>
            <tr>
                <td><button onclick="location.replace('./api/logout.php')"
                  style="width:99%; margin-right:2px; height:50px;">管理登出</button>
                </td>
            </tr>
          </tbody>
        </table>

        </div>

        <?php
            $do=(!empty($_GET['do']))?$_GET['do']:"information";
            $path="./admin/" . $do . ".php";

            if(file_exists($path)){
              include $path;
            }else{
              include "./admin/information.php";
            }
        ?>
</body>
</html>