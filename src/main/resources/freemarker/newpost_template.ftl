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
  </main>
<script>
var simplemde = new SimpleMDE({ element: document.getElementById("inputArea") });
simplemde.render();
</script>
<#include "*/footer.ftl">