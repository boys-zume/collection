/*
  * 	demo
  */
$(function () {
    // 增加html元素
    $("#addButton").click(function () {
        var curCount = $("#curCount").val();
        alert("curCount="+curCount);
        $(curCount).append('<input type="text" id="nickList" name="nickList" />');
    });
});


