
<#-- menu -->
  <#include "*/menu.ftl">
  <#-- contenido principal -->
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
  
  </main>
 <#-- footer -->
    <#include "*/footer.ftl">



