<#import "parts/common.ftl" as c>
<@c.page>
    List of users
    <table>
        <thead>
        <tr>
            <th>Name</th>
            <th>Role</th>
            <th></th>
        </tr>
        </thead>
        <tbody>
    <#list users as user>
<tr>
    <td><${user.userName!"null or missing"}/td>
    <td><#list user.roles as role>${role}<#sep>, </#list></td>
    <td><a href="/user/${user.id}">edit</td>
</tr>
        <#else>
       <i> is empty </i>
    </#list>
        </tbody>
    </table>
</@c.page>
