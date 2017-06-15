<!doctype html>
<#assign  security=JspTaglibs["http://www.springframework.org/security/tags"] />
<#include "../include/imports.ftl">
<html class="no-js" lang="en">
<head>
<title>EE proto</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
 
<link rel="stylesheet" href="<@hst.webfile path="/css/bootstrap.css"/>">
<link rel="stylesheet" href="<@hst.webfile path="/css/font-awesome.css"/>">
 
<link href='<@hst.webfile path="/css/style.css"/>' rel='stylesheet' type='text/css'>
<link href='<@hst.webfile path="/css/responsive.css"/>' rel='stylesheet' type='text/css'>
<link href='<@hst.webfile path="/css/custom.css"/>' rel='stylesheet' type='text/css'>
 
<!-- Fonts -->
<link href="<@hst.webfile path="/fonts/open-sans.css"/>" rel='stylesheet' type='text/css'>
<link href="<@hst.webfile path="/fonts/raleway.css"/>" rel='stylesheet' type='text/css'>
 
<link rel="stylesheet" media="screen" type="text/css" href="<@hst.webfile path="/css/hippo-green.css"/>" />
 
<link rel="icon" href="<@hst.webfile path="/images/favicon.ico"/>" type="image/x-icon" />
<link rel="shortcut icon" href="<@hst.webfile path="/images/favicon.ico"/>" type="image/x-icon" />
 
<link rel="apple-touch-icon" href="<@hst.webfile path="/images/apple-touch-icon.png"/>" />
 
<link rel="alternate" type="application/rss+xml" title="EE" href="rss" />
 
<@hst.headContributions categoryIncludes="htmlHead" xhtml=true/>

  <script src="<@hst.webfile path="/js/jquery-2.1.0.min.js"/>" type="text/javascript"></script>
  <script src="<@hst.webfile path="/js/bootstrap.min.js"/>" type="text/javascript"></script>
  <script src="<@hst.webfile path="/js/kanzi-menu.js"/>" type="text/javascript"></script>
  <script src="https://unpkg.com/react@15/dist/react.min.js"></script>
  <script src="https://unpkg.com/react-dom@15/dist/react-dom.min.js"></script>
  <script src="https://unpkg.com/babel-standalone@6/babel.min.js"></script>
  <script src="<@hst.webfile path="/js/profile.js"/>" type="text/babel"></script>
  <script src="<@hst.webfile path="/js/contracts.js"/>" type="text/babel"></script>
 
</head>
<body class="bgpattern-neutral">
 

  <div id="wrapper" class="boxed">
    <div class="top_wrapper">
 
      <div class="top-bar">
        <div class="container">
          <div class="row">


<@security.authorize access="isAuthenticated()">
            <!-- lang navigation -->
            <div class="col-sm-6 langnav">
              <nav>
                <ul class="" id="language">
 
                  <li class="active"><i class="fa fa-ellipsis-h"></i> <span>Eesti</span>
                    <ul>
                      <li><a href="#">English</a></li>
                    </ul></li>
 
                </ul>
              </nav>
            </div>

            <div class="col-sm-3" id="top-search">
 <form action="logout" method="post" name="logoutform" id="logoutform">
    <span class="label-nav" style="font-weight:bold">Hi <@security.authentication property="principal.username" /></span>  | <a href="#" onclick="document.logoutform.submit();"><span class="label-nav">Logi välja</span></a>
    <input type="hidden"
                name="${_csrf.parameterName}"
                value="${_csrf.token}"/>
    </form>
            </div>


            <div class="col-sm-3" id="top-search">
 
              <div class="searchbox">
                <form action="<@hst.link siteMapItemRefId="search" />" method="get">
                  <input type="text" class="searchbox-inputtext" id="searchbox-inputtext" name="query"
                    placeholder="Otsi..." /> <label class="searchbox-icon" for="searchbox-inputtext"></label> <input
                    type="submit" class="searchbox-submit" value="Otsi..." />
                </form>
              </div>
            </div>
</@security.authorize>
<@security.authorize access="!isAuthenticated()">
            <!-- lang navigation -->
           <div class="col-sm-6 langnav">
              <nav>
                <ul class="" id="language">
 
                  <li class="active"><i class="fa fa-ellipsis-h"></i> <span>Eesti</span>
                    <ul>
                      <li><a href="#">English</a></li>
                    </ul></li>
 
                </ul>
              </nav>
            </div>

            <div class="col-sm-5" id="top-search">
 
              <div class="searchbox">
                <form action="<@hst.link siteMapItemRefId="search" />" method="get">
                  <input type="text" class="searchbox-inputtext" id="searchbox-inputtext" name="query"
                    placeholder="Otsi..." /> <label class="searchbox-icon" for="searchbox-inputtext"></label> <input
                    type="submit" class="searchbox-submit" value="Otsi..." />
                </form>
              </div>
            </div>
</@security.authorize>

          </div>
        </div>
      </div>
      <!-- Header -->
      <header id="header">
        <div class="container">
 
          <div class="row header">
 
            <!-- Logo -->
            <div class="col-xs-2 logo">
              <a href="index.html"><img src="<@hst.webfile path="/images/Eesti_Energia_logo.svg.png"/>" alt="" height="107" /></a>
            </div>
            <!-- //Logo// -->
 
            <!-- Main navigation -->
            <!-- Navigation File -->
            <div class="col-md-12">
 
              <!-- Mobile Button Menu -->
              <div class="mobile-menu-button">
                <i class="fa fa-list-ul"></i>
              </div>
              <!-- //Mobile Button Menu// -->
 
              <@hst.include ref="menu"/>
 
              <!-- Mobile Nav. Container -->
              <ul class="mobile-nav">
                <li class="responsive-searchbox">
                  <!-- Responsive Nave -->
                  <form action="index.html#" method="get">
                    <input type="text" class="searchbox-inputtext" id="searchbox-inputtext-mobile" name="s" />
                    <button class="icon-search"></button>
                  </form> <!-- //Responsive Nave// -->
                </li>
              </ul>
              <!-- //Mobile Nav. Container// -->
            </div>
            <!-- //Main navigation// -->
          </div>
        </div>
      </header>
      <!-- //Header// -->
    </div>
 
    <!-- body / main -->
 
    <div class="content-wrapper">
      <div class="top-title-wrapper">
        <div class="container">
          <div class="row">
            <div class="col-md-12 col-sm-12">
              <div class="page-info">
              </div>
            </div>
          </div>
        </div>
      </div>
	  

      <div class="row"> 
        <@hst.include ref="main"/>
      </div>
         
    </div>
 
    <!-- footer -->
    <div class="row">
      <@hst.include ref="footer"/>
    </div>
 
  </div>
 
  <@hst.headContributions categoryIncludes="htmlBodyEnd" xhtml=true/>

</body>
</html>