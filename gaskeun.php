<?php
error_reporting(0);
require 'phpmailer/PHPMailerAutoload.php';
require 'setting.php';

$mail = new PHPMailer();
$mail->IsSMTP();
$mail->CharSet = 'UTF-8';
$mail->Host       = $smtphost; 
$mail->SMTPDebug  = 0;                     
$mail->SMTPAuth   = true;                  
$mail->Port       = 587;                    
$mail->Username   = $username;
$mail->Password   = $password;
$mail->SMTPSecure = $smtpsecure;
$mail->setFrom($sentfrom, $sendername);
$mail->addAddress($argv[1]);
$mail->Subject = $subject;
$mail->Body    = $body;
$mail->isHTML(true);  

if (!$argv[1]) {
	echo 'argv[1] Not Found';
} else {
	if (!$mail->send()) {
		echo "ERROR = $mail->ErrorInfo\n";
	} else {
		echo "SUKSES\n";
	}
}