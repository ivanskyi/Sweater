<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>
<@c.page>
<i>Main page</i>
<@l.logout/>
    <span><a href="/user"> Users Lists </a></span>
<div>
    <form method="post" action="">
        <input type="text" name="text" placeholder="Please write your message">
        <input type="text" name="tag" placeholder="Tag">
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <button type="submit">Add</button>
    </form>
</div>
<div>Message list</div>
<form method="get" action="/main">
    <input type="text" name="filter" value="${filter!}">
    <button type="submit">Search</button>
</form>
<#list messages as message>
<div>
    <b>${message.id}</b>
    <b>${message.text}</b>
    <b>${message.tag}</b>
    <strong>${message.authorName}</strong>
</div>
    <#else>
    No messages
</#list>
</@c.page>