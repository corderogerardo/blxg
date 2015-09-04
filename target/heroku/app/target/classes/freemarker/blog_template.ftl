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
<body>
<div class="mdl-layout mdl-js-layout">
  <header class="mdl-layout__header mdl-layout__header--scroll">
    <div class="mdl-layout__header-row">
      <!-- Title -->
      <span class="mdl-layout-title">Gerardo Cordero: blog personal!</span>
      <!-- Add spacer, to align navigation to the right -->
      <div class="mdl-layout-spacer"></div>
      <!-- Navigation -->
      <nav class="mdl-navigation">
      <#if username??>
    Bienvenido ${username} <a class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent" href="/logout">Salir</a> | <a class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent" href="/newpost">New Post</a>

    <p>
<#else>
    Bienvenido invitado <a class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent"  href="/signup"> Registrate </a><a class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent" href="/login">Inicia Sesion</a>
</#if>
      </nav>
    </div>
  </header>
  <div class="mdl-layout__drawer">
    <span class="mdl-layout-title">Gerardo Cordero: blog personal!</span>
    <nav class="mdl-navigation">
      <a class="mdl-navigation__link" href="">Link</a>
      <a class="mdl-navigation__link" href="">Link</a>
      <a class="mdl-navigation__link" href="">Link</a>
      <a class="mdl-navigation__link" href="">Link</a>
    </nav>
  </div>
  <main class="mdl-layout__content">
    <div class="page-content">
    <!-- Your content goes here -->

<#list myposts as post>
    <h2><a href="/post/${post["permalink"]}">${post["title"]}</a></h2>
    Posted ${post["date"]?datetime} <i>By ${post["author"]}</i><br>
    Comments:
    <#if post["comments"]??>
        <#assign numComments = post["comments"]?size>
            <#else>
                <#assign numComments = 0>
    </#if>

    <a href="/post/${post["permalink"]}">${numComments}</a>
    <hr>
    ${post["body"]!""}
    <p>

    <p>
        <em>Filed Under</em>:
        <#if post["tags"]??>
            <#list post["tags"] as tag>
                <a href="/tag/${tag}">${tag}</a>
            </#list>
        </#if>

    <p>
</#list>
    </div>
  </main>
</div>

</body>
</html>

