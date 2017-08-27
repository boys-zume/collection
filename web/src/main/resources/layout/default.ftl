<!DOCTYPE html>
<head>
    <meta charset="utf-8">
    <title>首页</title>
    <link href="/static/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="/static/css/default.css" rel="stylesheet">
    <script src="/static/jquery/jquery-1.12.4.min.js" type="text/javascript"></script>
    <script src="/static/bootstrap-3.3.7-dist/js/bootstrap.min.js" type="text/javascript"></script>
</head>
<body>
<input type="hidden" id="menuId" value="${menuId}"/>
<!-- 页头 -->
<#include "/templates/control/header.ftl">

<div class="container-fluid main-margin content-height" >
    <!-- 中间部位 -->
    <div class="row">
        <div class="col-lg-2 no-margin-padding">
            <!-- 左侧菜单栏 -->
            <#include "/templates/control/leftMenu.ftl">
        </div>
        <!-- 主体内容区域 -->
        <div class="col-lg-10">
            $screen_content
        </div>
    </div>
</div>

<!-- 页尾 -->
<div class="container-fluid">
    <div class="row">
        <#include "/templates/control/footer.ftl">
    </div>
</div>
<script src="/static/js/default.js" type="text/javascript"></script>
</body>
</html>
