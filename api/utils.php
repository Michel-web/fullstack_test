<?php

function post($var, $default = null) {
    if (isset($_POST[$var])) return $_POST[$var];
    return $default;
}

function error($msg = "Fatal error!") {
    echo json_encode(array(
        'result' => 'error',
        'msg' => $msg
    ));
    PaiDatabase::disconnectDB();
    die();
}

function success($data) {
    echo json_encode(array(
        'result' => 'ok',
        'data' => $data
    ));
    PaiDatabase::disconnectDB();
    die();
}
