<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <% showResources(); %>
    <title>Change Password</title>
</head>

<body class="body-list">
    <div class="panel panel-default">
        <div class="panel-heading">
            <span class="title">Change Password</span>
        </div>
        <div class="panel-body">
            <form class="form-horizontal" action="/action/change_password" method="post">
                <div class="form-group">
                    <label class="col-sm-3 control-label redstar">Current Password</label>
                    <div class="col-sm-3">
                        <input type="password" name="password" class="form-control" maxlength="20" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label redstar">New Password</label>
                    <div class="col-sm-3">
                        <input type="password" name="newpassword" class="form-control" maxlength="20" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label redstar">Confirm Password</label>
                    <div class="col-sm-3">
                        <input type="password" name="repnewpassword" class="form-control" maxlength="20" />
                    </div>
                </div>
                <div class="control-group">
                    <div class="col-sm-offset-3 col-sm-3">
                        <input type="submit" id="update"
                            value="Save"
                            class="btn btn-info bottom-margin" />
                    </div>
                </div>
            </form>
        </div>
    </div>
</body>
</html>
