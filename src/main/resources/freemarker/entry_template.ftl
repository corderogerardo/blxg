<!doctype HTML>
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
    Bienvenido ${username} <a class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent" href="/logout">Salir</a>|||<a class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent" href="/newpost">New Post</a>

    <p>
<#else>
    <a class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent" href="/">Volver</a>|||
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
   
    <#-- grid de 8 columnas -->
    <div class="contPost mdl-cell mdl-cell--10-col mdl-cell--8-col-tablet">
    <#-- Contenedor del titulo y la fecha -->
<div class="contPostTitle">
    <div class="tituloPost">
    <h2>${post["title"]}</h2>
    </div>
    <div class="postDate">
        Posted ${post["date"]?datetime}
    </div>
</div>
<#-- contenedor del post -->
<div id="editor" class="contPostBody">
<input v-model="input" type="text-area" value="${post["body"]}" hidden>
  <div v-html="input | marked">

    </div>

</div>
<#-- Informacion del post -->
<div class="contPostAutor">
   <div class="tagsPost">
       <em>Tags</em>:
    <#if post["tags"]??>
        <#list post["tags"] as tag>
            <a href="/tag/${tag}">${tag}</a>
        </#list>
    </#if>
   </div>

    <div class="autorPost">
        <i> By ${post["author"]}</i>
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

</body>
</html>


