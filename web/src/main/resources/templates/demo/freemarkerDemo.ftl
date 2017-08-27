<!-- 指令参考：http://freemarker.foofun.cn/ref_directive_list.html -->
<!-- 内建函数：http://freemarker.foofun.cn/ref_builtins.html -->
<!-- 特殊变量：http://freemarker.foofun.cn/ref_specvar.html -->

<!--------------------- include ------------------------->
<#include "/templates/error.ftl">

<!--------------------- 不存在变量 ------------------------->
<!-- 不存在的变量(或null值)判断  "??" -->
<#if errMsg??>
<p>错误信息:${errMsg}</p>
</#if>
<!-- animals.python.price?? 表示只判断最后一级price，如果前面两级变量不存在，则渲染失败 -->
<!-- (animals.python.price)?? 表示任何一级变量不存在，都判定为不存在，不会渲染失败 -->

<!-- 对不存在变量赋默认值 "!" -->
<h1>Welcome ${user!"visitor"}!</h1>
<!-- (animals.python.price)!0 -->

<!--------------------- if ------------------------->
<!-- 字符串比较 ->
<#if user == "Big Joe">, our beloved leader</#if>

<!-- if/elseif/else，数值比较 -->
<#if animals.python.price < animals.elephant.price>
Pythons are cheaper than elephants today.
<#elseif animals.elephant.price < animals.python.price>
Elephants are cheaper than pythons today.
<#else>
Elephants and pythons cost the same today.
</#if>

<!-- boolean型 -->
<#if animals.python.protected>
Pythons are protected animals!
</#if>

<!--------------------- list ------------------------->
<!-- 列表循环输出 -->
<#list animals as animal>
    <div <#if animal.protected> class="protected"</#if> >
        ${animal.name} for ${animal.price} Euros
    </div>
</#list>

<!-- 当列表为空时，不输出<ul>,<!#items> -->
<#list misc.fruits>
<ul>
    <#items as fruit>
    <li>${fruit}
    </#items>
</ul>
</#list>

<!-- 使用一些分隔符来列出 <!#sep> -->
<p>Fruits: <#list misc.fruits as fruit>${fruit}<#sep>, </#list>
<!-- 空list的esle指令 -->
<p>Fruits: <#list misc.fruits as fruit>${fruit}<#sep>, <#else>None</#list>
<!-- 简单写法 -->
<p>Fruits: ${fruits?join(", ", "None")}

<!-- 混合写法 -->
<#list misc.fruits>
<p>Fruits:
<ul>
    <#items as fruit>
    <li>${fruit}<#sep> and</#sep>
    </#items>
</ul>
<#else>
<p>We have no fruits.
</#list>

<!--------------------- assign ------------------------->
<#assign x="Hello ${user}!">

<!--------------------- macro ------------------------->
<#macro test foo bar baaz>
  Test text, and the params: ${foo}, ${bar}, ${baaz}
</#macro>
<#-- call the macro: -->
<@test foo="a" bar="b" baaz=5*5-2 />