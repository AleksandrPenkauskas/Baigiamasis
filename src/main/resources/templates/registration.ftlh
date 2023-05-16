<#import "blocks/template.ftlh" as t>
<@t.template user>
<h1 style="text-align: center">Registracija</h1>
<hr>
<form action="/registration" method="post">
    <div class="form-group">
        <label for="name">Vartotojo vardas</label>
        <input type="text" class="form-control" required id="name" name="name">
    </div>
    <div class="form-group">
        <label for="email">Elektroninis paštas</label>
        <input type="email" class="form-control" id="email" required name="email">
    </div>
    <div class="form-group">
        <label for="phoneNumber">Telefono numeris</label>
        <input type="text" class="form-control" id="phoneNumber" required name="phoneNumber">
    </div>
    <div class="form-group">
        <label for="password">Slaptažodis</label>
        <input type="password" class="form-control" id="password" required name="password">
    </div>
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <button type="submit" style="width: 100%" class="btn btn-dark">Užsiregistruoti</button>
</form>
<#if errorMessage??>
<h2 style="color: red">${errorMessage}</h2>
</#if>
</@t.template>