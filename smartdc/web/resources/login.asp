<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" href="/resources/img/favicon.ico">
    <link href="/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="/resources/css/dc.css" rel="stylesheet">
    <script type="text/javascript" src="/resources/js/jquery-2.2.2.min.js"></script>
    <script type="text/javascript" src="/resources/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="/resources/css/font-awesome.css">
    <title>Login - DCU Web Portal</title>
    <style type="text/css">
        body {
            color: #fff;
            background: linear-gradient(-45deg, #EE7752, #E73C7E, #23A6D5, #23D5AB);
            background-size: 400% 400%;
            -webkit-animation: Gradient 15s ease infinite;
            -moz-animation: Gradient 15s ease infinite;
            animation: Gradient 15s ease infinite;
        }

        @-webkit-keyframes Gradient {
            0% {
                background-position: 0% 50%
            }
            50% {
                background-position: 100% 50%
            }
            100% {
                background-position: 0% 50%
            }
        }

        @-moz-keyframes Gradient {
            0% {
                background-position: 0% 50%
            }
            50% {
                background-position: 100% 50%
            }
            100% {
                background-position: 0% 50%
            }
        }

        @keyframes Gradient {
            0% {
                background-position: 0% 50%
            }
            50% {
                background-position: 100% 50%
            }
            100% {
                background-position: 0% 50%
            }
        }
       .alert {
                margin: 0 auto 20px;
       }
    </style>
</head>
<body class="bg">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <% loginStatus(); %>
                <form method="post" action="/action/login" class="bootstrap-admin-login-form">
                    <h2 class="text-primary"><img src="/resources/img/logo.png"><span class="float-right">DCU Web Portal</span></h2><hr/>
                    <h3 class="text-muted"><i class="fa fa-user" ></i> Login</h3>
                    <div class="form-group">
                        <input class="form-control" type="text" name="username" placeholder="User" maxlength="32"/>
                    </div>
                    <div class="form-group">
                        <input class="form-control" type="password" name="password" placeholder="Password" maxlength="32"/>
                    </div>
                    <div class="form-group clearfix">
                    <button class="btn btn-success float-right" type="submit">Login <i class="fa fa-sign-in"></i></button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <script type="text/javascript">
            $(function () {
                // Setting focus
                $('input[name="email"]').focus();

                // Setting width of the alert box
                var alert = $('.alert');
                var formWidth = $('.bootstrap-admin-login-form').innerWidth();
                var alertPadding = parseInt($('.alert').css('padding'));

                if (isNaN(alertPadding)) {
                    alertPadding = parseInt($(alert).css('padding-left'));
                }

                $('.alert').width(formWidth - 2 * alertPadding);
            });
        </script>
</body>
</html>
