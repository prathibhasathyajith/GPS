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
                    <form id="building-validation-form"
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
                                            <label for="buildingName" class="bmd-label-floating"> Building Name
                                                *</label>
                                            <input type="text" class="form-control" id="buildingName"
                                                   name="buildingName"
                                                   required="true" aria-required="true">
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group bmd-form-group">
                                            <label for="location" class="bmd-label-floating"> Location *</label>
                                            <input type="text" class="form-control" name="location"
                                                   id="location" required="true" aria-required="true">
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group bmd-form-group">
                                            <label for="latitude" class="bmd-label-floating">Latitude *</label>
                                            <input type="text" class="form-control" id="latitude" name="latitude"
                                                   required="true" aria-required="true">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="form-group bmd-form-group">
                                            <label for="longitude" class="bmd-label-floating">Longitude *</label>
                                            <input type="text" class="form-control" id="longitude" name="longitude"
                                                   required="true" aria-required="true">
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group bmd-form-group">
                                            <label for="radius" class="bmd-label-floating"> Radius *</label>
                                            <input type="text" class="form-control" name="radius"
                                                   id="radius" required="true" aria-required="true">
                                        </div>
                                    </div>
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
                                </div>
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <%--<label for="status_select">Select Status</label>--%>
                                            <select id="status_select" class="form-control" name="status">
                                                <option value="" selected="">Select Status</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <button type="button" class="btn btn-info" onclick="openMap()">
                                                <i class="material-icons">place</i> Map
                                            </button>
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
                                            <th style="font-weight: bold;font-size: 14px;">Building Id</th>
                                            <th style="font-weight: bold;font-size: 14px;">Building Name</th>
                                            <th style="font-weight: bold;font-size: 14px;">Location</th>
                                            <th style="font-weight: bold;font-size: 14px;">Latitude</th>
                                            <th style="font-weight: bold;font-size: 14px;">Longitude</th>
                                            <th style="font-weight: bold;font-size: 14px;">Radius</th>
                                            <th style="font-weight: bold;font-size: 14px;">User</th>
                                            <th style="font-weight: bold;font-size: 14px;">Status</th>
                                            <th style="font-weight: bold;font-size: 14px;">Last Updated Time</th>
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

    <div class="modal fade" id="mapModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
         aria-hidden="true">
        <div class="modal-dialog modal-notice">
            <div class="modal-content" style="width: 800px;">
                <div class="modal-header">
                    <h4 class="modal-title" id="myModalLabel">Geo-Fence</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                        <i class="material-icons">close</i>
                    </button>
                </div>
                <div class="modal-body">
                    <div id="mapGeofence" style=" width: 100%;height: 400px;"></div>
                    <div class="modal-footer justify-content-center" style="padding: 4px;">
                        <button type="button" class="btn btn-info btn-round" data-dismiss="modal">Done!</button>
                    </div>
                </div>

            </div>

        </div>
    </div>
</div>

</div>

<jsp:include page="inc/script_inc.jsp"></jsp:include>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDvkk7wNQcIYXZ7S8XNG8cG-elq0QE2v3k&libraries=drawing&callback=initMap"
        async
        defer></script>

