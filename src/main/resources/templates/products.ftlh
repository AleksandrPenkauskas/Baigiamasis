<!DOCTYPE html>
<html>
<head>
    <title>Parduotuvė "Baigiamasis darbas"</title>
</head>
<body>
<h1>Parduotuvė</h1><hr>
<h4>Elektronikos prekės iš visos Lietuvos</h4>
<form action="/" method="get">
    Paieška pagal skelbimo pavadinimą: <input type="text" name="title"><br>
    <input type="submit" value="Paiška"/>
</form>
<#list products as product>
    <div>
        <p><b>${product.title}</b> ${product.price} € | <a href="/product/${product.id}">Plačiau...}</a></p>
    </div>
    <#else>
    <h3>Prekių nėra</h3>
</#list>
<hr>
<h3>Sukurti naują prekę</h3>
<form action="/product/create" method="post">
    Skelbimo pavadinimas: <input type="text" name="title"/><br><br>
    Skelbimo aprašymas: <input type="text" name="description"/><br><br>
    Kaina: <input type="number" name="price"/><br><br>
    Miestas: <input type="text" name="city"/><br><br>
    Vardas: <input type="text" name="author"/><br><br>
    <input type="submit" value="Pridėti prekę"/>
    </form>
</body>
</html>
