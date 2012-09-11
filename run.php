<?php

$q = $_POST['q'];
$cmd = 'osascript /Users/brain/Sites/launch/s/';
$r = array( "status" => "true" );

switch ($q) {

	case "answer":
    $resp = exec("{$cmd}skype-answer.scpt");
    if ($resp == "true") {
      $r['cmd'] = 'hangup';
    }
    break;
    
	case "hangup":
    $resp = exec("{$cmd}skype-hangup.scpt");
    if ($resp == "true") {
      $r['cmd'] = 'answer';
    }
    break;

	case "hold":
    $resp = exec("{$cmd}skype-hold.scpt"); 
    if ($resp == "true") {
      $r['cmd'] = 'resume';
    }
    break;

	case "resume":
    $resp = exec("{$cmd}skype-resume.scpt"); 
    if ($resp == "true") {
      $r['cmd'] = 'hold';
    }
    break;

	case "mute":
    $resp = exec("{$cmd}skype-mute.scpt"); 
    if ($resp == "true") {
      $r['cmd'] = 'mute';
    }
    if ($resp == "false") {
      $r['cmd'] = 'unmute';
    }
    break;
  }

print json_encode($r);

?>