<?php
include_once('db.php');
$value = '';
if (isset($_POST['id'])) {
    $idd = intval($_POST['id']);
    $query1 = mysqli_query($con, 'SELECT * FROM news WHERE `id`= ' . $idd . '');
    if (mysqli_num_rows($query1)) {

        $query2 = mysqli_query($con, 'DELETE FROM news WHERE `id`= ' . $idd . '');
        if ($query2) {
            $value = 'done';
        } else {
            $value = 'error';
        }
    } else {
        $value = 'error';
    }


    echo $value;

}