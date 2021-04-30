<#import "parts/common.ftl" as c>

<@c.page>
    ${message?if_exists}
    <h5>${username}</h5>
    <form method="post">
        <div class="form-group row">
            <label class="col-sm-2 col-form-label" >Password:</label>
            <div class="col-sm-5">
                <input type="password" class="form-control" name="password" placeholder="Password"/>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2 col-form-label" >Email:</label>
            <div class="col-sm-5">
                <input type="email" class="form-control" name="email" placeholder="nickname@site.com" value="${email!''}"/>
            </div>
        </div>
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <button class="btn btn-primary mb-2" type="submit" >Save</button>
    </form>
</@c.page>
