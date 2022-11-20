<#import "parts/common.ftlh" as c>
<@c.page>
    <div class="row md-4 mb-3">
        <div class="form-group col-md-6">
            <form class="d-flex" method="get" action="/main">
                <input class="form-control col-md-4 me-2" type="text" name="filter" placeholder="Search messages"
                       value="${filter?if_exists}" />
                <div class="col-md-2">
                    <button class="btn btn-primary" type="submit">Search</button>
                </div>
            </form>
        </div>
    </div>

   <#include "parts/messageEdit.ftlh" />
   <#include "parts/messageList.ftlh" />

</@c.page>