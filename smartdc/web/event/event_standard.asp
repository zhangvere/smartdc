<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <% showResources(); %>

    <script type="text/javascript" src="/resources/js/My97DatePicker/WdatePicker.js"></script>
    <script type="text/javascript" src="/resources/js/tableExport/tableExport.js"></script>
    <script type="text/javascript" src="/resources/js/tableExport/jquery.base64.js"></script>

    <script type="text/javascript" class="init">
        $(document).ready(function () {
            $('#pdata').DataTable();
        });
    </script>

    <title>Event Standard</title>
</head>
<body class="body-list">
    <div class="panel panel-default">
        <div class="panel-heading">
            <span class="title">Event Standard
            </span>
        </div>
        <div class="panel-body">
            <form class="navbar-form" action="event_standard.asp" method="POST">
                <% showFilterPeriodForm('standard'); %>
                <button type="submit" class="btn btn-default">Search</button>
            </form>
        </div>
        <table class="table table-striped table-bordered table-hover">
            <% showEventAnalysisPage('standard'); %>
        </table>
    </div>
</body>
</html>
