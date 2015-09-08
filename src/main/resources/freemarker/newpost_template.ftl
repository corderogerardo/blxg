<!doctype HTML>
<html>
<html lang="es">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Gerardo Cordero: blog personal!</title>
    <meta name="description" content="Gerardo Cordero: blog personal!" />
    <meta name="keywords" content="Front-end, Back-end, FullStackJavaScript jquery angular vuejs, FullStackJava Spring e Hibernate, FullStackPHP Laravel5.1, Postgres y MongoDB"/>
    
    <script src="https://storage.googleapis.com/code.getmdl.io/1.0.4/material.min.js"></script>
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <#-- vuejs and markdown -->
    <script src="/js/vendor/vue.min.js" type="text/javascript" charset="utf-8" async defer></script>
    <script type="text/javascript" src="/js/vendor/marked.min.js"></script>
    <link rel="stylesheet" href="//cdn.jsdelivr.net/simplemde/latest/simplemde.min.css">
<script src="//cdn.jsdelivr.net/simplemde/latest/simplemde.min.js"></script>
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">

    <link rel="stylesheet" href="/css/blog.css">

  </head>
<body class="mdl-demo mdl-base">
<div class="mdl-layout mdl-js-layout">
<#-- menu -->
  <#include "*/menu.ftl">
  <#-- contenido principal -->
  <main class="mdl-layout__content">
    <div class="page-content mdl-grid" id="overview">
<!-- Your content start here -->
   <form action="/newpost" method="POST" class="mdl-cell mdl-cell--10-col mdl-cell--8-col-tablet formNewPost">
    ${errors!""}
    <#-- grid de 8 columnas -->
    <div class="contPost">
    <#-- Contenedor del titulo y la fecha -->
<div class="contPostTitleO">
    <div class="postDate">
        <div class="mdl-textfield mdl-js-textfield">
       <input class="mdl-textfield__input" type="text" name="subject" size="120" 
       value="${subject!""}">
       <label class="mdl-textfield__label">Titulo</label>
       </div>
    </div>
</div>
<#-- contenedor del post -->
<div id="editor" class="">
    <textarea rows="50" cols="100" id="inputArea" name="body" v-model="input">${body!""}</textarea>
    
</div>
<#-- Informacion del post -->
<div class="contPostAutor">
   <div class="tagsPost">
    <div class="mdl-textfield mdl-js-textfield">
       <input class="mdl-textfield__input" type="text" name="tags" size="120" value="${tags!""}">
       <label class="mdl-textfield__label">Tags</label>
       </div>
   </div>

    <div class="autorPost">
    <button class="mdl-button mdl-js-button mdl-button--raised" type="submit">Save</button>
    </div>
    
</div>
</div>
<#-- fin grid de 8 columnas -->
<#-- inicio grid de 2 columnas -->
 


<#-- Your content ends here -->
    </div>
     <#-- footer -->
    <#include "*/footer.ftl">
  </main>
</div>
<script type="text/javascript" src="/js/vuejsmarkdown.js"></script>

<script>
var simplemde = new SimpleMDE({ element: document.getElementById("inputArea") });
simplemde.render();
</script>

               

</body>
</html>

