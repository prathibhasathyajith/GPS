<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="context" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>
        Building - Managemnt
    </title>

    <jsp:include page="inc/css_inc.jsp"></jsp:include>
    <style>
        thead > tr {
            font-size: 8px;
        }

        tbody > tr {
            font-size: 12px;
        }

        .btn-group>.btn-group>.btn,
        .btn-group>.btn:not(.dropdown-toggle)
        {
            margin: 5px;
        }
    </style>
</head>

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
            <div class="container-fluid">


                <%--=================================--%>

                <div class="col-md-12 ml-auto mr-auto">
                    <form id="device-validation-form"
                          method="POST" novalidate="novalidate" action="#">
                        <div class="card ">
                            <div class="card-header card-header-info card-header-icon">
                                <div class="card-icon">
                                    <i class="material-icons">smartphone</i>
                                </div>
                                <h4 class="card-title">Add New Building</h4>
                            </div>

                            <div class="card-body " style="padding-bottom: 0px;">
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="form-group bmd-form-group">
                                            <label for="deviceName" class="bmd-label-floating"> Device Name *</label>
                                            <input type="text" class="form-control" id="deviceName" name="deviceName"
                                                   required="true" aria-required="true">
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group bmd-form-group">
                                            <label for="mobile" class="bmd-label-floating"> Mobile *</label>
                                            <input type="text" class="form-control" name="mobile"
                                                   id="mobile" required="true" aria-required="true">
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group bmd-form-group">
                                            <label for="email" class="bmd-label-floating"> Email Address *</label>
                                            <input type="email" class="form-control" id="email" name="email"
                                                   required="true" aria-required="true">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">

                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <%--<label for="user_select">Select User</label>--%>
                                            <select id="user_select" class="form-control" name="user">
                                                <option value="" selected="">Select User</option>
                                                <%--<option value="1">Active</option>--%>
                                                <%--<option value="2">Inactive</option>--%>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <%--<label >Select Building</label>--%>
                                            <select id="building_select" class="form-control" name="building">
                                                <option value="" selected="">Select Place</option>
                                                <%--<option value="1">Active</option>--%>
                                                <%--<option value="2">Inactive</option>--%>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <%--<label for="status_select">Select Status</label>--%>
                                            <select id="status_select" class="form-control" name="status">
                                                <option value="" selected="">Select Status</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>

                                <div class="category form-category" style="margin-top: 35px;">* Required fields</div>
                            </div>
                            <div class="card-footer text-right">
                                <div class="form-check mr-auto">

                                </div>
                                <button type="submit" class="btn btn-info">Register</button>
                            </div>
                        </div>
                    </form>
                </div>



                <%--==================--%>






                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-header card-header-primary card-header-icon">
                                <div class="card-icon">
                                    <i class="material-icons">assignment</i>
                                </div>
                                <h4 class="card-title">Buildings</h4>
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
                                            <th style="font-weight: bold;font-size: 14px;">Employee Id</th>
                                            <th style="font-weight: bold;font-size: 14px;">Name</th>
                                            <th style="font-weight: bold;font-size: 14px;">Building Name</th>
                                            <th style="font-weight: bold;font-size: 14px;">Last Seen time</th>
                                            <th style="font-weight: bold;font-size: 14px;">Last Seen Location</th>
                                            <th style="font-weight: bold;font-size: 14px;">Address</th>
                                            <th style="font-weight: bold;font-size: 14px;">Registered admin</th>
                                            <th style="font-weight: bold;font-size: 14px;">Battery level</th>
                                            <th style="font-weight: bold;font-size: 14px;">Status</th>
                                            <%--<th style="font-weight: bold;font-size: 14px;">Geo-Fence</th>--%>
                                            <th style="font-weight: bold;font-size: 14px;">Action</th>
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
                    <!-- end col-md-12 -->
                </div>
                <!-- end row -->
            </div>

        </div>


    </div>

</div>

<jsp:include page="inc/script_inc.jsp"></jsp:include>

