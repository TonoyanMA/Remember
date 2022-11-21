<#macro pager url page>
    <#if page.getTotalPages() gt 7>
        <#assign
        totalPage = page.getTotalPages()
        pageNumber = page.getNumber() + 1
        head = (pageNumber > 4)?then([1, -1], [1,2,3])
        tail = (pageNumber < totalPage - 3)?then([-1, totalPage], [totalPage - 2, totalPage -1, totalPage])
        bodyBeafore = (pageNumber > 4 && pageNumber < totalPage - 1)?then([pageNumber - 2, pageNumber - 1], [])
        bodyAfter = (pageNumber > 2 && pageNumber < totalPage - 3)?then([pageNumber + 1, pageNumber + 2], [])

        body = head + bodyBeafore + (pageNumber > 3 && pageNumber < totalPage - 2)?then([pageNumber], []) + bodyAfter + tail
        >
    <#else>
        <#assign body = 1..page.getTotalPages()>
    </#if>
    <div class="row mt-3">
        <div class="col-sm-6">
            <ul class="pagination">
                <li class="page-item disabled">
                    <a class="page-link" href="#">Pages</a>
                </li>
                <#list body as p>
                    <#if (p-1)==page.getNumber()>
                        <li class="page-item active">
                            <a class="page-link" tabindex="-1" href="#">${p}</a>
                        </li>
                    <#elseif p==-1>
                        <li class="page-item disabled">
                            <a class="page-link" href="#">...</a>
                        </li>
                    <#else>
                        <li class="page-item">
                            <a class="page-link" href="${url}?page=${p - 1}&amp;size=${page.getSize()}">${p}</a>
                        </li>
                    </#if>
                </#list>
            </ul>
        </div>
        <div class="col-sm-6">
            <ul class="pagination justify-content-end">
                <li class="page-item disabled">
                    <a class="page-link" href="#">Messages in page:</a>
                </li>
                <#list [5,10,25] as c>
                    <#if c==page.getSize()>
                        <li class="page-item active">
                            <a class="page-link" tabindex="-1" href="#">${c}</a>
                        </li>
                    <#else>
                        <li class="page-item">
                            <a class="page-link" tabindex="-1"
                               href="${url}?page=${page.getNumber()}&amp;size=${c} ">${c}</a>
                        </li>
                    </#if>
                </#list>
            </ul>
        </div>
    </div>
</#macro>