<?php
include_once('db.php');
$news_title=strip_tags($_POST['title']);
$news_body=strip_tags($_POST['body']);
if(isset($_COOKIE['add'])){
    echo '<div class="no"> انتظر قليلا</div>';
}
else if($news_title&&$news_body){
    $query="INSERT INTO `news` (`title`, `body`) value('$news_title'  , '$news_body')";
    mysqli_query( $con,$query);
    setcookie("add", 12, time() + 10);
    echo 'done';


}else{
   echo '<div class="no"> تم الوصول بطريقة غير صحيخة</div>';
}
