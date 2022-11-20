<#import "parts/common.ftlh" as c>
<@c.page>
    <div>User editer</div>
    <form action="/user" method="post">
        <input type="text" name="username" value="${user.username}" />
        <#list roles as role>
            <div>
                <label>
                    <input type="checkbox" name="${role}" ${user.roles?seq_contains(role)?string("cheched", "")} />${role}
                </label>
            </div>
        </#list>

        <input type="hidden" value="${user.id}" name="userId" />
        <button type="submit">Save</button>
    </form>
</@c.page>