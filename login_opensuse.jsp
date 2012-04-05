<%@ page language="java" 
%><%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"
%><%@ page import="java.util.*" 
%><%@ page import="com.novell.nidp.*"
%><%@ page import="com.novell.nidp.servlets.*" 
%><%@ page import="com.novell.nidp.resource.*" 
%><%@ page import="com.novell.nidp.resource.jsp.*" 
%><%@ page import="com.novell.nidp.ui.*" 
%><%
    ContentHandler handler = new ContentHandler(request,response);
    String target = (String) request.getAttribute("target");

    String serverIncludePath = "https://secure-www.novell.com";
    if(request.getServerName().indexOf("stage") > 0) {
   	     serverIncludePath = "https://secure-wwwstage.provo.novell.com";
    }
    if(request.getServerName().indexOf("test") > 0) {
   	     serverIncludePath = "https://secure-wwwtest.provo.novell.com";
    }

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>


  <link href="https://static.opensuse.org/login.css" rel="stylesheet" type="text/css">
  <link rel="stylesheet" href=" http://static.opensuse.org/themes/bento/css/style.fluid.css" type="text/css" media="screen" title="All" charset="utf-8" />

  <script src=" https://static.opensuse.org/themes/bento/js/jquery.js" type="text/javascript" charset="utf-8"></script>
  <script src=" https://static.opensuse.org/themes/bento/js/script.js" type="text/javascript" charset="utf-8"></script>
  <script src=" https://static.opensuse.org/themes/bento/js/l10n/global-navigation-data-en_US.js" type="text/javascript" charset="utf-8"></script>
  <script src=" https://static.opensuse.org/themes/bento/js/global-navigation.js" type="text/javascript" charset="utf-8"></script>
  <link rel="icon" type="image/png" href="https://static.opensuse.org/themes/bento/images/favicon.png" />
  <title>openSUSE.org - Login</title>

</head>

<body>

  <!-- Start: Header -->
  <div id="header">
    <div id="header-content" class="container_12">
      <a id="header-logo" href="#home"><img src=" http://static.opensuse.org/themes/bento/images/header-logo.png" width="46" height="26" alt="Header Logo" /></a>
      <ul id="global-navigation">
        <li id="item-downloads"><a href="http://opensuse.org/sitemap#downloads">Downloads</a></li>
        <li id="item-support"><a href="http://opensuse.org/sitemap#support">Support</a></li>
        <li id="item-community"><a href="http://opensuse.org/sitemap#community">Community</a></li>
        <li id="item-development"><a href="http://opensuse.org/sitemap#development">Development</a></li>
      </ul>

    </div>
  </div>
  <!-- End: Header -->


  <!-- Start: Main Content Area -->
  <div id="content" class="container_12  content-wrapper">

    <section class="login">
      <h1>Login here</h1>

      <ul>
	<form name="IDPLogin" enctype="application/x-www-form-urlencoded" method="POST" action="<%= (String) request.getAttribute("url") %>" autocomplete="off">
	<input type="hidden" name="option" value="credential">
        <% if (target != null) { %>
           <input type="hidden" name="target" value="<%=target%>">
        <% } %>
        <%
           String err = (String) request.getAttribute(NIDPConstants.ATTR_LOGIN_ERROR);
             //String err = null;
           if (err != null) {
        %>
           <div class="error"><%=err%><div>
        <%  } %>
        <li><input name="Ecom_User_ID" type="text" placeholder="username" class="username" tabindex="1"></li>
        <li>
          <input name="Ecom_Password" type="password" value="" placeholder="password" class="password" tabindex="2">
        </li>
      </ul>
      
      <a href=#>
        <aside class="loginBtn">
          <input name="submit" type="submit" tabindex="3" >
        </aside>
      </a>



        <aside class="link">
          <a href="#">Forgot your password?</a>
        </aside>
      </section>
     <section class="info">
        <h1>Don't have an account yet ?</h1>

        <li>Fill some thing in here</li>
        <li>Fill some thing in here</li>
        <li>Fill some thing in here</li>
        <li>Fill some thing in here</li>

        <p>

          <a href="#" >
            <aside class="signUpBtn">
              <input name="" type="button">
            </aside>
          </a>
        </p>

  
        </section>
      </section>    

    <!-- End: Main Content Area -->

  </div>
    <!-- Start: Footer -->
    <div id="footer" class="container_12">

      <div id="footer-legal" class="border-top grid_12">
        <p>
          &copy; 2010 Novell, Inc. All rights reserved. Novell is a registered trademark and
          openSUSE and SUSE are trademarks of Novell, Inc. in the United States and other countries.
        </p>
      </div>
    </div>
    <!-- End: Footer -->


  </body>
  </html>				
