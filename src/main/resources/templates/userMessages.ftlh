<#import "parts/common.ftlh" as c>
<@c.page>
    <div class="conteiner mb-3">
        <div class="d-grid gap-3 d-md-flex">
            <h3>${userChannel.username}</h3>
            <#if !isCurrentUser>
                <#if isSubscriber>
                    <a class="btn btn-info" href="/user/unsubscribe/${userChannel.id}">Unsubscribe</a>
                <#else>
                    <a class="btn btn-info" href="/user/subscribe/${userChannel.id}">Subscribe</a>
                </#if>
            </#if>
        </div>
    </div>

    <div class="conteiner mb-3">
        <div class="row">
            <div class="col">
                <div class="card">
                    <div class="card-body">
                        <div class="card-title grid text-center mb-1">Subscriptions</div>
                        <H3 class="card-text grid text-center mb-1">
                            <a href="/user/subscriptions/${userChannel.id}/list">${subscriptionsCount}</a>
                        </H3>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card">
                    <div class="card-body">
                        <div class="card-title grid text-center mb-1">Subscribers</div>
                        <H3 class="card-text grid text-center mb-1">
                            <a href="/user/subscribers/${userChannel.id}/list">${subscribersCount}</a>
                        </H3>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <#if isCurrentUser>
        <#include "parts/messageEdit.ftlh" />
    </#if>
    <#include "parts/messageList.ftlh" />

</@c.page>