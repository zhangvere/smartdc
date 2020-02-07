<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <% showResources(); %>
   
    <title>Smart DC</title>
  </head>

  <body>
    <nav class="navbar navbar-default navbar-fixed-top">
       <div class="container-fluid">
         <div class="navbar-header">
                       <a class="navbar-brand" href="/">
                         <img src="/resources/img/logo.png">
                       </a>
         </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul id="mainMenu" class="nav navbar-nav">
            <% showSysMenu(); %>
          </ul>
          <ul class="nav navbar-nav navbar-right">
            <% showUserMenu(); %>
          </ul>
        </div>
      </div>
    </nav>
<iframe name="DownFrame" id="DownFrame" frameborder="0"
src="home.asp"
 onload="this.height=this.contentWindow.document.documentElement.scrollHeight"></iframe>

    <div class="navbar navbar-default navbar-fixed-bottom footer">
        <% showFooter(); %>
    </div>
  </body>
</html>
