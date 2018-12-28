<!DOCTYPE html>
<html lang="en">

<meta http-equiv="content-type" content="text/html;charset=utf-8"/><!-- /Added by HTTrack -->
<head>


    <title>
        Home | Dashboard
    </title>
    <style>
        .moving-tab {
            text-transform: none;
        }

        .ps-scrollbar-x-rail {
            bottom: 0px;
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


        <div class="content" style="margin-top: 15px;">


            <div class="content">
                <div class="container-fluid">

                    <div class="wizard-container">
                        <div class="card card-wizard active" data-color="rose" id="wizardProfile" style="height: 550px">
                            <form action="#" method="" novalidate="novalidate">
                                <!--        You can switch " data-color="primary" "  with one of the next bright colors: "green", "orange", "red", "blue"       -->
                                <%--<div class="card-header text-center">--%>
                                <%--<h3 class="card-title">--%>
                                <%--Something Important to you--%>
                                <%--</h3>--%>
                                <%--<h5 class="card-description">This information will let us know more about you.</h5>--%>
                                <%--</div>--%>
                                <div class="wizard-navigation">
                                    <ul class="nav nav-pills">
                                        <li class="nav-item" style="width: 50%;">
                                            <a class="nav-link active show" href="#about" data-toggle="tab" role="tab"
                                               aria-selected="true">
                                                Our Companies (Map view)
                                            </a>
                                        </li>
                                        <li class="nav-item" style="width: 50%;">
                                            <a class="nav-link" href="#account" data-toggle="tab" role="tab"
                                               aria-selected="false">
                                                Employee's last Seen Location (Map view)
                                            </a>
                                        </li>

                                    </ul>
                                    <div class="moving-tab"
                                         style="width: 508px; transform: translate3d(-8px, 0px, 0px); transition: transform 0s ease 0s;">
                                        About
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div class="tab-content">
                                        <div class="tab-pane active show" id="about">
                                            <div id="map" style="margin-top: 0px;height: 360px;"></div>
                                        </div>
                                        <div class="tab-pane" id="account">
                                            <div id="map1" style="margin-top: 0px;height: 360px;"></div>

                                        </div>

                                    </div>
                                </div>

                            </form>
                        </div>
                    </div>

                </div>
            </div>

        </div>


    </div>

</div>


<jsp:include page="inc/script_inc.jsp"></jsp:include>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDvkk7wNQcIYXZ7S8XNG8cG-elq0QE2v3k&callback=initMap" async
        defer></script>


<script>
    var map;
    var map1;
    var mr_ar =[];
    var mr_ar2 =[];
    var user = {"lat": 6.9360582, "lng": 79.9845375}; //use this as user location
    function initMap() {

        map = new google.maps.Map(document.getElementById('map'), {
            center: user,
            zoom: 11,
            mapTypeId: google.maps.MapTypeId.HYBRID,
            panControl: false,
            zoomControl: true,
            mapTypeControl: false,
            scaleControl: false,
            streetViewControl: false,
            overviewMapControl: false,
            rotateControl: false
        });


        map1 = new google.maps.Map(document.getElementById('map1'), {
            center: user,
            zoom: 11,
            mapTypeId: google.maps.MapTypeId.HYBRID,
            panControl: false,
            zoomControl: true,
            mapTypeControl: false,
            scaleControl: false,
            streetViewControl: false,
            overviewMapControl: false,
            rotateControl: false
        });


        getdata1(map1);

        getdata(map);

    }


    function arePointsNear(checkPoint, centerPoint, m) { // credits to user:69083
        var km = m / 1000;
        var ky = 40000 / 360;
        var kx = Math.cos(Math.PI * centerPoint.lat / 180.0) * ky;
        var dx = Math.abs(centerPoint.lng - checkPoint.lng) * kx;
        var dy = Math.abs(centerPoint.lat - checkPoint.lat) * ky;
        return Math.sqrt(dx * dx + dy * dy) <= km;
    }
    function getdata(map) {
        $.ajax({
            url: '/app/web/build/list/all/',
            dataType: 'json',
            type: 'get',
            contentType: 'application/json',
            processData: false,
            success: function (data) {
                var list = data.marker_list;
//                var infowindow;

                var prev_infowindow;
                for (var i=0; i<mr_ar.length; i++) {
                    mr_ar[i].setMap(null);
                }

                list.forEach(function (details) {
                    var infowindow = new google.maps.InfoWindow({
                        content: '<div>' +
                        '<h4 style="color: red">Name - ' + details.name + '</h4>' +
                        '<h5 style="color: red">No Of employee - ' + details.employee_count + '</h5>' +
                        '<h5 style="color: red">The limit of ownership - ' + details.radius + 'm</h5>' +
                        '</div>'
                    });

                    var areaCircle = new google.maps.Circle({
                        strokeColor: '#FF0000',
                        strokeOpacity: 0.8,
                        strokeWeight: 2,
                        fillColor: '#FF0000',
                        fillOpacity: 0.35,
                        map: map,
                        center: details.data,
                        radius: details.radius,
                        clickable: true
                    });


                    google.maps.event.addListener(areaCircle, 'click', function (ev) {
                        infowindow.setPosition(ev.latLng);
                        infowindow.open(map);
                    });


                    var marker = new google.maps.Marker({
                        position: details.data,
                        map: map
                    });
                    marker.addListener('click', function () {
                        if (prev_infowindow != null) {
                            prev_infowindow.close();
                        }
                        infowindow.open(map, marker);
                        prev_infowindow = infowindow;
                    });
                    mr_ar.push(marker);
                });


            },
            error: function (jqXhr, textStatus, errorThrown) {
                console.log(errorThrown);
            }
        });
        setTimeout(function () {
            if (map != null) {
                getdata(map)
            }
        }, 10000);
    }


    function getdata1(map1) {
        $.ajax({
            url: 'app/web/device/cur_loc',
            dataType: 'json',
            type: 'get',
            contentType: 'application/json',
            processData: false,
            success: function (data) {
                var prev_infowindow1;

                for (var i=0; i<mr_ar2.length; i++) {
                    mr_ar2[i].setMap(null);
                }

                // Create markers.
                data.forEach(function (details) {
                    var infowindow1 = new google.maps.InfoWindow({
                        content: '<div>' +
                        '<h4 style="color: red">Device  - ' + details.device_name + '</h4>' +
                        '<h4 style="color: red">Device Id  - ' + details.device_id + '</h4>' +
                        '<h5 style="color: red">last active time - ' + details.last_updated_date_time + '</h5>' +
                        '</div>'
                    });

                    var marker1 = new google.maps.Marker({
                        position: {"lat": details.last_lat, "lng": details.last_lon},
                        map: map1
                    });
                    marker1.addListener('click', function () {
                        if (prev_infowindow1 != null) {
                            prev_infowindow1.close();
                        }
                        infowindow1.open(map1, marker1);
                        prev_infowindow1 = infowindow1;
                    });
                    mr_ar2.push(marker1);
                });


            },
            error: function (jqXhr, textStatus, errorThrown) {
                console.log(errorThrown);
            }
        });
        setTimeout(function () {
            if (map != null) {
                getdata1(map1)
            }
        }, 10000);
    }
</script>

<script>
    $(document).ready(function () {

        demo.initMaterialWizard();
        setTimeout(function () {
            $('.card.card-wizard').addClass('active');
        }, 600);
    });
</script>

</body>

</html>
