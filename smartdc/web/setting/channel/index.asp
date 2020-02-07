<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <% showResources(); %>
    <title>Channel List</title>
</head>
<body class="body-list">
    <div class="panel panel-default">
        <div class="panel-heading">
            <span class="title">Channel
            </span>
        </div>
        <div class="panel-body">
            <form class="navbar-form" action="index.asp" method="POST">
                <% showFilterForm('channel'); %>
                <button type="submit" class="btn btn-default">Search</button>
            </form>
        </div>
        <table class="table table-striped table-bordered table-hover">
            <% showTableList('channel'); %>
        </table>
    </div>
</body>
</html>
