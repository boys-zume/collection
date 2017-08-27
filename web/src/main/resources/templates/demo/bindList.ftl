<div>
        bindList

        <form class="form-horizontal" method="get">
            <div class="form-group">
                <label for="nickList[0]" class="col-lg-2 control-label">nick1：</label>
                <div class="col-lg-5">
                    <input type="text" id="nickList[0]" name="nickList[0]" value="$!{webContext.nickList.get(0)}"/>
                </div>
            </div>

            <div class="form-group">
                <label for="nickList[1]" class="col-lg-2 control-label">nick2：</label>
                <div class="col-lg-5">
                    <input type="text" id="nickList[1]" name="nickList[1]" value="$!{webContext.nickList.get(1)}"/>
                </div>
            </div>


            <div class="form-group">
                <div class="col-lg-offset-2 col-lg-10">
                    <button type="submit" class="btn-primary">提交</button>
                </div>
            </div>

        </form>

        结果：${info}

</div>