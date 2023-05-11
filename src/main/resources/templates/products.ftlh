<!DOCTYPE html>
<html>
<head>
    <title>El.Parduotuvė "Baigiamasis darbas"</title>
</head>
<body>
<h1>| Elektronikos prekių parduotuvė |</h1><hr>
    <#if user.email??>
    <h4>Vartotojo vardas: <i>${user.name}</i>
        <form action="/logout" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <input type="submit" value="Atsijungti">
    </form>
    <#else>
    <a href="/login">[Prisijungti]</a></h4>
</#if>
<hr>
<h4>Elektronikos prekės iš visos Lietuvos</h4>
<form action="/" method="get">
    Paieška pagal skelbimo pavadinimą: <input type="text" name="title"><br>
    <input type="submit" value="Paiška"/>
</form>
<#list products as product>
    <div>
        <p><b>${product.title}</b> ${product.price}.00€ | <a href="/product/${product.id}">Plačiau...}</a></p>
    </div>
    <#else>
    <h3>Prekių nėra</h3>
</#list>
<#if user.email??>
<hr>
<h3>Sukurti naują prekę</h3>
<form action="/product/create" method="post" enctype="multipart/form-data">
    Skelbimo pavadinimas: <input type="text" name="title"/><br><br>
    Skelbimo aprašymas: <input type="text" name="description"/><br><br>
    Kaina: <input type="number" name="price"/><br><br>
    Miestas: <input type="text" name="city"/><br><br>
    Pirma nuotrauka: <input type="file" name="file1" accept="image/png, image/jpeg"/><br><br>
    Antra nuotrauka: <input type="file" name="file2" accept="image/png, image/jpeg"/><br><br>
    Trečia nuotrauka: <input type="file" name="file3" accept="image/png, image/jpeg"/><br><br>
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <input type="submit" value="Pridėti prekę"/>
</form>
</#if>
</body>
</html>
