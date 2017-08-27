###set($pageCount=$)
###set($pageNo=2)

<div>
        <div class="row">
            <p>评价查询 </p>
            <form method="get">
                <label for="raterNick">评价者：</label><input type="text" name="raterNick" value=" "/>
                <input type="submit" value="搜索"/>
            </form>
        </div>

        <div class="row">
            <!-- Table -->
            <table class="table">
                <tr>
                    <td width="200">评价者</td>
                    <td width="200">被评价者</td>
                    <td width="400">评论内容</td>
                    <td>商品</td>
                </tr>
                <tr>
                    <td width="200">评价者</td>
                    <td width="200">被评价者</td>
                    <td width="400">评论内容</td>
                    <td>商品</td>
                </tr>
                <tr>
                    <td width="200">评价者</td>
                    <td width="200">被评价者</td>
                    <td width="400">评论内容</td>
                    <td>商品</td>
                </tr>
            </table>
        </div>

        <div class="row">
        ##分页
            <nav class="text-center">
                #parse("control/paging.vm")
            </nav>
        </div>

</div>