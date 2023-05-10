<!DOCTYPE html>
<html>
<head>
    <title>El.Parduotuvė "Baigiamasis darbas"</title>
</head>
<body>
<h1>| Elektronikos prekių parduotuvė |</h1><hr>
<h4>Registracija</h4>
<form action="/registration" method="post">
    Vartotojo vardas: <input type="text" name="name"><br><br>
    El.paštas: <input type="email" name="email"><br><br>
    Telefono numeris: <input type="text" name="numberPhone"><br><br>
    Slaptažodis: <input type="password" name="password"><br><br>
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <input type="submit" value="Užsiregistruoti"/>
</form>
<#if errorMessage??>
    <h2 style="color: red">${errorMessage}</h2>
</#if>>
</body>
</html>