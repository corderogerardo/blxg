<#-- menu -->
    <#include "*/menulogin.ftl">
  <#-- contenido principal -->
  <main class="mdl-layout__content">
    <div class="page-content mdl-grid" id="overview">
    <!-- Your content goes here -->
    <h2>Login</h2>
    <form method="post">
       <div class="mdl-textfield mdl-js-textfield">
       <input class="mdl-textfield__input" type="text" name="username" size="40" 
       value="${username}">
       <label class="mdl-textfield__label">Username</label>
       </div>
        <div class="error">
          </div>
         <div class="mdl-textfield mdl-js-textfield">
       <input class="mdl-textfield__input" type="password" name="password" size="40" 
       value="" placeholder="">
       <label class="mdl-textfield__label">Password</label>
       </div>

          <div class="error">
	    ${login_error}
            
          </div>
 <button class="mdl-button mdl-js-button mdl-button--raised" type="submit"> login </button>
     
    </form>

     </div>
    
  </main>
  <#-- footer -->
    <#include "*/footer.ftl">