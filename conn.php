<?php

// define("DB_HOST", "localhost");
// define("DB_USER", "root");
// define("DB_PASSWORD", "");
// define("DB_DATABASE", "trafficfine");

$conn = new mysqli("localhost", "root", "", "trafficfine");
 
  if ($conn) {
    echo "Connected!";
  } else {
    echo "Connection Failed";
  }
?>