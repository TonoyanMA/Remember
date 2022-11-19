<#include "security.ftlh">
<#import "login.ftlh" as l>

<nav class="navbar navbar-expand-lg bg-light">
    <div class="container-fluid">
        <a class="navbar-brand" href="/">Remember...</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarScroll" aria-controls="navbarScroll" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarScroll">
            <ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll" style="--bs-scroll-height: 100px;">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/main">Messages</a>
                </li>
                <#if user??>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/user-messages/${currentUserId}">My Messages</a>
                </li>
                </#if>
                <#if isAdmin>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/user">User list</a>
                </li>
                </#if>
                <#if user??>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/user/profile">Profile</a>
                    </li>
                </#if>
            </ul>
            <div class="me-2 navbar-text"><#if user??>${name}<#else>Pleace, login</#if></div>
            <@l.logout />
        </div>
    </div>
</nav>