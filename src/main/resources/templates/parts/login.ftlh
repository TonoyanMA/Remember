<#include "security.ftlh">
<#macro login path isRegisterForm>
    <form action="${path}" method="post">
        <div class="mb-3 form-group row">
            <label class="col-sm-2 col-form-label">
                User Name :
            </label>
            <div class="col-sm-5">
                <input type="text" value="<#if user??>${user.username}</#if>"
                       class="form-control ${(usernameError??)?string('is-invalid', '')}"
                       name="username" placeholder="User name"/>
                <#if usernameError??>
                    <div class="invalid-feedback">
                        ${usernameError}
                    </div>
                </#if>

            </div>
        </div>
        <div class="mb-3 form-group row">
            <label class="col-sm-2 col-form-label">
                Password:
            </label>
            <div class="col-sm-5">
                <input type="password"
                       class="form-control ${(passwordError??)?string('is-invalid', '')}"
                       name="password"
                       placeholder="Password"/>
                <#if passwordError??>
                    <div class="invalid-feedback">
                        ${passwordError}
                    </div>
                </#if>
            </div>
        </div>
        <#if isRegisterForm>

            <div class="mb-3 form-group row">
                <label class="col-sm-2 col-form-label">
                    Password 2:
                </label>
                <div class="col-sm-5">
                    <input type="password"
                           class="form-control ${(password2Error??)?string('is-invalid', '')}"
                           name="password2"
                           placeholder="Retype password"/>
                    <#if password2Error??>
                        <div class="invalid-feedback">
                            ${password2Error}
                        </div>
                    </#if>
                </div>
            </div>
            <div class="mb-3 form-group row">
                <label class="col-sm-2 col-form-label">
                    Email:
                </label>
                <div class="col-sm-5">
                    <input type="email" value="<#if user??>${user.email}</#if>"
                           class="form-control ${(emailError??)?string('is-invalid', '')}"
                           name="email"
                           placeholder="some@some.com"/>
                    <#if emailError??>
                        <div class="invalid-feedback">
                            ${emailError}
                        </div>
                    </#if>
                </div>
            </div>
            <hr>
            <div class="col-sm-5 mb-3">
                <div class="g-recaptcha" data-sitekey="6LddrRUjAAAAAE2BHgmWHHErEr0JZ3YojhBVxDRw"></div>
                <#if captchaError??>
                    <div class="alert alert-danger" role="alert">
                        ${captchaError}
                    </div>
                </#if>
            </div>
        </#if>

        <div class="mb-3 form-group row">
            <#if !isRegisterForm>
                <a href="/registration" class="col-sm-2">Add new user</a>
            </#if>
            <div class="col-sm-5">
                <button type="submit" class="btn btn-primary">
                    <#if isRegisterForm>Create<#else>Sing in</#if>
                </button>
            </div>
        </div>
    </form>
</#macro>

<#macro logout>
    <form class="d-flex" action="/logout" method="post">
        <button type="submit" class="btn btn-primary"><#if user??>Sign Out<#else>Log in</#if></button>
    </form>

</#macro>