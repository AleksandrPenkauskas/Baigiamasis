<#import "blocks/template.ftlh" as t>
<@t.template user>
<h1 style="text-align: center">Autorizavimas</h1>
<hr>
<form action="/login " method="post">
    <div class="form-group">
        <label for="email">Elektroninis paštas</label>
        <input type="email" class="form-control <#if RequestParameters.error??>is-invalid</#if>" id="email" name="username">
        <div id="email" class="invalid-feedback">
            Neteisingas elektroninis paštas
        </div>
    </div>
    <div class="form-group">
        <label for="password">Slaptažodis</label>
        <input type="password" class="form-control <#if RequestParameters.error??>is-invalid</#if>" id="password" name="password">
        <div id="password" class="invalid-feedback">
            Neteisingas slaptažodis
        </div>
    </div>
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <button type="submit" style="width: 100%" class="btn btn-dark">Prisijungti</button>
</form>
<hr>
<h2>Neturite vartotojo akauto? <a href="/registration">Užsiregistruokite!</a></h2>
</@t.template>