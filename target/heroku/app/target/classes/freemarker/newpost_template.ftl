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
<body>
<div class="mdl-layout mdl-js-layout mdl-layout--fixed-header">
  <header class="mdl-layout__header">
    <div class="mdl-layout__header-row">
      <!-- Title -->
      
      <span class="mdl-layout-title">Gerardo Cordero's Blog</span>
      
      <!-- Add spacer, to align navigation to the right -->
      <div class="mdl-layout-spacer"></div>
      <!-- Navigation -->
      <nav class="mdl-navigation">
      <#if username??>
    Bienvenido ${username} ||| <a class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent" href="/">Blog Home</a>|||<a class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent" href="/logout">Salir</a>

    <p>
<#else>
    <a class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent" href="/">Blog Home</a>|||
    <a class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent" href="/login">Inicia Sesion</a>
</#if>
      </nav>
    </div>
  </header>
  <div class="mdl-layout__drawer">
          
    <span class="mdl-layout-title">Gerardo Cordero</span>
    <span><a href="mailto:admin@gerardocordero.me" target="_blank">email me</a></span>
    <nav class="mdl-navigation">
        <a class="mdl-navigation__link" href="/tag/Java">Java</a>
        <a class="mdl-navigation__link" href="/tag/MongoDB">MongoDB</a>
    </nav>
  </div>
  <main class="mdl-layout__content">
    <div class="page-content mdl-grid">
<!-- Your content start here -->
   <form action="/newpost" method="POST">
    ${errors!""}
    <#-- grid de 8 columnas -->
    <div class="contPost">
    <#-- Contenedor del titulo y la fecha -->
<div class="contPostTitle">
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
    <textarea id="inputArea" name="body" v-model="input">${body!""}</textarea>
    
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
    <button class="mdl-button mdl-js-button mdl-button--fab mdl-js-ripple-effect mdl-button--colored" type="submit"> <i class="material-icons">add</i> </button>
    </div>
    
</div>
</div>
<#-- fin grid de 8 columnas -->
<#-- inicio grid de 2 columnas -->
 


<#-- Your content ends here -->
    </div>
  </main>
</div>
<script type="text/javascript" src="/js/vuejsmarkdown.js"></script>

<script>
var simplemde = new SimpleMDE({ element: document.getElementById("inputArea") });
simplemde.render();
</script>

               

</body>
</html>

