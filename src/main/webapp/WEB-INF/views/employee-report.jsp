<!DOCTYPE html>
<html lang="en">

<meta http-equiv="content-type" content="text/html;charset=utf-8"/><!-- /Added by HTTrack -->
<head>


    <%--<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/pdfmake.min.js" ></script>--%>
    <%--<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/vfs_fonts.js" ></script>--%>
    <title>
        Home | Employee(Device) Reports
    </title>
    <style>
        #datatables_filter input[type="search"] {
            font-size: 25px;
            font-weight: bold;
        }

        .btn-group>.btn-group>.btn ,
        .btn-group>.btn:not(.dropdown-toggle)
        {
            margin: 5px;
        }
    </style>
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


                    <a class="navbar-brand" href="#pablo">Employee(Device) Reports</a>
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
                                    <h4 class="card-title">Employee(Device) Reports</h4>
                                </div>
                                <div class="card-body">

                                    <div class="toolbar">
                                        <div class="row">
                                            <div class="col-md-2">
                                                Search By -
                                            </div>
                                            <div class="col-md-2">
                                                <div class="form-check">
                                                    <label class="form-check-label"
                                                           onchange="getCheckBoxvalue('ck_div_id')"
                                                           style="font-weight: bold;color: black">
                                                        <input class="form-check-input" id="ck_div_id" type="checkbox"
                                                               value=""> Device Id
                    <span class="form-check-sign">
                      <span class="check"></span>
                    </span>
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="col-md-2">
                                                <div class="form-check">
                                                    <label class="form-check-label"
                                                           onchange="getCheckBoxvalue('ck_id_name')"
                                                           style="font-weight: bold;color: black">
                                                        <input class="form-check-input" id="ck_id_name" type="checkbox"
                                                               value=""> Name
                    <span class="form-check-sign">
                      <span class="check"></span>
                    </span>
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="col-md-2">
                                                <div class="form-check">
                                                    <label class="form-check-label"
                                                           onchange="getCheckBoxvalue('ck_id_loc')"
                                                           style="font-weight: bold;color: black" onclick="">
                                                        <input class="form-check-input" id="ck_id_loc" type="checkbox"
                                                               value=""> Location
                    <span class="form-check-sign">
                      <span class="check"></span>
                    </span>
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="col-md-2">
                                                <div class="form-check">
                                                    <label class="form-check-label"
                                                           onchange="getCheckBoxvalue('ck_auth_admin')"
                                                           style="font-weight: bold;color: black">
                                                        <input class="form-check-input" id="ck_auth_admin"
                                                               type="checkbox" value=""> Auth Admin
                    <span class="form-check-sign">
                      <span class="check"></span>
                    </span>
                                                    </label>
                                                </div>
                                            </div>

                                        </div>


                                    </div>

                                    <div class="material-datatables">
                                        <table id="datatables" class="table table-striped table-no-bordered table-hover"
                                               cellspacing="0" width="100%" style="width:100%">
                                            <thead>
                                            <tr>
                                                <th style="font-weight: bold;font-size: 14px;">Device Id</th>
                                                <th style="font-weight: bold;font-size: 14px;">Device Name</th>
                                                <th style="font-weight: bold;font-size: 14px;">Last seen time</th>
                                                <th style="font-weight: bold;font-size: 14px;">Last seen location</th>
                                                <th style="font-weight: bold;font-size: 14px;">Address</th>
                                                <th style="font-weight: bold;font-size: 14px;">Company</th>
                                                <th style="font-weight: bold;font-size: 14px;">Battery level</th>
                                                <th style="font-weight: bold;font-size: 14px;">Status</th>
                                                <%--<th style="font-weight: bold;font-size: 14px;">risk</th>--%>
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


    <div class="modal fade" id="noticeModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel2"
         aria-hidden="true">
        <div class="modal-dialog modal-notice">
            <div class="modal-content" style="width: 800px;">
                <div class="modal-header">
                    <h4 class="modal-title" id="myModalLabel2"></h4>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                        <i class="material-icons">close</i>
                    </button>
                </div>
                <div class="modal-header" style="padding-top: 0">
                    <h6 class="modal-title" id="myModalLabel"></h6>
                </div>
                <div class="modal-body">
                    <%--<div class="row">--%>
                        <%--<div class="col-md-3 ml-auto mr-auto">--%>

                            <%--<input type="text" class="form-control datetimepicker" value="11/06/2018">--%>
                            <%--<div style="text-align: center;margin-top: 8px;">--%>
                                <%--<button class="btn btn-primary btn-sm" id="btn-search">Search--%>
                                    <%--<div class="ripple-container"></div>--%>
                                <%--</button>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                    <%--</div>--%>

                    <div class="row">
                        <div class="col-md-12 ml-auto mr-auto">
                            <div class="material-datatables">
                                <table id="table_history" class="table table-striped table-no-bordered table-hover"
                                       cellspacing="0" width="100%" style="width:100%">
                                    <thead>
                                    <tr>
                                        <th colspan="2" style="font-weight: bold;font-size: 14px;text-align:center">Time Range</th>
                                        <th rowspan="2" style="font-weight: bold;font-size: 14px;text-align:center">Risk Status</th>
                                    </tr>
                                    <tr>
                                        <th style="font-weight: bold;font-size: 14px;">Start</th>
                                        <th style="font-weight: bold;font-size: 14px;">End</th>
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
    var table;

    var device_id1 = false;
    var name1 = false;
    var location1 = false;
    var auth_admin1 = false;
    var buttonCommon = {
        exportOptions: {
            columns: [0,1,2,3,4,5,6,7]
        }
    };
