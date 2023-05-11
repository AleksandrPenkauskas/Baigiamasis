<!DOCTYPE html>
<html>
<head>
    <title>El.Parduotuvė "Baigiamasis darbas"</title>
</head>
<body>
<h1>| Elektronikos prekių parduotuvė |</h1><hr>
<h4>Plati informacija apie prekę</h4>
<#list images as img>
    <img src="/images/${img.id}" height="60px"/><br><br>
</#list>
<b>Prekės pavadinimas: </b>${product.title}<br>
<b>Prekės aprašymas: </b>${product.description}<br>
<b>Kaina: </b>${product.price}.00€<br>
<b>Miestas: </b>${product.city}<br>
<b>Autorius: </b><a href="/user/${product.user.id}">${product.user.name}</a><br>
<b>Telefono numeris: </b>${product.user.phoneNumber}<br>
</body>
</html>
