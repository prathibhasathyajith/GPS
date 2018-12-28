<!DOCTYPE html>
<html lang="en">

<meta http-equiv="content-type" content="text/html;charset=utf-8"/><!-- /Added by HTTrack -->
<head>


    <title>
        Home | Dashboard
    </title>

</head>
<jsp:include page="inc/css_inc.jsp"></jsp:include>
<body class="">


<div class="wrapper ">
    <jsp:include page="inc/side_bar.jsp"></jsp:include>

    <div class="main-panel">
        <!-- Navbar -->
        <nav class="navbar navbar-expand-lg navbar-transparent navbar-absolute fixed-top " id="navigation-example">
            <div class="container-fluid">
                <div class="navbar-wrapper">


                    <div class="navbar-minimize">
                        <button id="minimizeSidebar" class="btn btn-just-icon btn-white btn-fab btn-round">
                            <i class="material-icons text_align-center visible-on-sidebar-regular">more_vert</i>
                            <i class="material-icons design_bullet-list-67 visible-on-sidebar-mini">view_list</i>
                        </button>
                    </div>


                    <a class="navbar-brand" href="#pablo">Dashboard</a>
                </div>

                <button class="navbar-toggler" type="button" data-toggle="collapse" aria-controls="navigation-index"
                        aria-expanded="false" aria-label="Toggle navigation" data-target="#navigation-example">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="navbar-toggler-icon icon-bar"></span>
                    <span class="navbar-toggler-icon icon-bar"></span>
                    <span class="navbar-toggler-icon icon-bar"></span>
                </button>


            </div>
        </nav>
        <!-- End Navbar -->


        <div class="content">
            <div class="content">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="card">
                                <div class="card-header card-header-primary card-header-icon">
                                    <div class="card-icon">
                                        <i class="material-icons">assignment</i>
                                    </div>
                                    <h4 class="card-title">User Reports</h4>
                                </div>
                                <div class="card-body">

                                    <div class="toolbar">
                                        <!--        Here you can write extra buttons/actions for the toolbar              -->
                                    </div>
                                    <div class="material-datatables">
                                        <table id="datatables" class="table table-striped table-no-bordered table-hover"
                                               cellspacing="0" width="100%" style="width:100%">
                                            <thead>
                                            <tr>
                                                <th style="font-weight: bold;font-size: 14px;">Device Id</th>
                                                <th style="font-weight: bold;font-size: 14px;">Device Name</th>
                                                <th style="font-weight: bold;font-size: 14px;">Last in-office time</th>
                                                <th style="font-weight: bold;font-size: 14px;">Last out-office time</th>
                                                <th style="font-weight: bold;font-size: 14px;">Office Location</th>
                                                <th style="font-weight: bold;font-size: 14px;">Authorized admin</th>
                                                <th style="font-weight: bold;font-size: 14px;">Status</th>
                                                <th style="font-weight: bold;font-size: 14px;">risk</th>
                                                <th style="font-weight: bold;font-size: 14px;">Track Device</th>
                                            </tr>
                                            </thead>

                                            <tbody>

                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <!-- end content-->
                            </div>
                            <!--  end card  -->
                        </div>
                    </div>

                </div>
            </div>

        </div>


    </div>


    <div class="modal fade" id="noticeModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
         aria-hidden="true">
        <div class="modal-dialog modal-notice">
            <div class="modal-content" style="width: 800px;">
                <div class="modal-header">
                    <h5 class="modal-title" id="myModalLabel"></h5>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                        <i class="material-icons">close</i>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-3 ml-auto mr-auto" >

                            <input type="text" class="form-control datetimepicker" value="11/06/2018">
                            <div style="text-align: center;margin-top: 8px;">
                                <button class="btn btn-primary btn-sm" id="btn-search">Search
                                    <div class="ripple-container"></div>
                                </button>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-12 ml-auto mr-auto">
                            <div class="material-datatables">
                                <table id="table_history" class="table table-striped table-no-bordered table-hover"
                                       cellspacing="0" width="100%" style="width:100%">
                                    <thead>
                                    <tr>
                                        <th style="font-weight: bold;font-size: 14px;">Device Name</th>
                                        <th style="font-weight: bold;font-size: 14px;">Action time</th>
                                        <th style="font-weight: bold;font-size: 14px;">Status</th>
                                    </tr>
                                    </thead>

                                    <tbody>

                                    </tbody>
                                </table>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="modal-footer justify-content-center">
                    <button type="button" class="btn btn-info btn-round" data-dismiss="modal">Done!</button>
                </div>
            </div>
        </div>
    </div>


</div>


<jsp:include page="inc/script_inc.jsp"></jsp:include>
<script>
    var table_his;
    $(document).ready(function () {
        $('.datetimepicker').datetimepicker({
            icons: {
                time: "fa fa-clock-o",
                date: "fa fa-calendar",
                up: "fa fa-chevron-up",
                down: "fa fa-chevron-down",
                previous: 'fa fa-chevron-left',
                next: 'fa fa-chevron-right',
                today: 'fa fa-screenshot',
                clear: 'fa fa-trash',
                close: 'fa fa-remove'
            },

        });

        var table = $('#datatables').DataTable({
            "processing": true,
            "serverSide": true,
            "ajax": "/app/web/device-list",
            "responsive": true,
            "createdRow": function (row, data, index) {

                if (data[9] === 6) {
                    $('td', row).eq(8).before('<button disabled onclick="trackDevice(' + "'" + data[0] + "'" + ')" class="btn btn-info btn-sm">' +
                        '<i class="material-icons">warning</i> history</button>');
                } else {
                    $('td', row).eq(8).before('<button onclick="trackDevice(' + "'" + data[0] + "'" + ')" class="btn btn-info btn-sm">' +
                        '<i class="material-icons">warning</i> history</button>');
                }
                $('td', row).eq(6).html(data[6]);

            }
        });


        table_his = $('#table_history').DataTable({
            "processing": true,
            "serverSide": true,
            "ajax": "/app/web/device-history/test",
            "responsive": true,
        });


        setInterval(function () {
            table.ajax.reload();
        }, 10000);
    });
    $('#btn-search').click(function () {
        var selected = $(".datetimepicker").val();
   table_his.ajax.reload();
    });
    function trackDevice(device_id) {
        $('#myModalLabel').text("Action History of user (" + device_id + ") ");

        table_his.ajax.url('/app/web/device-history/' + device_id).load();
        $('#noticeModal').modal('show');
    }
</script>

</body>

</html>
