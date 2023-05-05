<!DOCTYPE html>
<html>
<head>
    <title>Parduotuve</title>
</head>
<body>
<h1>Parduotuve</h1><hr>
<h4>Plati informacija apie prekę</h4>
<b>Prekės pavadinimas: </b>${product.title}<br>
<b>Prekės aprašymas: </b>${product.description}<br>
<b>Kaina: </b>${product.price}<br>
<b>Miestas: </b>${product.city}<br>
<b>Autorius: </b>${product.author}<br>
<hr>
<form action="/product/delete/${product.id}" method="post">
    <input type="submit" value="Pašalinti prekę"/>
</form>
</body>
</html>
