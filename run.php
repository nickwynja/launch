<?php

$p = '/Users/brain/Sites/launch/s/';
$cmd = 'osascript ';

$q = $_GET['q'];

error_log($q);

switch ($q) {

	case "answer":
    shell_exec($cmd . ' ' . $p . 'skype-answer.scpt');
		print "true";
		break;

	case "decline":
    shell_exec($cmd . ' ' . $p . 'skype-decline.scpt'); 
		break;

	case "hangup":
    shell_exec($cmd . ' ' . $p . 'skype-hangup.scpt'); 
		break;

	case "hold":
    shell_exec($cmd . ' ' . $p . 'skype-hold.scpt'); 
		break;

	case "mute":
    shell_exec($cmd . ' ' . $p . 'skype-mute.scpt'); 
		break;

	case "resume":
    shell_exec($cmd . $p . 'skype-resume.scpt'); 
		break;

  }

?>
