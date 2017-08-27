<div class="container-fluid full-height">


        <form action="/demo/uploadSubmit.do" method="post" enctype="multipart/form-data">
            <p>请选择excel文件:</p>
            <input type="hidden" id="${csrfToken.parameterName}" name="${csrfToken.parameterName}"
                   value="${csrfToken.token}"/>


        ##        <input type="file" name="fileUpload" accept="application/vnd.ms-excel">
            <input type="file" name="fileUpload"
                   accept="application/vnd.ms-excel,application/vnd.openxmlformats-officedocument.spreadsheetml.sheet">
        ##        <input type="file" name="fileUpload" accept=".xlsx,.xls">

            <br/>

            <input type="submit" value="提交"/>
        </form>

        <br/>

##    显示excel内容
        <#if $sheet??>
            <p> 下面显示上传excel文件的内容</p>
            <table class="table table-bordered">
                <#list [0..${rowCount}]>
                    <#items as foo >
                    <tr>
                            <#list sheet.getRow(foo) as cellItem>
                                <td> ${cellItem}</td>
                            </#list>
                        </tr>
                    </#items>
                </#list>

                </table>
        </#if>

        <#if $errorMsg??>
            #parse("/control/errorMsg.vm")
        </#if>
</div>