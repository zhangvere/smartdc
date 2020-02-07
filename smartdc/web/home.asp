<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <% showResources(); %>
    <title>Home</title>
</head>

    <body class="body-list">
        <div class="panel panel-default">
                <div class="panel-heading"><span class="title">DCU Serial NO.: <strong><% showMySerialNo(); %></strong></span>
                    <span class="badge"><% showDCVersion(); %></span>
                </div>
                <div class="panel-body">
                    <% showSummary(); %>
                 </div>
        </div>
    </body>
</html>
