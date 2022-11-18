<#import "parts/common.ftlh" as c>

<@c.page>
    <h5>${username}</h5>
    ${message?if_exists}
    <form method="post">
        <div class="mb-3 form-group row">
            <label class="col-sm-2 col-form-label">
                Email:
            </label>
            <div class="col-sm-5">
                <input class="form-control" type="email" name="email" value="${email!""}" placeholder="some@some.com"/>
            </div>
        </div>
        <div class="mb-3 form-group row">
            <label class="col-sm-2 col-form-label">
                Password:
            </label>
            <div class="col-sm-5">
                <input class="form-control" type="password" name="password" placeholder="Password"/>
            </div>
        </div>
        <div class="mb-3 form-group row">
            <div class="col-sm-5">
                <button type="submit" class="btn btn-primary">Save</button>
            </div>
        </div>
    </form>
</@c.page>