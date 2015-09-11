<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Gerardo Cordero: blog personal!</title>
    <meta name="description" content="Gerardo Cordero: blog personal!" />
    <meta name="keywords" content="Front-end, Back-end, FullStackJavaScript jquery angular vuejs, FullStackJava Spring e Hibernate, FullStackPHP Laravel5.1, Postgres y MongoDB"/>

    
    
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
    Bienvenido ${username} ||| <a class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent" href="/">Volver</a>|||<a class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent" href="/newpost">New Post</a>|||<a class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent" href="/logout">Salir</a>

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