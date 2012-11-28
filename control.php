<?php
$g = strtolower($_GET['Body']);

function brain_log($str) {
  $now =  $date = date("Y-m-d H:i:s");
  $file = "/users/brain/Dropbox/Documents/brain.log";
  $str = "{$now}: {$str}\n";
  file_put_contents($file, $str, FILE_APPEND);
}

switch ($g) {

  case "echo auth":
    exec("/Users/brain/Library/Scripts/sms-pin.sh ECHO");
    brain_log("Generated new auth code for ECHO device.");
  break;
    
  case "delta auth":
    exec("/Users/brain/Library/Scripts/sms-pin.sh DELTA");
    brain_log("Generated new auth code for DELTA device.");
  break;

}
?>