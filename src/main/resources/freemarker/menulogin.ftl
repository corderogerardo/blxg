 <header class="mdl-layout__header mdl-layout__header-scroll">
    <div class="mdl-layout__header-row">
      <!-- Title -->
      
      <span class="mdl-layout-title">Gerardo Cordero's Blog</span>
      
      <!-- Add spacer, to align navigation to the right -->
      <div class="mdl-layout-spacer"></div>
      <!-- Navigation -->
      <nav class="mdl-navigation">
<#if username!="">
    Bienvenido ${username} ||| <a class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent" href="/logout">Salir</a>|||<a class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent" href="/newpost">New Post</a>

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