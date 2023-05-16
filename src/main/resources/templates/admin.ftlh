<#import "blocks/template.ftlh" as t>
<@t.template user>
`<h1 style="text-align: center">Administratoriaus valdymo meniu</h1><hr>
<table class="table table-hover table-dark">
    <tr>
        <th scope="col">Elektroninis paštas</th>
        <th scope="col">Telefono numeris</th>
        <th scope="col">Aktyvumas</th>
        <th scope="col">Rolė</th>
        <th scope="col">Banas</th>
        <th scope="col">Redagavimas</th>
        <th scope="col">Platesnė informacija</th>
    </tr>
    <#list users as user>
    <tr>
        <th>${user.email}</th>
        <th>${user.phoneNumber}</th>
        <th><#if user.active>true<#else>false</#if></th>
        <th><#list user.roles as role>${role}</#list></th>
        <th>
            <form action="/admin/user/ban/${user.id}" method="post">
                <input type="hidden" name="_csrf" value="${_csrf.token}">
                <input type="submit" class="btn btn-light" value="BANAS">
            </form>
        </th>
        <th><a href="/admin/user/edit/${user.id}">Redagavimas</a></th>
        <th><a href="/user/${user.id}">Platesnė informacija</a></th>
    </tr>
    <#else>
    <h3>Vartotojų nėra</h3>
</#list>
</table>
</@t.template>