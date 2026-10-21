<?php
$host = "sql313.infinityfree.com";      // MySQL Hostname
$user = "if0_43232738";                 // MySQL Username
$pass = "wrewgDr0w1";       // password ng hosting account
$dbname = "if0_43232738_taskmanager";   // Database Name

$conn = new mysqli($host, $user, $pass, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

session_start();

function require_login() {
    if (!isset($_SESSION['user_id'])) {
        header("Location: login.php");
        exit;
    }
}