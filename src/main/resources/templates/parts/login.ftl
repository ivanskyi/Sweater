<#macro login path isRegisterForm>
    <form action="${path}" method="post">
        <div class="form-group row">
            <label class="col-sm-2 col-form-label">User name:</label>
            <div class="col-sm-5">
                <input type="text" class="form-control" name="username"  placeholder="User name"/>
            </div>
        </div>
        <#if isRegisterForm>
            <div class="form-group row">
                <label class="col-sm-2 col-form-label" >Password:</label>
                <div class="col-sm-5">
                    <input type="password" class="form-control" name="password" placeholder="Password"/>
                </div>
            </div>
        </#if>
        <#if isRegisterForm>
            <div class="form-group row">
                <label class="col-sm-2 col-form-label" >Email:</label>
                <div class="col-sm-5">
                    <input type="email" class="form-control" name="email" placeholder="nickname@site.com"/>
                </div>
            </div>
        </#if>
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <#if !isRegisterForm>
            <a href="/registration">Add new user</a>
        </#if>
        <button type="submit" class="btn btn-primary mb-2">
            <#if isRegisterForm>Create
            <#else>Sign In </#if>
        </button>
    </form>
</#macro>
<#macro logout>
    <div>
        <form action="/logout" method="post">
            <input type="hidden" name="_csrf" value="${_csrf.token}"/>
            <button class="btn btn-primary mb-2" type="submit"> Sign out</button>
        </form>
    </div>
</#macro>
