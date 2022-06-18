$(function (){
    function get_character_length(id,span,n) {
        $(id).keyup(function () {

            var active_length = $(this).val().length;
            var max_length = $(this).attr('maxlength');
            var length = max_length - active_length;
            if(active_length < n){
                $(id).css({'background': '#f1f1f1',  'border': '1px solid red'});
                $(span).html('عدد الحروف اقل من'+n);
            }else {
                $(id).css({'background': '#f1f1f1',  'border': '1px solid green'});
                $(span).html('المتيقي'+length+'حرف');
            }

        });
    }
    get_character_length('#news_title','#title_span',10);
    get_character_length('#news_body','#body_span',50);
//form validation
        $('#add_news').click(function (){
            $('#loading').html('<img src="img/loading.gif" alt="Italian Trulli" width="30px" height="30px">');
            var title_lenght = $('#news_title').val().length;
            var body_lenght = $('#news_body').val().length;
             if(title_lenght ==''&& body_lenght ==''){
                 $('#show').html('<div class=\'no\'>الحقول بالاسفل مطلوبة</div>').fadeOut(1000).fadeIn(1000);

                 $('#news_title').fadeOut(1000).fadeIn(1000);
                 $('#news_title').css({border:'2px solid  #F2A0A0' });
                 $('#news_body').fadeOut(1000).fadeIn(1000);
                 $('#news_body').css({border:'2px solid  #F2A0A0' });
                //$('#loading').hide();
             }
        else if(title_lenght ==''){
                $('#show').html('<div class=\'no\'>الرجاء ادخال عنوان الخبر</div>').fadeOut(1000).fadeIn(1000);
                $('#news_title').fadeOut(1000).fadeIn(1000);
                $('#news_title').css({border:'2px solid  #F2A0A0' });
                // $('#loading').hide();
            }
           else if(title_lenght < 10){
                $('#show').html('<div class=\'no\'>  عنوان الخبر قصير </div>').fadeOut(1000).fadeIn(1000);
                $('#news_title').fadeOut(1000).fadeIn(1000);
                $('#news_title').css({border:'2px solid  #F2A0A0' });
                // $('#loading').hide();
            }
            else if(body_lenght == ''){
                $('#show').html('<div class=\'no\'>الرجاء ادخال محتوي الخبر</div>').fadeOut(1000).fadeIn(1000);
                $('#news_body').fadeOut(1000).fadeIn(1000);
                $('#news_body').css({border:'2px solid  #F2A0A0' });
                // $('#loading').hide();
            }
            else if(body_lenght < 50){
                $('#show').html('<div class=\'no\'>محتوي  الخبر قصير</div>').fadeOut(1000).fadeIn(1000);
                $('#news_body').fadeOut(1000).fadeIn(1000);
                $('#news_body').css({border:'2px solid  #F2A0A0' });
                // $('#loading').hide();
            }else {
               // $('#show').html('<div class=\'ok\'>تمت الاضافة بنجاح</div>').fadeOut(1000).fadeIn(1000);
                 var data=$('#form_add_news').serialize();

                 $.post('add_post.php',data,function (data){
                     if (data=='done'){
                         $('#show').html('<div class=\'ok\'>تمت الاضافة بنجاح</div>').fadeOut(1000).fadeIn(1000);
                         $('#form_add_news').fadeOut(2000).fadeIn(200);
                         $('#loading').hide();
                     }else {$('#show').html(data)}
                 });
            }
        });//end form validation
    //load more
    $('body').on("click", ".more", function (){
            $('.more').hide();
            var news_id=$(this).attr('id');
            if (news_id){
                $.ajax({
                   url:'more_news.php',
                    type:'POST',
                    data:'news_id='+news_id,
                    success:function (data) {
                        $('#load').append(data);

                    }
                });
            }else {
                $('.more').hide();
            }
            
        });  //end load more
    //delete
    $('.delete').click( function (){
       var id=$(this).attr('id');
       var parent=$(this).parent();
        $.post('jquery_delete.php',{id},function (data) {
            if(data=='done'){
                parent.hide(1000);
                $('#load').html('<div class=\'ok\'>تمت الحذف بنجاح</div>').fadeOut(1000).fadeIn(1000);
            }else {
                $('#load').html('<div class=\'no\'>حدث خطأ غير متوقع</div>').fadeOut(1000).fadeIn(1000);
            }

        });

return false;
    });  //end delete
    $('#add').click( function (){
        var dcomm=$('#add_comment_form').serialize();
        var user_name = $('#user_name').val();
        var comment=$('#comment').val();

        var comment_show='<div class="index"> علق: <span style="color: #ff5500" >'+user_name+'</span> <hr> <br> <p>'+comment+'</p> </div>';
        $.post('view_jquery.php',dcomm,function (data) {
            if(data=='yes'){
                $('#insert_comment').html(comment_show);
                $('#insert_comment2').fadeOut(1000);
            }
            else{
                $('#insert_comment2').html(data).fadeIn(100);
            }

        });
    });

});