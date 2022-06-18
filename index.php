<?php include_once('header.php');?>
<?php
$query=mysqli_query($con,"SELECT * FROM news ORDER BY `id`desc LIMIT 2");
while ($row=mysqli_fetch_assoc($query)){
$id=$row['id'];
$title=$row['title'];
$body=$row['body'];
echo '<div class="index"><span style="color: red ">'.$id .'|</span> <a href="view.php?id='.$id .'">'.$title.'</a></div>';
}
echo '<div class="load" id="load"></div>';
echo '<div class="more" id="'.$id.' "><a href="#">المزيد</a></div>';
?>

<?php include 'footer.php';?>

