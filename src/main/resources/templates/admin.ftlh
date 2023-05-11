<!DOCTYPE html>
<html>
<head>
    <title>El.Parduotuvė "Baigiamasis darbas"</title>
</head>
<body>
<h1>| Elektronikos prekių parduotuvė |</h1>
<hr>
<h4>Administratoriaus valdymo meniu</h4>
<table border="1">
    <tr>
        <th>Email</th>
        <th>Telefono numeris</th>
        <th>Aktyvumas</th>
        <th>Rolė</th>
        <th>Ban</th>
        <th>Redagavimas</th>
        <th>Platesnė informacija</th>
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
                <input type="submit" value="Бан">
            </form>
        </th>
        <th><a href="/admin/user/edit/${user.id}">Redagavimas</a></th>
        <th><a href="/user/${user.id}">Platesnė informacija</a></th>
    </tr>
    <#else>
    <h3>Vartotojų nėra</h3>
</#list>
</table>
</body>
</html>