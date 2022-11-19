<a class="btn btn-primary mb-3" data-bs-toggle="collapse" href="#collapseExample" role="button"
   aria-expanded="false"
   aria-controls="collapseExample">
    Message editor
</a>
<div class="collapse <#if message??>show</#if> mb-3" id="collapseExample">
    <div class="form-group mb-3">
        <form method="post" enctype="multipart/form-data">
            <div class="mb-3">
                <input class="form-control ${(textError??)?string('is-invalid', '')}" type="text"
                       value="<#if message??>${message.text}</#if>" name="text" placeholder="Add your message">
                <#if textError??>
                    <div class="invalid-feedback">
                        ${textError}
                    </div>
                </#if>
                <br>
                <input class="form-control ${(tagError??)?string('is-invalid', '')}" type="text"
                       value="<#if message??>${message.tag}</#if>" name="tag" placeholder="Tag">
                <#if tagError??>
                    <div class="invalid-feedback">
                        ${tagError}
                    </div>
                </#if>
            </div>
            <div class="input-group mb-3">
                <input class="form-control" type="file" name="file" id="inputGroupFile04"
                       aria-describedby="inputGroupFileAddon04" aria-label="Upload">
                <input type="hidden" name="id" value="<#if message??>${message.id}</#if>" />
                <button class="btn btn-outline-secondary" type="button" id="inputGroupFileAddon04">Choose file
                </button>
            </div>
            <button class="btn btn-primary mb-3" type="submit">Save</button>
        </form>
    </div>
</div>