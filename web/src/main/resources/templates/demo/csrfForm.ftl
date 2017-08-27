<p>提交进行csrfToken校验实例，如不提供csrfToken，将校验不通过，请求返回403</p>
<form method="post" action="/lab/csrfSubmit.do">
        <input type="hidden" id="${csrfToken.parameterName}" name="${csrfToken.parameterName}" value="${csrfToken.token}"/>
        <label for="userName">name：</label><input type="text" name="name"/>
        <input type="submit" value="Submit"/>
</form>

<div>$!data</div>