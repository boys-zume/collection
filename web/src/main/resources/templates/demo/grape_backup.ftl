<p>
    ${abc}
</p>

<p>-----grape.vm-----</p>

<#assign $code = "<script>alert('1');</script>" >
<#assign $code2 = "<script>alert('2');</script>" >
${code}
${code2}

xss测试：
<hr/>
不过滤 ： ${myScript}
<p/>

过滤测试1：${securityUtil.escapeHtml(myScript)}

<p/>
过滤测试2：${securityUtil.escapeHtml(myScript)}

<p/>
csrf测试：${csrfToken.parameterName}

<p/>
<p> ${csrfToken.token} </p>


<hr/>
styleVersion: [${styleVersion}]

<p/>

myKit.say() --- ${myKit.say()}

<p/>



<p>
    测试测试试试
    TOOLS_VERSION:${TOOLS_VERSION}
</p>

<p>
    GENERIC_TOOLS_AVAILABLE:${GENERIC_TOOLS_AVAILABLE}
</p>


host --- ${host}
<hr/>