<script>

    var device_id1 = false;
    var name1 = false;
    var location1 = false;
    var auth_admin1 = false;
    var table;

    var buttonCommon = {
        exportOptions: {
            columns: [0, 1, 2, 3, 4, 5, 6, 7]
        }
    };


    $(document).ready(function () {

        setFormValidation('#building-validation-form');

        table = $('#datatables').DataTable({
            "processing": true,
            "serverSide": true,
            "ajax": "/app/web/building-list", "ajax": {
                url: '/app/web/building-list',
                data: function (data) {
                    data.device_id = device_id1;
                    data.name = name1;
                    data.location = location1;
                    data.auth_admin = auth_admin1;
                }
            },
            "responsive": true,
            "createdRow": function (row, data, index) {
                $('td', row).eq(9).before(
                    '<div class="btn-group">' +
                    '<button  style="margin: 2px;" onclick="deleteBuilding(' + "'" + data[0] + "'" + ')" class="btn btn-warning btn-sm"> Delete</button>'
                    + '</div>'
                );
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

                    $.extend(true, {}, buttonCommon, {
                        extend: 'copyHtml5',
                        title: 'Employee (Devices) Report'
                    }),
                    $.extend(true, {}, buttonCommon, {
                        extend: 'excelHtml5',
                        title: 'Employee (Devices) Report'
                    }),
                    $.extend(true, {}, buttonCommon, {
                        extend: 'csvHtml5',
                        title: 'Employee (Devices) Report'
                    }),
                    $.extend(true, {}, buttonCommon, {
                        extend: 'pdfHtml5',
//                        orientation: 'landscape',
                        pageSize: 'LEGAL'
                    }),

                ]
            }
        });
        setInterval(function () {
            table.ajax.reload();
        }, 100000);

        $.ajax({
            url: 'app/web/status/list/dropdown',
            dataType: 'json',
            type: 'get',
            contentType: 'application/json',
            processData: false,
            success: function (data) {
                data.forEach(function (details) {
                    $('#status_select').append('<option value="' + details.status_id + '">' + details.status_name + '</option>');
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
                    $('#user_select').append('<option value="' + details.user_id + '">' + details.user_name + '</option>');
                });

            },
            error: function (jqXhr, textStatus, errorThrown) {
                console.log(errorThrown);
            }
        });

    });

    function deleteBuilding(building_id) {


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
                url: '/app/web/delete/building/' + building_id,
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
                    buildingName: $("#buildingName").val(),
                    location: $("#location").val(),
                    latitude: $("#latitude").val(),
                    longitude: $("#longitude").val(),
                    radius: $("#radius").val(),
                    user: $("#user_select").val(),
                    status: $("#status_select").val()
                }
                addBuilding(json);
            }
        });
    }


    function addBuilding(jsn) {
        $.ajax({
            url: '/app/web/add/building/add-new',
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

                    $("#buildingName").val("");
                    $("#location").val("");
                    $("#latitude").val("");
                    $("#longitude").val("");
                    $("#radius").val("");
                    $("#user_select").val("");
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
                    text: "Please fill all fields.!",
                    buttonsStyling: false,
                    confirmButtonClass: "btn btn-danger"
                }).catch(swal.noop)
            }
        });
    }

    function openMap() {
        $('#mapModal').modal('show');
    }

    var circle;

    function initMap() {

        var mapOptions = {
            center: {
                lat: 6.93,
                lng: 79.87
            },
            zoom: 11
        };


        var map = new google.maps.Map(document.getElementById('mapGeofence'),
            mapOptions);

        var drawingManager = new google.maps.drawing.DrawingManager({
            drawingMode: google.maps.drawing.OverlayType.CIRCLE,
            drawingControl: true,
            drawingControlOptions: {
                position: google.maps.ControlPosition.TOP_CENTER,
                drawingModes: [
                    google.maps.drawing.OverlayType.CIRCLE
                ]
            },
            circleOptions: {
                fillColor: '#ffff00',
                fillOpacity: 0.3,
                strokeWeight: 1,
                clickable: false,
                editable: true,
                zIndex: 1
            }
        });
        drawingManager.setMap(map);
        google.maps.event.addListener(drawingManager, 'circlecomplete', onCircleComplete);
    }

    function onCircleComplete(shape) {
        var geocoder = new google.maps.Geocoder;
        if (shape == null || (!(shape instanceof google.maps.Circle))) return;

        if (circle != null) {
            circle.setMap(null);
            circle = null;
        }

        circle = shape;
        document.getElementById('radius').value = circle.getRadius();
        document.getElementById('latitude').value = circle.getCenter().lat();
        document.getElementById('longitude').value = circle.getCenter().lng();
        console.log('radius', circle.getRadius());
        console.log('lat', circle.getCenter().lat());
        console.log('lng', circle.getCenter().lng());

        var latlng = {
            lat: circle.getCenter().lat(),
            lng: circle.getCenter().lng()
        };

        geocoder.geocode({
            'location': latlng
        }, function (results, status) {
            if (status === 'OK') {
                if (results[0]) {
                    document.getElementById('location').value = results[0].formatted_address;
                } else {
                    window.alert('No results found');
                }
            } else {
                window.alert('Geocoder failed due to: ' + status);
            }
        });

        $('#location').parent().addClass("is-focused");
        $('#radius').parent().addClass("is-focused");
        $('#latitude').parent().addClass("is-focused");
        $('#longitude').parent().addClass("is-focused");

        swal({
            title: "Good job!",
            text: "Successfully selected Geofence",
            buttonsStyling: false,
            confirmButtonClass: "btn btn-success",
            type: "success"
        }).catch(swal.noop);

    }

</script>
</body>
</html>