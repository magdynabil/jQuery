<?php
include_once('header.php');
if (isset($_GET['id'])) {
    $id = intval($_GET['id']);
    $query1 = mysqli_query($con, 'SELECT * FROM news WHERE `id`= ' . $id . '');
    if ($num = @mysqli_num_rows($query1)) {
        $row = mysqli_fetch_assoc($query1);
        echo '<h1>' . $row['title'] . '</h1>';
        echo '<br>';
        echo '<hr>';
        echo '<p>' . $row['body'] . '</p>';
        echo '<br>';
        echo '<br>';
        echo '<br>';
        echo '<hr>';
        echo '<br>';
        echo '<h3>التعليقات</h3>';
        echo '<hr>';
        $query2 = mysqli_query($con, 'SELECT * FROM comments WHERE `news_id`= ' . $id . '');
        if ($num = @mysqli_num_rows($query2)) {
            while ($row2 = mysqli_fetch_assoc($query2)) {
                echo '<div class="index"> علق: <span style="color: #ff5500" >' . $row2['user_name'] . '</span>
                        <hr>
                        <br>
                        <p>' . $row2['comment'] . '</p>
                      </div>';
            }

        }
        echo '<div id="insert_comment"></div>';
        echo '<div id="insert_comment2"></div>';
        echo '<form class="form" id="add_comment_form"><table width="40%" dir="rtl">
                   <tr>
                   <td>اسم المعلق </td>
                   <td><input type="text" id="user_name" name="user_name"/></td>
                   </tr>
                   <td>التعليق </td>
                   <td><textarea type="text"  id="comment" size="40%" cols="50" rows="10" name="comment"></textarea></td>
                   </tr>
                    </tr>
                    <td><input type="hidden" value="'.$id.'" name="news_id"/></td>
                   <td><input type="button" value="اضافة تعليق" name="add" id="add"/></td>
                   </tr>
                  </table>
                  </form>';
    } else {
        echo '<div class="no">لقد دخلت رابط خطأ</div>';
    }

} else {
    echo '<div class="no">لقد دخلت رابط خطأ</div>';
}


include 'footer.php'; ?>
