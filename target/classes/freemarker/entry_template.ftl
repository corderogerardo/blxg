 <#-- menu -->
 <#include "*/menu.ftl">
<#-- contenido principal -->
  <main class="mdl-layout__content">
    <div class="page-content mdl-grid" id="overview">
<!-- Your content start here -->
   
    <#-- grid de 8 columnas -->
    <div class="contPost mdl-cell mdl-cell--10-col mdl-cell--8-col-tablet">
    <#-- Contenedor del titulo y la fecha -->
<div class="contPostTitle">
    <div class="tituloPost">
    <h3>${post["title"]}</h3>
    </div>
    <div class="postDate">
        Posted ${post["date"]?datetime}
    </div>
</div>

<#-- contenedor del post -->
<div id="editor" class="contPostBody">

  <div v-html="input | marked"></div>
<input v-model="input" type="text-area" value="${post["body"]}" hidden>
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
   <#-- footer -->
    <#include "*/footer.ftl">