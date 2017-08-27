##  ------------------一些业务无关的macro------------------

## 显示一个开发者备注备忘
#macro(showDevMemo $content)
    #if($content)
    <p class="bg-warning">开发者备注：$content</p>
    #else
    <p class="bg-warning">开发者备注：我还不知道说什么，但这里似乎有事情要做</p>
    #end
#end

## showTime
#macro(showTime $gmtDate)
    $!{dateTimeUtil.date2String($gmtDate)}
#end

## 显示字符串
#macro(showSomeInfo $info)
    #if($info)
    <div class="alert alert-success" role="alert">
            $info
        </div>
    #end
#end

## 显示一行表格tr
#macro(showTableTr $tdList)
    #if($tdList)
    <tr>
            #foreach($item in $tdList)
                <td>$!{item}</td>
            #end
        </tr>
    #end
#end

