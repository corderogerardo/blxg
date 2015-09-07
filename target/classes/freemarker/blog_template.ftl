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
  <header class="mdl-layout__header mdl-layout__header-scroll">
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
    <a class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent" href="http://www.corderogerardo.com.ve/">Inicio</a>|||
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
    <div class="page-content mdl-grid" id="overview">
    <!-- Your content goes here -->
    
    <#list myposts as post>
    <div class="mdl-cell mdl-cell--2-col">
        
    </div>
<div class="mdl-cell mdl-cell--8-col demo-card-wide mdl-card mdl-shadow--2dp">
    <div class="mdl-card__title">
        <h2 class="mdl-card__title-text">
        <a href="/post/${post["permalink"]}">
        <h2>${post["title"]}</h2></a></h2>
    </div>
    <div class="mdl-card__supporting-text">
        Posted ${post["date"]?datetime} <i>By ${post["author"]}</i><br>
    
     <em>Serie</em>:
        <#if post["tags"]??>
            <#list post["tags"] as tag>
                <a href="/tag/${tag}">${tag}</a>
            </#list>
        </#if>
    </div>
    <div class="mdl-card__actions mdl-card--border">
        <a class="a-color mdl-button" href="/post/${post["permalink"]}">${post["title"]}</a>
    </div>
    <div class="mdl-card__menu">
        <button class="mdl-button mdl-button--icon mdl-js-button mdl-js-ripple-effect">
            <i class="material-icons">share</i>
        </button>
    </div>
    
</div>
<div class="mdl-cell mdl-cell--2-col">
        
    </div>
</#list>



    </div>
     <#-- footer -->
    <#include "*/footer.ftl">
  </main>
 
</div>

</body>
</html>

