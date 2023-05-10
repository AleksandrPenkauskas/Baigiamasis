<!DOCTYPE html>
<html>
<head>
    <title>El.Parduotuvė "Baigiamasis darbas"</title>
</head>
<body>
<h1>| Elektronikos prekių parduotuvė |</h1><hr>
<h4>Autorizacija</h4>
<form action="/login" method="post">
    El.paštas: <input type="email" name="username"><br><br>
    Slaptažodis: <input type="password" name="password"><br><br>
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <input type="submit" value="Prisijungti"/>
</form>
<a href="/registration">Registracija</a>
</body>
</html>