<!DOCTYPE html>
<html>
<head>
    <title>El.Parduotuvė "Baigiamasis darbas"</title>
</head>
<body>
<h1>| Elektronikos prekių parduotuvė |</h1><hr>
<h3>Platesnė informacija apie vartotoją</h3>
<b>Telefono numeris: </b> ${user.phoneNumber}<br>
<b>El.paštas: </b> ${user.email}<br>
<h4>Vartotojo ${user.name} prekės</h4>
<#list products as product>
<div>
    <p><b>${product.title}</b> ${product.price}.00€ | <a href="/product/${product.id}">Plačiau...}</a></p>
</div>
<#else>
<h3>Prekių nėra</h3>
</#list>
<#if errorMessage??>
<h2 style="color: red">${errorMessage}</h2>
</#if>
</body>
</html>