<?php
$dsn="mysql:host=localhost;charset=utf8;dbname=resume";
$pdo=new PDO($dsn,"root","");

session_start();


function all($table,...$arg){
    global $pdo;
  
    $sql="select * from $table";
  
      if(!empty($arg[0])){
  
        foreach($arg[0] as $key => $value){
  
          $tmp[]=sprintf("`%s`='%s'",$key,$value);
  
        }
        $sql=$sql . " where " . implode(" && ",$tmp);
  
      }    
  
      if(!empty($arg[1])){
  
        $sql=$sql . $arg[1];
  
      }
  
    return $pdo->query($sql)->fetchAll();
  }

//   include "./front/home.php";

  $rows = all("autobiography", ["sh" => 1], " limit 5");

?>