<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>首页</title>
        <link href="bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="css/default.css" rel="stylesheet">
        <script src="jquery/jquery-1.12.4.min.js" type="text/javascript"></script>
        <script src="bootstrap-3.3.7-dist/js/bootstrap.min.js" type="text/javascript"></script>
    </head>
    <body>
        <input type="hidden" id="menuId" value="${menuId}"/>
        <!-- 页头 -->
        <#include "control/header.ftl">

        <div class="container-fluid main-margin content-height" >
            <!-- 中间部位 -->
            <div class="row">
                <div class="col-lg-2 no-margin-padding">
                    <!-- 左侧菜单栏 -->
                    <#include "control/leftMenu.ftl">
                </div>
            </div>
            <!-- 主体内容区域 -->
            <div class="col-lg-10">
               <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-9">
                            <h4 class="text-center">欢迎光临</h4>
                            <img src="image/collection.jpg" class="welcomeLogoStyle" />
                        </div>
                        <div class="col-lg-3">
                        </div>
                    </div>
                    <div class="row" style="margin-top :100px">
                        <div class="col-lg-6 col-lg-offset-4">
                            <div class="panel panel-default">
                                <div class="panel-heading">常用功能导航</div>
                                <div class="panel-body">
                                    <a href="http://localhost:8080/demo/demoIndex.html">开发辅助-常见demo</a> |||
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- 页尾 -->
        <div class="container-fluid">
            <div class="row">
                <#include "control/footer.ftl">
            </div>
        </div>
    </body>
</html>
