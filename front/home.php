
</div>
<div style="overflow:hidden; padding:2px; margin-top:10px; padding:5px 10px 5px 10px; position:relative">

  <span>portrait</span>

  <ol class="ssaa" style="list-style-type:none">
  <?php

  //取出設定為顯示的前五筆資料
  $rows = all("portrait", ["sh" => 1], " limit 10");

  //利用迴圈把資料印出來
  foreach($rows as $k => $r){
    echo "<div class='im' id='ssaa$k' >";
    echo "<img src='./img/".$r['file']."' width:20px>";
    echo "</div>";
  }
  ?>
  </ol>
</div><div style="width:95%; padding:2px; margin-top:10px; padding:5px 10px 5px 10px; position:relative">

  <span>information</span>

  <ol class="ssaa" style="list-style-type:none">
  <?php
  
  //取出設定為顯示的前五筆資料
  $rows = all("information", ["sh" => 1], " limit 5");
  
  //利用迴圈把資料印出來
  foreach ($rows as $r) {
  echo "<li>";
  echo mb_substr($r['text'], 0, 5000, "utf8");  //用mb_substr()來截取字串
  
  }
  ?>
  </ol>
</div>
<div style="width:95%; padding:2px; margin-top:10px; padding:5px 10px 5px 10px; position:relative">

  <span>skill</span>

  <ol class="ssaa" style="list-style-type:none">
  <?php

  //取出設定為顯示的前五筆資料
  $rows = all("skill", ["sh" => 1], " limit 5");

  //利用迴圈把資料印出來
  foreach ($rows as $r) {
  echo "<li>";
  echo mb_substr($r['text'], 0, 5000, "utf8");  //用mb_substr()來截取字串

  }
  ?>
  </ol>
</div>
<div style="width:95%; padding:2px; margin-top:10px; padding:5px 10px 5px 10px; position:relative">

  <span>study</span>

  <ol class="ssaa" style="list-style-type:none">
  <?php

  //取出設定為顯示的前五筆資料
  $rows = all("study", ["sh" => 1], " limit 5");

  //利用迴圈把資料印出來
  foreach ($rows as $r) {
  echo "<li>";
  echo mb_substr($r['text'], 0, 5000, "utf8");  //用mb_substr()來截取字串

  }
  ?>
  </ol>
</div>
<div style="width:95%; padding:2px; margin-top:10px; padding:5px 10px 5px 10px; position:relative">

  <span>work</span>

  <ol class="ssaa" style="list-style-type:none">
  <?php

  //取出設定為顯示的前五筆資料
  $rows = all("work", ["sh" => 1], " limit 5");

  //利用迴圈把資料印出來
  foreach ($rows as $r) {
  echo "<li>";
  echo mb_substr($r['text'], 0, 5000, "utf8");  //用mb_substr()來截取字串

  }
  ?>
  </ol>
</div>
<div style="width:95%; padding:2px; margin-top:10px; padding:5px 10px 5px 10px; position:relative">

  <span>information</span>

  <ol class="ssaa" style="list-style-type:none">
  <?php

  //取出設定為顯示的前五筆資料
  $rows = all("information", ["sh" => 1], " limit 5");

  //利用迴圈把資料印出來
  foreach ($rows as $r) {
  echo "<li>";
  echo mb_substr($r['text'], 0, 5000, "utf8");  //用mb_substr()來截取字串

  }
  ?>
  </ol>
</div>
<div style="width:95%; padding:2px; margin-top:10px; padding:5px 10px 5px 10px; position:relative">

  <span>autobiography</span>

  <ol class="ssaa" style="list-style-type:none">
  <?php

  //取出設定為顯示的前五筆資料
  $rows = all("autobiography", ["sh" => 1], " limit 5");

  //利用迴圈把資料印出來
  foreach ($rows as $r) {
  echo "<li>";
  echo mb_substr($r['text'], 0, 5000, "utf8");  //用mb_substr()來截取字串

  }
  ?>
  </ol>
</div>
<div style="width:50%; padding:2px; margin-top:10px; padding:5px 10px 5px 10px; position:relative">

  <span>requirement</span>

  <ol class="ssaa" style="list-style-type:none">
  <?php

  //取出設定為顯示的前五筆資料
  $rows = all("requirement", ["sh" => 1], " limit 5");

  //利用迴圈把資料印出來
  foreach ($rows as $r) {
  echo "<li>";
  echo mb_substr($r['text'], 0, 5000, "utf8");  //用mb_substr()來截取字串

  }
  ?>
  </ol>
</div>
<div style="overflow:hidden; padding:2px; margin-top:10px; padding:5px 10px 5px 10px; position:relative">

  <span>portfolio</span>

  <ol class="ssaa" style="list-style-type:none">
  <?php

  //取出設定為顯示的前五筆資料
  $rows = all("portfolio", ["sh" => 1], " limit 10");

  //利用迴圈把資料印出來
  foreach($rows as $k => $r){
    echo "<div class='im' id='ssaa$k' >";
    echo "<img src='./img/".$r['file']."' width:20px>";
    echo "</div>";
  }
  ?>
  </ol>
</div>
