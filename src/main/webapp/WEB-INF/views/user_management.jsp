<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="context" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>
        User - Managemnt
    </title>

    <jsp:include page="inc/css_inc.jsp"></jsp:include>
    <style>
        tbody > tr {
            font-size: 12px;
        }

        .btn-group > .btn-group > .btn,
        .btn-group > .btn:not(.dropdown-toggle) {
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


                    <a class="navbar-brand" href="#pablo">Registered - Users</a>
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


        <div class="content" style="padding-top: 0px">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <ul class="nav nav-pills nav-pills-warning nav-pills-icons justify-content-center"
                            role="tablist">
                            <%--<li class="nav-item">--%>
                                <%--<a class="nav-link active" data-toggle="tab" href="#link1" role="tablist">--%>
                                    <%--<i class="material-icons" style="padding: 0px">person</i> Web - Users--%>
                                <%--</a>--%>
                            <%--</li>--%>
                            <li class="nav-item">
                                <a class="nav-link active" data-toggle="tab" href="#link2" role="tablist">
                                    <i class="material-icons" style="padding: 0px">person</i> Mobile - Users
                                </a>
                            </li>

                        </ul>

                    </div>


                    <div class="tab-content tab-space tab-subcategories col-md-12" style="padding: 0px;">
                        <div class="tab-pane active show" id="link1">
                            <div class="col-md-8 ml-auto mr-auto">
                                <form id="web-user-validation-form"
                                      method="POST" novalidate="novalidate">
                                    <div class="card ">
                                        <div class="card-header card-header-info card-header-icon">
                                            <div class="card-icon">
                                                <i class="material-icons">mail_outline</i>
                                            </div>
                                            <h4 class="card-title">Register User</h4>
                                        </div>
                                        <div class="card-body " style="padding-bottom: 0px;">
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group bmd-form-group">
                                                        <label for="email" class="bmd-label-floating"> Email Address
                                                            *</label>
                                                        <input type="email" class="form-control" id="email" name="email"
                                                               required="true" aria-required="true">
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group bmd-form-group">
                                                        <label for="mobile" class="bmd-label-floating"> Mobile *</label>
                                                        <input type="text" class="form-control" name="mobile"
                                                               id="mobile" required="true" aria-required="true">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group bmd-form-group">
                                                        <label for="name" class="bmd-label-floating"> Name *</label>
                                                        <input type="text" class="form-control" id="name" name="name"
                                                               required="true" aria-required="true">
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group bmd-form-group">
                                                        <label for="user_name" class="bmd-label-floating"> User Name
                                                            *</label>
                                                        <input type="text" class="form-control" name="user_name"
                                                               id="user_name" required="true" aria-required="true">
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group bmd-form-group">
                                                        <label for="name" class="bmd-label-floating"> Password *</label>
                                                        <input type="password" class="form-control" id="password" name="password"
                                                               required="true" aria-required="true">
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group bmd-form-group">
                                                        <label for="user_name" class="bmd-label-floating"> Confirm password
                                                            *</label>
                                                        <input type="password" class="form-control" name="cnf_pasword"
                                                               id="cnf_pasword" required="true" aria-required="true">
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="category form-category">* Required fields</div>
                                        </div>
                                        <div class="card-footer text-right">
                                            <div class="form-check mr-auto">

                                            </div>
                                            <button type="submit" class="btn btn-info">Register</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                            <div class="card">
                                <div class="card-body">
                                    <div class="material-datatables">
                                        <table id="datatables"
                                               class="table table-striped table-no-bordered table-hover"
                                               cellspacing="0" width="100%" style="width:100%">
                                            <thead>
                                            <tr>
                                                <th style="font-weight: bold;font-size: 13px;display: none">user id</th>
                                                <th style="font-weight: bold;font-size: 13px">User Name</th>
                                                <th style="font-weight: bold;font-size: 13px">Name</th>
                                                <th style="font-weight: bold;font-size: 13px">Mobile</th>
                                                <th style="font-weight: bold;font-size: 13px">Email</th>
                                                <th style="font-weight: bold;font-size: 13px">Status</th>
                                                <th style="font-weight: bold;font-size: 13px">Category</th>
                                                <th style="font-weight: bold;font-size: 13px">Type</th>
                                                <th style="font-weight: bold;font-size: 13px">Role</th>
                                                <th style="font-weight: bold;font-size: 13px">Action</th>

                                            </tr>
                                            </thead>

                                            <tbody>

                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>


                        </div>
                        <%--<div class="tab-pane" id="link2">--%>
                            <%--<div class="col-md-8 ml-auto mr-auto">--%>
                                <%--<form id="mob-user-validation-form" action="#" method="POST" novalidate="novalidate">--%>
                                    <%--<div class="card ">--%>
                                        <%--<div class="card-header card-header-info card-header-icon">--%>
                                            <%--<div class="card-icon">--%>
                                                <%--<i class="material-icons">mail_outline</i>--%>
                                            <%--</div>--%>
                                            <%--<h4 class="card-title">Register Form</h4>--%>
                                        <%--</div>--%>
                                        <%--<div class="card-body " style="padding-bottom: 0px;">--%>
                                            <%--<div class="row">--%>
                                                <%--<div class="col-md-6">--%>
                                                    <%--<div class="form-group bmd-form-group">--%>
                                                        <%--<label for="email1" class="bmd-label-floating"> Email--%>
                                                            <%--Address *</label>--%>
                                                        <%--<input type="email" class="form-control" id="email1"--%>
                                                               <%--required="true" aria-required="true">--%>
                                                    <%--</div>--%>
                                                <%--</div>--%>
                                                <%--<div class="col-md-6">--%>
                                                    <%--<div class="form-group bmd-form-group">--%>
                                                        <%--<label for="mobile1" class="bmd-label-floating"> Mobile--%>
                                                            <%--*</label>--%>
                                                        <%--<input type="text" class="form-control" name="mobile1"--%>
                                                               <%--id="mobile1" required="true" aria-required="true">--%>
                                                    <%--</div>--%>
                                                <%--</div>--%>
                                            <%--</div>--%>
                                            <%--<div class="row">--%>
                                                <%--<div class="col-md-6">--%>
                                                    <%--<div class="form-group bmd-form-group">--%>
                                                        <%--<label for="name1" class="bmd-label-floating"> Name *</label>--%>
                                                        <%--<input type="text" class="form-control" id="name1" name="name1"--%>
                                                               <%--required="true" aria-required="true">--%>
                                                    <%--</div>--%>
                                                <%--</div>--%>
                                                <%--<div class="col-md-6">--%>
                                                    <%--<div class="form-group bmd-form-group">--%>
                                                        <%--<label for="user_name1" class="bmd-label-floating"> User Name--%>
                                                            <%--*</label>--%>
                                                        <%--<input type="text" class="form-control" name="user_name1"--%>
                                                               <%--id="user_name1" required="true" aria-required="true">--%>
                                                    <%--</div>--%>
                                                <%--</div>--%>
                                            <%--</div>--%>
                                            <%--<div class="row">--%>
                                                <%--<div class="col-md-6">--%>
                                                    <%--<div class="form-group bmd-form-group">--%>
                                                        <%--<label for="name" class="bmd-label-floating"> Password *</label>--%>
                                                        <%--<input type="password" class="form-control" id="password1" name="password1"--%>
                                                               <%--required="true" aria-required="true">--%>
                                                    <%--</div>--%>
                                                <%--</div>--%>
                                                <%--<div class="col-md-6">--%>
                                                    <%--<div class="form-group bmd-form-group">--%>
                                                        <%--<label for="user_name" class="bmd-label-floating"> Confirm password--%>
                                                            <%--*</label>--%>
                                                        <%--<input type="password" class="form-control" name="cnf_pasword1"--%>
                                                               <%--id="cnf_pasword1" required="true" aria-required="true">--%>
                                                    <%--</div>--%>
                                                <%--</div>--%>
                                            <%--</div>--%>

                                            <%--<div class="category form-category">* Required fields</div>--%>
                                        <%--</div>--%>
                                        <%--<div class="card-footer text-right">--%>
                                            <%--<div class="form-check mr-auto">--%>

                                            <%--</div>--%>
                                            <%--<button type="submit" class="btn btn-info">Register</button>--%>
                                        <%--</div>--%>
                                    <%--</div>--%>
                                <%--</form>--%>
                            <%--</div>--%>
                            <%--<div class="card">--%>
                                <%--<div class="card-body">--%>
                                    <%--<div class="material-datatables">--%>
                                        <%--<table id="datatables_1"--%>
                                               <%--class="table table-striped table-no-bordered table-hover"--%>
                                               <%--cellspacing="0" width="100%" style="width:100%">--%>
                                            <%--<thead>--%>
                                            <%--<tr>--%>
                                                <%--<th style="font-weight: bold;font-size: 13px;display: none">user id</th>--%>
                                                <%--<th style="font-weight: bold;font-size: 13px">User Name</th>--%>
                                                <%--<th style="font-weight: bold;font-size: 13px">Name</th>--%>
                                                <%--<th style="font-weight: bold;font-size: 13px">Mobile</th>--%>
                                                <%--<th style="font-weight: bold;font-size: 13px">Email</th>--%>
                                                <%--<th style="font-weight: bold;font-size: 13px">Status</th>--%>
                                                <%--<th style="font-weight: bold;font-size: 13px">Category</th>--%>
                                                <%--<th style="font-weight: bold;font-size: 13px">Type</th>--%>
                                                <%--<th style="font-weight: bold;font-size: 13px">Role</th>--%>
                                                <%--<th style="font-weight: bold;font-size: 13px">Action</th>--%>

                                            <%--</tr>--%>
                                            <%--</thead>--%>

                                            <%--<tbody>--%>

                                            <%--</tbody>--%>
                                        <%--</table>--%>
                                    <%--</div>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                        <%--</div>--%>

                    </div>


                    <!-- end col-md-12 -->
                </div>
                <!-- end row -->
            </div>

        </div>


    </div>

    <div class="modal fade" id="usereditModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
         aria-hidden="true">
        <div class="modal-dialog modal-notice">
            <div class="modal-content" style="width: 800px;">
                <div class="modal-header">
                    <h5 class="modal-title" id="usereditModalLable"></h5>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                        <i class="material-icons">close</i>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="card card-profile">
                            <div class="card-avatar">
                                <a href="#pablo">
                                    <img class="img" src="${context}/img/faces/marc.jpg">
                                </a>
                            </div>
                            <div class="card-body">
                                <%--<h6 class="card-category text-gray">CEO / Co-Founder</h6>--%>
                                <%--<h4 class="card-title">Alec Thompson</h4>--%>
                                <p class="card-description">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group bmd-form-group has-success">
                                            <label for="user_nameup" class="bmd-label-floating"> User name *</label>
                                            <input style="font-size: 25px;" type="text" class="form-control"
                                                   id="user_nameup" name="user_nameup" value="undefined" disabled>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group bmd-form-group has-success">
                                            <label for="mobileup" class="bmd-label-floating"> Mobile *</label>
                                            <input type="text" style="font-size: 25px;" class="form-control"
                                                   name="mobileup" id="mobileup" value="undefined" required="true"
                                                   aria-required="true">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group bmd-form-group has-success">
                                            <label for="emailup" class="bmd-label-floating"> Email Address
                                                *</label>
                                            <input type="email" style="font-size: 25px;"
                                                   class="form-control" value="undefined" id="emailup" name="emailup"
                                                   required="true"
                                                   aria-required="true">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group bmd-form-group has-success">
                                            <label for="nameup" class="bmd-label-floating"> Name *</label>
                                            <input type="text" style="font-size: 25px;" class="form-control"
                                                   name="nameup" id="nameup" value="undefined" required="true"
                                                   aria-required="true">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group bmd-form-group has-danger" style="text-align: left">

                                            <div class="dropdown bootstrap-select" style="width: 100%">
                                                <select class="selectpicker" data-style="select-with-transition"
                                                        title="Choose Category" data-size="7" tabindex="-98"
                                                        style="width: 100%">
                                                    <option value="1">WEB-USER</option>
                                                    <option value="2">AD-USER</option>

                                                </select>
                                            </div>


                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group bmd-form-group has-danger">
                                            <div class="dropdown bootstrap-select">
                                                <select class="selectpicker" data-style="select-with-transition"
                                                        title="Choose Type" data-size="7" tabindex="-98">
                                                    <option value="1">type_1</option>

                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group bmd-form-group has-success">
                                            <label for="roleup" class="bmd-label-floating"> User name *</label>
                                            <input style="font-size: 25px" type="text" class="form-control" id="roleup"
                                                   name="roleup"
                                                   value="undefined" disabled>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group bmd-form-group has-danger">
                                            <div class="dropdown bootstrap-select">
                                                <select id="statusup" class="selectpicker"
                                                        data-style="select-with-transition"
                                                        title="Choose Status" data-size="7" tabindex="-98">
                                                    <option value="1">Active</option>
                                                    <option value="2">De-active</option>
                                                    <option value="3">Suspend</option>

                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                </p>
                            </div>
                        </div>
                    </div>


                </div>
                <div class="modal-footer justify-content-center">
                    <div class="col-md-6 ml-auto mr-auto" style="text-align: right">
                        <button type="button" class="btn btn-info " data-dismiss="modal">Update!</button>

                    </div>
                    <div class="col-md-6 ml-auto mr-auto">
                        <button type="button" class="btn btn-info " data-dismiss="modal">Done!</button>

                    </div>

                </div>
            </div>
        </div>
    </div>


</div>

<jsp:include page="inc/script_inc.jsp"></jsp:include>

<script>
    var table;
    var table1;
    var buttonCommon = {
        exportOptions: {
            columns: [0, 1, 2, 3, 4, 5, 6, 7]
        }
    };
    $(document).ready(function () {
        setFormValidation('#web-user-validation-form');
        setFormValidation('#mob-user-validation-form');
         table = $('#datatables').DataTable({
            "processing": true,
            "serverSide": true,
            "ajax": "/app/web/user-list/1",
            "responsive": true,
            "createdRow": function (row, data, index) {
                $('td', row).eq(5).html(data[5]);
                $('td', row).eq(7).after(
                        '<div class="btn-group">' +
                        '<button style="margin: 2px;" onclick="launchModel(' + "'" + data[0] + "'" + ')" class="btn btn-warning btn-sm"> Edit</button>' +
                        '<button  style="margin: 2px;" onclick="deleteUser_web(' + "'" + data[0] + "'" + ')" class="btn btn-warning btn-sm"> Delete</button>'
                        + '</div>'
                );
            },
            "columnDefs": [
                {"visible": false, "targets": 0}
            ]
            , "dom": 'Bfrtip',
            "buttons": {
                "dom": {
                    "button": {
                        "tag": "button",
                        "className": "btn btn-warning btn-sm exbut"
                    }
                },
                "buttons": [

                    $.extend(true, {}, buttonCommon, {
                        extend: 'copyHtml5'
                    }),
                    $.extend(true, {}, buttonCommon, {
                        extend: 'excelHtml5'
                    }),
                    $.extend(true, {}, buttonCommon, {
                        extend: 'csvHtml5'
                    }),
                    $.extend(true, {}, buttonCommon, {
                        extend: 'pdfHtml5',
                        orientation: 'landscape',
                        pageSize: 'LEGAL'
                    }),

                ]
            }
        });
        table1 = $('#datatables_1').DataTable({
            "processing": true,
            "serverSide": true,
            "ajax": "/app/web/user-list/2",
            "responsive": true,
            "createdRow": function (row, data, index) {
                $('td', row).eq(5).html(data[5]);

//                $('td', row).eq(7).after('<button onclick="launchModel('+"'"+data[0]+"'"+')" class="btn btn-info btn-sm">' +
//                        '<i class="material-icons">create</i>Edit</button>');

                $('td', row).eq(7).after(
                        '<div class="btn-group">' +
                        '<button style="margin: 2px;" onclick="launchModel(' + "'" + data[0] + "'" + ')" class="btn btn-warning btn-sm"> Edit</button>' +
                        '<button  style="margin: 2px;" onclick="deleteUser_mob(' + "'" + data[0] + "'" + ')" class="btn btn-warning btn-sm"> Delete</button>'
                        + '</div>'
                );
            },
            "columnDefs": [
                {"visible": false, "targets": 0}
            ],
            "dom": 'Bfrtip',
            "buttons": {
                "dom": {
                    "button": {
                        "tag": "button",
                        "className": "btn btn-warning btn-sm exbut"
                    }
                },
                "buttons": [

                    $.extend(true, {}, buttonCommon, {
                        extend: 'copyHtml5'
                    }),
                    $.extend(true, {}, buttonCommon, {
                        extend: 'excelHtml5'
                    }),
                    $.extend(true, {}, buttonCommon, {
                        extend: 'csvHtml5'
                    }),
                    $.extend(true, {}, buttonCommon, {
                        extend: 'pdfHtml5',
                        orientation: 'landscape',
                        pageSize: 'LEGAL'
                    }),

                ]
            }
        });
//        setInterval(function () {
//            table.ajax.reload();
//            table1.ajax.reload();
//        }, 3000);
    });
    function deleteUser_web(id) {
        alert(id)
        swal({
            title: 'Are you sure?',
            text: "You won't be able to revert this!",
            type: 'warning',
            showCancelButton: true,
            confirmButtonClass: 'btn btn-success',
            cancelButtonClass: 'btn btn-danger',
            confirmButtonText: 'Yes, delete it!',
            buttonsStyling: false
        }).then(function () {

            $.ajax({
                url: '/app/web/user/delete-user/'+id+'/1/',
                dataType: 'json',
                type: 'GET',
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
    function deleteUser_mob(id) {
        alert(id)
        swal({
            title: 'Are you sure?',
            text: "You won't be able to revert this!",
            type: 'warning',
            showCancelButton: true,
            confirmButtonClass: 'btn btn-success',
            cancelButtonClass: 'btn btn-danger',
            confirmButtonText: 'Yes, delete it!',
            buttonsStyling: false
        }).then(function () {
            $.ajax({
                url: '/app/web/user/delete-user/'+id+'/2/',
                dataType: 'json',
                type: 'GET',
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
                    table1.ajax.reload();
                },
                error: function (jqXhr, textStatus, errorThrown) {
                    console.log(errorThrown);
                    alert(errorThrown)
                }
            });

        }).catch(swal.noop)
    }

    function launchModel(id) {
        $('#usereditModalLable').text("Edit user");
        $('#usereditModal').modal('show');

        $.ajax({
            url: '${context}/app/web/user/get-user/' + id,
            dataType: 'json',
            type: 'GET',
            contentType: 'application/json',
            success: function (data) {

                $('#user_nameup').val(data.user_name)
                $('#mobileup').val(data.mobile)
                $('#emailup').val(data.email)
                $('#nameup').val(data.name)
                $('#roleup').val(data.role)
//                $("#statusup").val(data.status);
                $('#statusup').val(data.status).prop('selected', true);
                alert($('#statusup option:selected').text());
                $('#statusup > .filter-option-inner-inner').val(1)

            },
            error: function (jqXhr, textStatus, errorThrown) {
                alert(jqXhr);
            }
        })

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
                if (id == "#web-user-validation-form") {
                    var json = {
                        email: $("#email").val(),
                        name: $("#name").val(),
                        user_name: $("#user_name").val(),
                        mobile: $("#mobile").val(),
                         password : $("#password").val(),
                     confirm_password : $("#cnf_pasword").val()
                    }
                    regUser(json, 1)
                } else if (id == "#mob-user-validation-form") {
                    var json = {
                        email: $("#email1").val(),
                        name: $("#name1").val(),
                        user_name: $("#user_name1").val(),
                        mobile: $("#mobile1").val(),
                        password : $("#password1").val(),
                        confirm_password : $("#cnf_pasword1").val()
                    }
                    regUser(json, 2)
                }

            }
        });
    }


    function regUser(jsn, user_type) {
        $.ajax({
            url: '${context}/app/web/user/register/' + user_type,
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
                    }).catch(swal.noop)
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
                    buttonsStyling: data.message,
                    confirmButtonClass: "btn btn-danger"
                }).catch(swal.noop)
            }
        })
        ;
    }


</script>
</body>
</html>
