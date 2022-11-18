<#import "parts/common.ftlh" as c>
<@c.page>
    <div class="row md-4 mb-3">
        <div class="form-group col-md-6">
            <form class="d-flex" method="get" action="/main">
                <input class="form-control col-md-4 me-2" type="text" name="filter" placeholder="Search messages"
                       value="${filter?if_exists}">
                <div class="col-md-2">
                    <button class="btn btn-primary" type="submit">Search</button>
                </div>
            </form>
        </div>
    </div>
    <a class="btn btn-primary mb-3" data-bs-toggle="collapse" href="#collapseExample" role="button"
       aria-expanded="false"
       aria-controls="collapseExample">
        Add new message
    </a>
    <div class="collapse <#if message??>show</#if> mb-3" id="collapseExample">
        <div class="form-group mb-3">
            <form method="post" enctype="multipart/form-data">
                <input class="form-control ${(textError??)?string('is-invalid', '')} mb-3" type="text"
                       value="<#if message??>${message.text}</#if>"  name="text" placeholder="Add your message">
                <#if textError??>
                    <div class="invalid-feedback">
                        ${textError}
                    </div>
                </#if>
                <input type="text" class="form-control"
                       value="<#if message??>${message.tag}</#if>" name="tag" placeholder="Тэг">
                <#if tagError??>
                    <div class="invalid-feedback">
                        ${tagError}
                    </div>
                </#if>
                <div class="input-group mb-3">
                    <input class="form-control" type="file" name="file" id="inputGroupFile04"
                           aria-describedby="inputGroupFileAddon04" aria-label="Upload">
                    <button class="btn btn-outline-secondary" type="button" id="inputGroupFileAddon04">Choose file
                    </button>
                </div>
                <button class="btn btn-primary mb-3" type="submit">Save</button>
            </form>
        </div>
    </div>
    <div class="row row-cols-1 row-cols-md-4 g-4">
        <#list messages as message>
            <div class="col">
                <div class="card h-100">
                    <#if message.filename??>
                        <img class="card-img-top mb-3" src="/img/${message.filename}">
                    </#if>
                    <div class="card-body mb-3">
                        <h5 class="card-title grid text-center mb-1">${message.tag}</h5>
                        <hr>
                        <p class="card-text">${message.text}</p>
                    </div>
                    <div class="card-footer">
                        <strong>${message.authorName}</strong>
                    </div>
                </div>
            </div>
        <#else> No messages
        </#list>
    </div>
</@c.page>