<?Php
include_once ('db.php');
$user_name=strip_tags($_POST['user_name']);
$comment=strip_tags($_POST['comment']);
$news_id= intval($_POST['news_id']);
if(!$news_id){
    echo'<div class="no">طريقة خاطئة</div>';
}
elseif ($user_name==''){
    echo'<div class="no">ارجاء ادخال الاسم</div>';
}
elseif ($comment==''){
    echo'<div class="no">ارجاء ادخال التعليق</div>';
}
elseif (strlen($user_name)>30){
    echo'<div class="no">اسم المستخدم طويل جدا</div>';
}
elseif (strlen($user_name)<5){
    echo'<div class="no">اسم المستخدم قصير جدا</div>';
}
elseif (strlen($comment)<10){
    echo'<div class="no">التعليق قصير جدا</div>';
}
elseif (strlen($comment)>30000){
    echo'<div class="no">التعليق طويل جدا</div>';
}else{
    $query=mysqli_query($con,"INSERT INTO `comments`(
                                                           `user_name`,
                                                           `comment`,
                                                           `news_id`
                                                           )
                                                            VALUES (
                                                                    '$user_name',
                                                                    '$comment',
                                                                    '$news_id'
                                                                    )
                                                                    ");
    if($query){
        echo 'yes';
    }
}