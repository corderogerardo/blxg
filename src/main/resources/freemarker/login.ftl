<!DOCTYPE html>

<html lang="es">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Gerardo Cordero: blog personal!</title>
    <meta name="description" content="Gerardo Cordero: blog personal!" />
    <meta name="keywords" content="Front-end, Back-end, FullStackJavaScript jquery angular vuejs, FullStackJava Spring e Hibernate, FullStackPHP Laravel5.1, Postgres y MongoDB"/>
    
    <script src="https://storage.googleapis.com/code.getmdl.io/1.0.4/material.min.js"></script>
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">        
    
    <link rel="stylesheet" href="/css/blog.css">

  </head>

  <body class="mdl-demo mdl-base">
<div class="mdl-layout mdl-js-layout">
<#-- menu -->
    <#include "*/menu.ftl">
  <#-- contenido principal -->
  <main class="mdl-layout__content">
    <div class="page-content mdl-grid" id="overview">
    <!-- Your content goes here -->
    <h2>Login</h2>
    <form method="post">
       <div class="mdl-textfield mdl-js-textfield">
       <input class="mdl-textfield__input" type="text" name="username" size="40" 
       value="${username}">
       <label class="mdl-textfield__label">Username</label>
       </div>
        <div class="error">
          </div>
         <div class="mdl-textfield mdl-js-textfield">
       <input class="mdl-textfield__input" type="password" name="password" size="40" 
       value="" placeholder="">
       <label class="mdl-textfield__label">Password</label>
       </div>

          <div class="error">
	    ${login_error}
            
          </div>
 <button class="mdl-button mdl-js-button mdl-button--fab mdl-js-ripple-effect mdl-button--colored" type="submit"> <i class="material-icons">login</i> </button>
     
    </form>

     </div>
     <#-- footer -->
    <#include "*/footer.ftl">
  </main>
 
</div>
  </body>

</html>
