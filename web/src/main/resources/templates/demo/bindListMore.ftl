<div>
        bindList
##    当前已经放置了几个nick
        <input type="hidden" id="curCount" value="$!{curCount}"/>

        <form class="form-horizontal" method="get">
            <div class="form-group">
                <label for="nickList[0]" class="col-lg-2 control-label">nick1：</label>
                <div class="col-lg-5">
                    <input type="text" id="nickList[0]" name="nickList[0]"
                                                  value="$!{webContext.nickList.get(0)}"/>
                </div>
            </div>

            <div class="form-group" id="flag">
                <label for="nickList[1]" class="col-lg-2 control-label">nick2：</label>
                <div class="col-lg-5">
                    <input type="text" id="nickList[1]" name="nickList[1]"
                                                  value="$!{webContext.nickList.get(1)}"/>
                </div>
            </div>

##        供add的容器，后面改变做法
            <div class="form-group" >
                <label for="nickList[2]" class="col-lg-2 control-label">nick3：</label>
                <div class="col-lg-5" id="temp">
                </div>
            </div>


            <div class="form-group">
                <div class="col-lg-offset-2 col-lg-1">
                    <button type="submit" class="btn-primary">提交</button>
                </div>

                <div class="col-lg-1">
                    <button type="button" id="addButton" class="btn-primary">+</button>
                </div>
            </div>

        </form>

        结果：$!info

</div>

<script src="/js/demo/bindListMore.js"></script>