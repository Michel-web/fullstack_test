<?php

require_once 'utils.php';
require_once 'database.php';

session_start();

if (!isset($_SESSION['logged_user'])) {
  error('You must logged in');
}

PaiDatabase::connectDB();

$users = PaiDatabase::getSQLRecords("SELECT * from students");

success($users);