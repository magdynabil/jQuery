<?php include_once('header.php');?>
<?php
echo '<div class="load" id="load"></div>';
$query=mysqli_query($con,"SELECT * FROM news ORDER BY `id`desc");
while ($row=mysqli_fetch_assoc($query)){
    $id=$row['id'];
    $title=$row['title'];
    $body=$row['body'];
    echo '<div class="index"><span style="color: red ">'.$id .'|</span> <a class="delete" id="'.$id.' " style="float: left" >حذف</a>
                                             </div>';

}


?>

<?php include 'footer.php';?>

