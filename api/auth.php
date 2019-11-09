<?php

require_once 'utils.php';
require_once 'database.php';

session_start();

if ($_SERVER['REQUEST_METHOD'] === 'DELETE') {
    unset($_SESSION['logged_user']);
    session_unset();
    success('success');
}

PaiDatabase::connectDB();

$login = post('username');
$pwd = post('password');

if ($login === null || $pwd === null) {
    error();
} else {
    $qry = sprintf("SELECT * from `api_users` where login='%s' and password='%s'", $login, md5($pwd));
    $res = PaiDatabase::getSQLRecords($qry);
    if (count($res) > 0) {
        $_SESSION['logged_user'] = $res[0]['id'];
        success($res[0]['id']);
    } else {
        error('Incorrect information');
    }
}
