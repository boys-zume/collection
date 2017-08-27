<div class="container">

        <input type="hidden" id="${csrfToken.parameterName}" name="${csrfToken.parameterName}" value="${csrfToken.token}"/>

    <p>jQuery ajax test---ajax.ajax </p>
    <div id="ajax_ajax" class="bg-info">这个div将被ajax.ajax替换</div>

    <p>jQuery ajax test---ajax.get</p>
    <div id="ajax_get" class="bg-info">这个div将被ajax.get替换</div>
    <p>jQuery ajax test-----------------------------ajax.post</p>
    <div id="ajax_post" class="bg-info">这个div将被ajax.post替换------</div>


    <p>jQuery ajax test---ajax.get--json格式返回</p>
    <div id="ajax_json" class="bg-info">这个div将被ajax.json替换------</div>

</div>

<script type="text/javascript">
    $(function() {
        //取出csrf隐藏域的值
        var csrfValue=$("#_csrf").val();
        //alert(csrfValue);


        // ajax.ajax
        $.ajax({
            type : "GET",
            url : "/demo/ajaxGetAndPost",
            data : "name=John&location=Boston",
            success : function(msg) {
                $("#ajax_ajax").html(msg);
            }
        });

        // ajax.get
        $.get("/demo/ajaxGet?name=iamGet", function(data) {
            $("#ajax_get").html(data);
        });
        // ajax.post
        $.post("/demo/ajaxPost?name=iamPost&_csrf="+csrfValue, function(data) {
            $("#ajax_post").html(data);
        });
        $.get("/demo/ajaxJson", function(data) {
            $("#ajax_json").html(data.data);
        });
    });
</script>