/* 应用级别公用的js  */
/*
  * 	使当前菜单高亮
  */
$(function () {
    //得到页面上的一个埋点的值
    var menuId = $("#menuId").val();
    var menuItem = "#" + menuId;
    $(menuItem).addClass("active");
});