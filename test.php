<?php
$to = "somebody@example.com";
$subject = "My subject";
$txt = "Hello world!";
$headers = "From: sales@divinewelfare.com" . "\r\n" .
"CC: devendra.sharma@consagous.com";

mail($to,$subject,$txt,$headers);
?>