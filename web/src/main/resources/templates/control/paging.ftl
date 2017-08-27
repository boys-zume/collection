##分页组件
## author: haitao.chenht
## 需要参数：$pageCount:总页数,$pageNo：当前页码,$pageLink：翻页链接
#set($pageCount=$pagingInfo.pageCount)
#set($pageNo=$pagingInfo.pageNo)
#set($pageLink=$pagingInfo.pageLink)
#set($from=$pagingInfo.from)
#set($to=$pagingInfo.to)

#if($pageLink.contains("?"))
    #set($myPageLink=$pageLink+"&")
#else
    #set($myPageLink=$pageLink+"?")
#end

## 前一页,注意：加减必须前后加空格
#if($pageNo>1)
    #set($prePageNo=$pageNo - 1)
#else
    #set($prePageNo=$pageCount)
#end
## 后一页
#if($pageNo<$pageCount)
    #set($nextPageNo=$pageNo + 1)
#else
## 反转到第一页
    #set($nextPageNo=1)
#end


#if($pageCount>1)

<ul class="pagination">

##到第一页
        <li><a href="${myPageLink}pageNo=1">|<</a></li>

##向前
        #set($prePageLink=$myPageLink+"pageNo="+$prePageNo)
        <li><a href="${prePageLink}"><</a></li>

        #if($from >1)
            <li><span>...</span></li>
        #end

        #foreach($currentNo in [$from..$to] )
            #set($curPageLink=$myPageLink+"pageNo="+$currentNo)
            #if($!{currentNo} == $pageNo)
                    <li class="active"><a href="$curPageLink">$currentNo</a></li>
                #else
                    <li><a href="$curPageLink">$currentNo</a></li>
                #end
        #end

        #if($to < $pageCount)
            <li><span>...</span></li>
        #end

##向后
        #set($nextPageLink=$myPageLink+"pageNo="+$nextPageNo)
        <li><a href="$nextPageLink">></a></li>

##    到最后一页
        <li><a href="${myPageLink}pageNo=$pageCount">>|</a></li>

</ul>

#end

