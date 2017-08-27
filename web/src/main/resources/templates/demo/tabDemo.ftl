##标签头
<ul id="myTab" class="nav nav-tabs">
        <li class="active">
            <a href="#stat" data-toggle="tab">
                账单汇总
            </a>
        </li>
        <li><a href="#tpList" data-toggle="tab">TP商账单明细</a></li>
        <li><a href="#cpdList" data-toggle="tab">村拍档账单明细</a></li>
        <li class="dropdown">
            <a href="#" id="myTabDrop1" class="dropdown-toggle"
                          data-toggle="dropdown">Java技术
                <b class="caret"></b>
            </a>
            <ul class="dropdown-menu" role="menu" aria-labelledby="myTabDrop1">
                <li><a href="#springBoot" tabindex="-1" data-toggle="tab">springBoot</a></li>
                <li><a href="#devOps" tabindex="-1" data-toggle="tab">DevOps</a></li>
            </ul>
        </li>
</ul>

##tab页内容
<div id="myTabContent" class="tab-content">
        <div class="tab-pane fade in active" id="stat">
            <p>单页面-真tabDemo，所有内容在同一个页面，同一次请求</p>
            <p>汇总账单-tab页内容</p>
        </div>
        <div class="tab-pane fade" id="tpList">
            <p>tpList-tab页内容</p>
        </div>
        <div class="tab-pane fade" id="cpdList">
            <p>村拍档账单明细-tab页内容</p>
        </div>
        <div class="tab-pane fade" id="springBoot">
            <p> 独立运行的应用
                无需部署到容器，无需插件
                自动配置和丰富的starters
                actuator装置
            </p>
        </div>
        <div class="tab-pane fade" id="devOps">
            <p>DevOps 就是开发（Development）和运维（Operations）这两个领域的合并。</p>
            <p>这两个领域对对方都有深深的恐惧。</p>

            <p>为什么？开发对scm，pe的冗长繁复的脚本望而生畏，另一方面scm对于开发的各种奇奇怪怪的应用表示不可理喻，支持不过来。</p>
        </div>
</div>

