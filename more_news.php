<?php
include_once ('db.php');
$id='';
if(isset($_POST['news_id'])) {
    $idd = $_POST['news_id'];
    $query1 = mysqli_query($con, "SELECT * FROM news where `id` < $idd ORDER BY `id`desc LIMIT 5");
    while ($row1 = @mysqli_fetch_assoc($query1)) {
        $id = $row1['id'];
        $title = $row1['title'];
        $body = $row1['body'];
        echo '<div class="index"><span style="color: red ">' . $id . '|</span> <a href="view.php?id=' . $id . '">' . $title . '</a></div>';
    }
    if($id) {
        echo '<div class="more" id="' . $id . ' "><a href="#"> ' . $id . 'المزيد</a></div>';
    }
}else{
    echo 'error';
}

?>
