<#assign  security=JspTaglibs["http://www.springframework.org/security/tags"] />
<#include "../include/imports.ftl">

<@security.authorize access="isAuthenticated()">
<#if menu??>
  <#if menu.siteMenuItems??>
    <nav>
      <ul class="navigation" id="main-navigation">
        <#list menu.siteMenuItems as item>
          <#if  item.selected || item.expanded>
            <li><a href="<@hst.link link=item.hstLink/>" class="activelink"><span class="label-nav">${item.name?html}</span> </a></li>
          <#else>
            <li><a href="<@hst.link link=item.hstLink/>"><span class="label-nav">${item.name?html}</span></a></li>
          </#if>
        </#list>
      </ul>
    </nav>
  </#if>
  <@hst.cmseditmenu menu=menu/>
</#if>
</@security.authorize>
<@security.authorize access="! isAuthenticated()">


<nav>
   
      <form id="signin" class="navbar-form navbar-right" role="form" action='/site/login' method='POST'>
<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                            <input id="username" type="text" class="form-control" name="username" value="" placeholder="Kasutajanimi">                                        
                        </div>

                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                            <input id="password" type="password" class="form-control" name="password" value="" placeholder="Parool">                                        
                        </div>

                        <button type="submit" class="btn btn-primary">Logi sisse</button>
                   </form>
     
</nav>
</@security.authorize>