var m_url = "?device_id=false&name=false&location=false&auth_admin=false";
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

        table = $('#datatables').DataTable({
            "processing": true,
            "serverSide": true,
            "ajax": {
                url: '/app/web/device-list-cust-report',
                data: function (data) {
                    data.device_id = device_id1;
                    data.name= name1;
                    data.location= location1;
                    data.auth_admin= auth_admin1;
                }
            },
            "responsive": true,
            "createdRow": function (row, data, index) {

                if (data[9] === 6) {
                    $('td', row).eq(8).before('<button disabled onclick="trackDevice(' + "'" + data[0] + "'" + '),getName('+"'"+data[1]+"'"+')" class="btn btn-info btn-sm">' +
                            '<i class="material-icons">warning</i> history</button>');
                } else {
                    $('td', row).eq(8).before('<button onclick="trackDevice(' + "'" + data[0] + "'" + '),getName('+"'"+data[1]+"'"+')" class="btn btn-info btn-sm">' +
                            '<i class="material-icons">warning</i> history</button>');
                }
                $('td', row).eq(7).html(data[7]);

            }

        });


        table_his = $('#table_history').DataTable({
            "processing": true,
            "serverSide": true,
            "ajax": "/app/web/device-history/test",
            "responsive": true,
            "dom": 'Bfrtip',
            "buttons": {
                "dom": {
                    "button": {
                        "tag": "button",
                        "className": "btn btn-warning btn-sm exbut"
                    }
                },
                "buttons": [
                    {
                        extend: 'copyHtml5',
                        orientation: 'portrait',
                        pageSize: 'LEGAL',
                        title: 'Employee (Devices) Report'
                    },{
                        extend: 'pdfHtml5',
                        orientation: 'portrait',
                        pageSize: 'A4',
                        title: 'Employee (Devices) Report'
                    },{
                        extend: 'excelHtml5',
                        orientation: 'landscape',
                        pageSize: 'LEGAL',
                        title: 'Employee (Devices) Report'
                    },{
                        extend: 'csvHtml5',
                        orientation: 'landscape',
                        pageSize: 'LEGAL',
                        title: 'Employee (Devices) Report'
                    }
                ]
            }

        });


       setInterval(function () {
           table.ajax.reload();
       }, 100000);
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

    function getName(device_name) {
        $('#myModalLabel2').text(device_name);

    }

    function getCheckBoxvalue(id) {
        var url1 = "?";
        if (id == "ck_div_id") {
            if ($('#' + id).prop('checked')) {
                device_id1 = true;
            } else {
                device_id1 = false;
            }
        } else if (id == "ck_id_name") {
            if ($('#' + id).prop('checked')) {
                name1 = true;
            } else {
                name1 = false;
            }
        } else if (id == "ck_id_loc") {
            if ($('#' + id).prop('checked')) {
                location1 = true;
            } else {
                location1 = false
            }
        } else if (id == "ck_auth_admin") {
            if ($('#' + id).prop('checked')) {
                auth_admin1 = true;
            } else {
                auth_admin1 = false;
            }
        }

    }
</script>

</body>

</html>
