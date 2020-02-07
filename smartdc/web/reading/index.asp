<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <% showResources(); %>
    <script type="text/javascript">
        var loading = "<img class='loading' src='/resources/img/loading.gif'/>";
        var timeoutMilScd = 30000;
        var type_index = 0;
        var type = "";
        var meterno = "";
        var cmd = "";
        var data = "";

        $(function () {
            $("#reading").click(function () {
                cmd = "1"
                data = "00"
                // Get item which display on
                type = $('input[name="row"]:checked').val();
                type_index = $('input[name="row"]:checked').parent().index();
                // Get meter
                meterno = $('input[name="meter"]:checked').parent().next().text();
                if (type != "" && meterno != "" && type != null) {
                    start();
                } else {
                    $("#msg").html("");
                    $("#msg2").html("");
                    $("#msg").html("Please select meter and item");
                }
            });
            //
            $("#switch_off").click(function () {
                // OBIS
                type = $(this).val();
                cmd = "3"
                data = "010F00"
                getMeter();
            });
            //
            $("#switch_on").click(function () {
                cmd = "3"
                data = "010F00"
                // OBIS
                type = $(this).val();
                getMeter();
            });

        });

        function getMeter() {
            // Get meter no
            meterno = $('input[name="meter"]:checked').parent().next().text();
            if (meterno != "") {
                pull();
            } else {
                $("#msg").html("Please choose a meter!");
            }
        }

        function pull() {
            $("#msg").html("");
            $("#msg2").html("");
            $.ajax({
                url: "../ajax/reading.asp",
                type: "Post",
                timeout: timeoutMilScd,
                data: {
                    "msno": meterno,
                    "cmd": cmd,
                    "obis": type,
                    "data": data
                },
                cache: "false",
                beforeSend: function () {
                    $("#msg").html(loading);
                },
                error: function () {
                    $("#msg").html("timeout");
                },
                success: function (data) {
                    $("#msg").html("");
                    $("#msg2").html("Action Done");
                }
            });
        }

        function start() {
            $("#msg").html("");
            // Get selected <td>
            var view = $('input[name="meter"]:checked').parent().siblings().eq(type_index - 1);
            $.ajax({
                url: "../ajax/reading.asp",
                type: "Post",
                timeout: timeoutMilScd,
                data: {
                    "msno": meterno,
                    "cmd": cmd,
                    "obis": type,
                    "data": data
                },
                cache: "false",
                beforeSend: function () {
                    view.html(loading);
                },
                error: function () {
                    view.html("timeout");
                },
                success: function (data) {
                    view.html(data);
                }
            });
        }
    </script>
    <title>Meter Reading</title>
</head>

<body class="body-list">
    <div class="panel panel-default">
        <div class="panel-heading">
            <span class="title">
                Meter Reading
            </span>
                  <div class="btn-group btn-group-xs pull-right btn-icon">
                                    <span id="msg" style="color: red"></span>
                                    <span id="msg2" style="color: green"></span>
                                    <button id="reading" class="btn btn-default">Reading</button>
                                    <button id="switch_off" class="btn btn-default" value="46000060030AFF01">Switch Off</button>
                                    <button id="switch_on" class="btn btn-default" value="46000060030AFF02">Switch On</button>
                                    </div>
        </div>
        <div class="panel-body">



        </div>
          <table class="table table-striped table-bordered table-hover">
                                <% showTableMeterReading(); %>
                            </table>
    </div>
</body>
</html>

