<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <% showResources(); %>
    <title>Create Task</title>
</head>

<body class="body-list">
    <div class="panel panel-default">
        <div class="panel-heading">
            <span class="title">
                Create Task </span>
                <div class="btn-group pull-right btn-icon">
                    <a class="btn btn-xs btn-default" title="Create" href="index.asp"><i class="fa fa-mail-reply"></i></a>
                </div>

        </div>
        <div class="panel-body">
            <form class="form-horizontal" action="/action/saveAction?viewname=task" method="post">
                <% showCreateView('task'); %>
            </form>
        </div>
    </div>
</body>
</html>