<script>

    var device_id1 = false;
    var name1 = false;
    var location1 = false;
    var auth_admin1 = false;
    var table;

    var buttonCommon = {
        exportOptions: {
            columns: [0,1,2,3,4,5,6,7]
        }
    };


    $(document).ready(function () {

        setFormValidation('#device-validation-form');

        table = $('#datatables').DataTable({
            "processing": true,
            "serverSide": true,
            "ajax": "/app/web/device-list", "ajax": {
                url: '/app/web/device-list',
                data: function (data) {
                    data.device_id = device_id1;
                    data.name = name1;
                    data.location = location1;
                    data.auth_admin = auth_admin1;
                }
            },
            "responsive": true,
            "createdRow": function (row, data, index) {
                $('td', row).eq(6).html(data[6]);
//                if(data[9] === 6){
//                    $('td', row).eq(8).before('<button disabled onclick="trackDevice('+"'"+data[0]+"'"+')" class="btn btn-warning btn-sm">'+
//                            '<i class="material-icons">warning</i> Track</button>');
//                }else{
                $('td', row).eq(9).before(
                    '<div class="btn-group">' +
                    '<button style="margin: 2px;" onclick="trackDevice(' + "'" + data[0] + "'" + ')" class="btn btn-warning btn-sm"> Edit</button>' +
                    '<button  style="margin: 2px;" onclick="deleteDevice(' + "'" + data[0] + "'" + ')" class="btn btn-warning btn-sm"> Delete</button>'
                    + '</div>'
                );
//                }


            },
            "dom": 'Bfrtip',
            "buttons": {
                "dom": {
                    "button": {
                        "tag": "button",
                        "className": "btn btn-warning btn-sm exbut"
                    }
                },
                "buttons": [

                    $.extend( true, {}, buttonCommon, {
                        extend: 'copyHtml5',
                        title: 'Employee (Devices) Report'
                    } ),
                    $.extend( true, {}, buttonCommon, {
                        extend: 'excelHtml5',
                        title: 'Employee (Devices) Report'
                    } ),
                    $.extend( true, {}, buttonCommon, {
                        extend: 'csvHtml5',
                        title: 'Employee (Devices) Report'
                    } ),
                    $.extend( true, {}, buttonCommon, {
                        extend: 'pdfHtml5',
//                        orientation: 'landscape',
                        pageSize: 'LEGAL'
                    } ),

                ]
            }



        });
        setInterval( function () {
            table.ajax.reload();
        }, 100000 );

        $.ajax({
            url: 'app/web/status/list/dropdown',
            dataType: 'json',
            type: 'get',
            contentType: 'application/json',
            processData: false,
            success: function (data) {
                data.forEach(function (details) {
                    $('#status_select').append( '<option value="'+details.status_id+'">' +details.status_name + '</option>' );
                });

            },
            error: function (jqXhr, textStatus, errorThrown) {
                console.log(errorThrown);
            }
        });

        $.ajax({
            url: 'app/web/user/list/dropdown',
            dataType: 'json',
            type: 'get',
            contentType: 'application/json',
            processData: false,
            success: function (data) {
                data.forEach(function (details) {
                    $('#user_select').append( '<option value="'+details.user_id+'">' +details.user_name + '</option>' );
                });

            },
            error: function (jqXhr, textStatus, errorThrown) {
                console.log(errorThrown);
            }
        });

        $.ajax({
            url: 'app/web/building/list/dropdown',
            dataType: 'json',
            type: 'get',
            contentType: 'application/json',
            processData: false,
            success: function (data) {
                data.forEach(function (details) {
                    $('#building_select').append( '<option value="'+details.building_id+'">' +details.building_name + '</option>' );
                });

            },
            error: function (jqXhr, textStatus, errorThrown) {
                console.log(errorThrown);
            }
        });


    });
    function trackDevice(device_id) {
        alert(device_id);
    }

    function deleteDevice(device_id) {


        swal({
            title: 'Are you sure?',
            text: "You won't be able to revert this!",
            type: 'warning',
            showCancelButton: true,
            confirmButtonClass: 'btn btn-success',
            cancelButtonClass: 'btn btn-danger',
            confirmButtonText: 'Yes, delete it!',
            buttonsStyling: false
        }).then(function() {
            $.ajax({
                url: '/app/web/delete/device/'+device_id,
                dataType: 'json',
                type: 'POST',
                contentType: 'application/json',
                processData: false,
                success: function (data) {
                    if (data.code == 200) {
                        swal({
                            title: "Deleted!",
                            text: data.message,
                            buttonsStyling: false,
                            confirmButtonClass: "btn btn-success",
                            type: "success"
                        }).catch(swal.noop)
                    } else {
                        swal({
                            title: "ERROR!",
                            text: data.message,
                            buttonsStyling: false,
                            confirmButtonClass: "btn btn-danger"
                        }).catch(swal.noop)
                    }
                    table.ajax.reload();
                },
                error: function (jqXhr, textStatus, errorThrown) {
                    console.log(errorThrown);
                    alert(errorThrown)
                }
            });
        }).catch(swal.noop)
    }

    function setFormValidation(id) {
        $(id).validate({
            highlight: function (element) {
                $(element).closest('.form-group').removeClass('has-success').addClass('has-danger');
                $(element).closest('.form-check').removeClass('has-success').addClass('has-danger');
            },
            success: function (element) {
                $(element).closest('.form-group').removeClass('has-danger').addClass('has-success');
                $(element).closest('.form-check').removeClass('has-danger').addClass('has-success');
            },
            errorPlacement: function (error, element) {
                $(element).append(error);
            },
            submitHandler: function () {
                var json = {
                    deviceName: $("#deviceName").val(),
                    mobile: $("#mobile").val(),
                    email: $("#email").val(),
                    user: $("#user_select").val(),
                    building: $("#building_select").val(),
                    status : $("#status_select").val()
                }
                addDevice(json)
            }
        });
    }


    function addDevice(jsn) {
        $.ajax({
            url: '/app/web/add/device/add-new',
            dataType: 'json',
            type: 'POST',
            data: JSON.stringify(jsn),
            contentType: 'application/json',
            success: function (data) {
                if (data.code == 200) {
                    swal({
                        title: "Good job!",
                        text: data.message,
                        buttonsStyling: false,
                        confirmButtonClass: "btn btn-success",
                        type: "success"
                    }).catch(swal.noop);

                    $("#deviceName").val("");
                    $("#mobile").val("");
                    $("#email").val("");
                    $("#user_select").val("");
                    $("#building_select").val("");
                    $("#status_select").val("");

                    table.ajax.reload();
                } else {
                    swal({
                        title: "ERROR!",
                        text: data.message,
                        buttonsStyling: false,
                        confirmButtonClass: "btn btn-danger"
                    }).catch(swal.noop)
                }


            },
            error: function (jqXhr, textStatus, errorThrown) {
                swal({
                    title: "ERROR!",
                    text:"Please fill all fields.!",
                    buttonsStyling: false,
                    confirmButtonClass: "btn btn-danger"
                }).catch(swal.noop)
            }
        });
    }
</script>
</body>
</html>