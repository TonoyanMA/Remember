<#include "security.ftlh">
<#import "pager.ftlh" as p>
<@p.pager url page />
<div class="row row-cols-1 row-cols-md-4 g-4" id="messageList">

    <#list page.content as message>
        <div class="col" data-id="${message.id}">
            <div class="card h-100">
                <#if message.filename??>
                    <img class="card-img-top mb-3" src="/img/${message.filename}"/>
                </#if>
                <div class="card-body mb-3">
                    <h5 class="card-title grid text-center mb-1">${message.tag}</h5>
                    <hr/>
                    <p class="card-text">${message.text}</p>
                </div>
                <div class="card-footer container">
                    <div class="row align-items-center">
                        <a class="col" href="/messages/${message.id}/like">
                            <#if message.meLikes>
                                <img src="/img/heart2.png" class="align-self-start" width="15" height="15">
                            <#else>
                                <img src="/img/heart.png" class="align-self-start" width="15" height="15">
                            </#if>
                            <span class="col">${message.likes}</span>
                        </a>

                        <a class="col align-self-start" href="/user-messages/${message.author.id}">
                            <strong>
                                ${message.authorName}
                            </strong>
                        </a>
                        <#if message.author.id == currentUserId>
                            <a class="col" href="/user-messages/${message.author.id}?message=${message.id}"> -Edit-</a>
                        </#if>
                    </div>
                </div>
            </div>
        </div>
    <#else>
        <br/>
        No messages
    </#list>
</div>
<@p.pager url page />