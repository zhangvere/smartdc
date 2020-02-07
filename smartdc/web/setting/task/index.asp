<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <% showResources(); %>
    <title>Task List</title>
</head>
<body class="body-list">
    <div class="panel panel-default">
        <div class="panel-heading">
            <span class="title">Task
            </span>
            <div class="btn-group pull-right btn-icon">
                <a class="btn btn-xs btn-default" title="Create" href="create.asp"><i class="glyphicon glyphicon-plus"></i></a>
            </div>
        </div>
        <div class="panel-body">
            <form class="navbar-form" action="index.asp" method="POST">
                <% showFilterForm('task'); %>
                <button type="submit" class="btn btn-default">Search</button>
            </form>
        </div>
        <table class="table table-striped table-bordered table-hover">
            <% showTableList('task'); %>
        </table>
    </div>
</body>
</html>
