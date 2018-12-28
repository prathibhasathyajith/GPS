<!DOCTYPE html>
<html lang="en">

<meta http-equiv="content-type" content="text/html;charset=utf-8"/><!-- /Added by HTTrack -->
<head>
    <title>
        Home | Dashboard
    </title>
    <style>
        #datatables_filter input[type="search"] {
            font-size: 25px;
            font-weight: bold;
        }

        .btn-group > .btn-group > .btn,
        .btn-group > .btn:not(.dropdown-toggle) {
            margin: 5px;
        }
    </style>
    <style>
        /* Always set the map height explicitly to define the size of the div
       * element that contains the map. */

        #map {
            height: 100%;
        }

        /* Optional: Makes the sample page fill the window. */

        html,
        body {
            height: 100%;
            margin: 0;
            padding: 0;
        }

        #floating-panel {
            position: absolute;
            top: 10px;
            left: 25%;
            z-index: 5;
            background-color: #fff;
            padding: 5px;
            border: 1px solid #999;
            text-align: center;
            font-family: 'Roboto', 'sans-serif';
            line-height: 30px;
            padding-left: 10px;
        }

        #floating-panel {
            position: absolute;
            top: 5px;
            left: 50%;
            margin-left: -180px;
            width: 350px;
            z-index: 5;
            background-color: #fff;
            padding: 5px;
            border: 1px solid #999;
        }

        #latlng {
            width: 225px;
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
                                    <h4 class="card-title">Recent Employee(Device) Activities</h4>
                                </div>
                                <div class="card-body">

                                    <div class="toolbar">
                                        <div class="row">

                                            <div class="col-md-3 ">
                                                <div class="card " style="margin: 0px">

                                                    <div class="card-body ">
                                                        From
                                                        <div class="form-group bmd-form-group is-filled">
                                                            <input id="from_date" type="text"
                                                                   class="form-control datetimepicker"
                                                                   value="2018/12/10">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="col-md-3">
                                                <div class="card " style="margin: 0px">

                                                    <div class="card-body ">
                                                        To
                                                        <div class="form-group bmd-form-group is-filled">
                                                            <input id="to_date" type="text"
                                                                   class="form-control datetimepicker"
                                                                   value="2018/12/10">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="col-md-4">
                                                <%--<div style="margin-top: 55px;" class="dropdown bootstrap-select">--%>
                                                <%--<select--%>
                                                <%--id="device_picker"--%>
                                                <%--class="selectpicker"--%>
                                                <%--data-size="7"--%>
                                                <%--data-style="btn btn-primary btn-round"--%>
                                                <%--title="Single Select"--%>
                                                <%--tabindex="-98">--%>
                                                <%--&lt;%&ndash;<option class="bs-title-option" value="0"></option>&ndash;%&gt;--%>
                                                <%--<option value="0" selected=""> - Select Device - </option>--%>
                                                <%--&lt;%&ndash;<option value="60f6d24d4755fb40">Seneviratne</option>&ndash;%&gt;--%>
                                                <%--&lt;%&ndash;<option value="65286fe23dab7974">Name</option>&ndash;%&gt;--%>
                                                <%--&lt;%&ndash;<option value="60f6d24d4755fb40">Shehan</option>&ndash;%&gt;--%>
                                                <%--</select>--%>
                                                <%--</div>--%>

                                                <div class="form-group">
                                                    <label for="device_picker">Device select</label>
                                                    <select id="device_picker" class="form-control">
                                                        <option value="0" selected=""> - Select Device -</option>
                                                    </select>
                                                </div>

                                            </div>
                                            <div class="col-md-2">
                                                <button style="margin-top: 55px;" style="margin-top: 20px;"
                                                        type="submit" id="btn-search"
                                                        class="btn btn-info">Search
                                                    <div class="ripple-container"></div>
                                                </button>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-md-3">
                                                <div class="card " style="margin:10px 0px">
                                                    <b style="font-weight: bold;padding: 5px 0px 0px 19px;">Attempt
                                                        Count</b>
                                                    <div class="card-body">
                                                        In Count :
                                                        <label id="attempt_Count_in"
                                                               style="background: black;padding: 4px;border-radius: 5px;color: white;">0</label>
                                                        Out Count :
                                                        <label id="attempt_Count_out"
                                                               style="background: black;padding: 4px;border-radius: 5px;color: white;">0</label>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="material-datatables">
                                            <table id="div_loc_his_datatable"
                                                   class="table table-striped table-no-bordered table-hover"
                                                   cellspacing="0" width="100%" style="width:100%">
                                                <thead>
                                                <tr>
                                                    <th style="font-weight: bold;font-size: 14px;">Device Id</th>
                                                    <th style="font-weight: bold;font-size: 14px;">Latitude</th>
                                                    <th style="font-weight: bold;font-size: 14px;">Longitude</th>
                                                    <th style="font-weight: bold;font-size: 14px;">Address</th>
                                                    <th style="font-weight: bold;font-size: 14px;">In time</th>
                                                    <%--<th style="font-weight: bold;font-size: 14px;">Out time</th>--%>
                                                    <th style="font-weight: bold;font-size: 14px;">Office Location</th>
                                                    <th style="font-weight: bold;font-size: 14px;">Status</th>
                                                    <%--<th style="font-weight: bold;font-size: 14px;">Risk</th>--%>
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

                                <div class="card-header card-header-danger card-header-icon" style="margin: 20px 0 0 20px;">
                                    <div class="card-icon">
                                        <i class="material-icons">place</i>
                                    </div>
                                    <h4 class="card-title">Employee(Device) Route</h4>
                                    <span style="color:black">Number of Points : </span><label id="pointCount">0</label>
                                    <span style="color:black">Data Duration : </span><label id="rangeMin">0 </label><span style="color:black">min</span>
                                </div>
                                <div class="card-body">
                                    <div class="tab-pane active show" id="about">
                                        <div id="map" style="margin-top: 0px;height: 360px;"></div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>

            </div>


        </div>


    </div>


    <jsp:include page="inc/script_inc.jsp"></jsp:include>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDvkk7wNQcIYXZ7S8XNG8cG-elq0QE2v3k&callback=initMap"
            async
            defer></script>
    <script>
        var table_his;
        $(document).ready(function () {
            $('.datetimepicker').datetimepicker({
                format: 'YYYY-MM-DD HH:mm:ss',
                showTodayButton: true,
                showClose: true,
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

            $('.datetimepicker').on("dp.change", function (e) {
                $(this).data("DateTimePicker").hide();
            });

            $.ajax({
                url: 'app/web/device/list/dropdown',
                dataType: 'json',
                type: 'get',
                contentType: 'application/json',
                processData: false,
                success: function (data) {
                    data.forEach(function (details) {
                        $('#device_picker').append('<option value="' + details.devic_id + '">' + details.device_name + '</option>');
                    });
                },
                error: function (jqXhr, textStatus, errorThrown) {
                    console.log(errorThrown);
                }
            });
        });

        function getAttemptCount() {
            var d_id = $('#device_picker option:selected').val();
            var from_date = $("#from_date").val();
            var to_date = $("#to_date").val();
            $.ajax({
                url: 'app/web/device/count/attempt?from_date=' + from_date + '&to_date=' + to_date + '&device_id=' + d_id,
                dataType: 'json',
                type: 'get',
                contentType: 'application/json',
                processData: false,
                success: function (data) {
                    // alert(data.inCount +" - - "+ data.outCount);
                    $('#attempt_Count_in').empty();
                    $('#attempt_Count_out').empty();
                    $('#attempt_Count_in').text(data.inCount);
                    $('#attempt_Count_out').text(data.outCount);
                    console.log(data.mapData);
                    $('#pointCount').text(data.pointCount);
                    $('#rangeMin').text(data.rangeMin);
                    geocodeLatLng(geocoder, infowindow, directionsService, directionsDisplay, data.mapData);
                    // mapData = [];
                },
                error: function (jqXhr, textStatus, errorThrown) {
                    console.log(errorThrown);
                }
            });
        }

        var geocoder;
        var infowindow;
        var directionsService;
        var directionsDisplay;


        var data_address = [];
        var table = $('#div_loc_his_datatable').DataTable({
            "processing": true,
            "serverSide": true,
            "ajax": {
                url: '/app/web/device/loc-history?from_date=&to_date=&device_id=',
                data: function (data) {
                    console.log(JSON.stringify(data));
                }
            },
            // "createdRow": function (row, data, index) {
            //     data_address.push(data[3]);
            //     console.log(data[3]);
            // },
            // "fnDrawCallback": function (oSettings) {
            //     console.log(data_address);
            //     geocodeLatLng(geocoder, infowindow, directionsService, directionsDisplay, data_address);
            //     data_address = [];
            // },
            "responsive": true
        });


        $("#btn-search").click(function () {
            var d_id = $('#device_picker option:selected').val();
            var from_date = $("#from_date").val();
            var to_date = $("#to_date").val();

            getAttemptCount();
            if (d_id != 0) {
                table.ajax.url('/app/web/device/loc-history?from_date=' + from_date + '&to_date=' + to_date + '&device_id=' + d_id).load();
            }
        });

        function initMap() {
            geocoder = new google.maps.Geocoder;
            infowindow = new google.maps.InfoWindow;
            directionsService = new google.maps.DirectionsService;
            directionsDisplay = new google.maps.DirectionsRenderer;

            var map = new google.maps.Map(document.getElementById('map'), {
                zoom: 10,
                center: {
                    lat: 6.93,
                    lng: 79.87
                },
                mapTypeId: google.maps.MapTypeId.ROADMAP,
                gestureHandling: 'cooperative'

            });
            directionsDisplay.setMap(map);

        }

        function geocodeLatLng(geocoder, infowindow, directionsService, directionsDisplay, address) {


            console.log(address);

            if(address.length > 0) {

                setTimeout(function () {
                    locations = [];
                    var waypts = [];

                    for (var j = 1; j < address.length - 1; j++) {
                        waypts.push({
                            location: address[j],
                            stopover: true
                        });
                    }

                    directionsService.route({
                        origin: address[0],
                        destination: address[address.length - 1],
                        waypoints: waypts,
                        optimizeWaypoints: true,
                        travelMode: 'DRIVING'
                    }, function (response, status) {
                        if (status === 'OK') {
                            directionsDisplay.setDirections(response);
                        } else {
                            window.alert('Directions request failed due to ' + status);
                        }
                    });

                }, 100);
            }

        }


    </script>
    <%--<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC_-82wrcomCxKX3jhB_08mOWbu3XtutUE&callback=initMap"></script>--%>

</body>

</html>
