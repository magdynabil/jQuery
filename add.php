<?php include_once('header.php');?>
    <link rel="stylesheet" type="text/css" href="css/add_style.css"/>
    <script type="text/javascript" src="js/add_jquery.js"></script>
<h1 style="margin-bottom: 7px; margin-right: 20px;">اضافة خبر</h1>

<hr>
    <div id="show"></div>
<form id="form_add_news">
<table class="table" width="90%" align="rtl">
    <tr>
        <td> عنوان الخبر</td>
        <td><input  type="text" size="40" id="news_title" maxlength="150" name="title" ><span id="title_span" ></span></td>
    </tr>
    <tr>

        <td> عنوان الخبر</td>
        <td> <textarea type="text" cols="60" rows="7" id="news_body" maxlength="1000" name="body" ></textarea><span id="body_span" ></span> </td>
    </tr>
    <tr>

        <td> <input type="button" id="add_news" value="اضافة خبر"><span id="loading" ></span></td>
    </tr>
</table>
</form>

<?php include 'footer.php';?>