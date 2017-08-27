<nav class="nav-pills navbar-static-top">
        <div class="container-fluid">
            <div id="navbar" class="navbar-collapse collapse bg-header">
                <ul class="nav navbar-nav nav-pills  bg-header">
                    <li><a href="/"><img src="/static/image/collection.jpg" class="logoStyle"/></a></li>
                    <#if loginInfo??>
                        <li>
                            <a href="${appConfig.profileUrl}${(loginUser.empId)!}" target="_blank">
                                <img src="/static/image/profile2.png" alt="login" width="20" height="20"/>
                                <span>${loginInfo!}</span>
                            </a>
                        </li>
                    <#else>
                        <li><a>尚未登录</a></li>
                    </#if>               
                </ul>
            </div>
        </div>
</nav>

