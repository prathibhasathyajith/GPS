<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="context" value="${pageContext.request.contextPath}"/>

<div class="sidebar" data-color="rose" data-background-color="black" data-image="${context}/img/sidebar-1.jpg">

    <div class="logo">

        <a href=""  style="margin-left: 55px" class="simple-text logo-normal" >
          <img src="${context}/img/logo2.png" style="width: 150px;">
        </a></div>

    <div class="sidebar-wrapper">

        <div class="user">

        </div>
        <ul class="nav">

            <li class="nav-item ">
                <a class="nav-link" href="/dashboard">
                    <i class="material-icons">dashboard</i>
                    <p> Dashboard </p>
                </a>
            </li>


            <%--<li class="nav-item ">--%>
                <%--<a class="nav-link" data-toggle="collapse" href="#pagesExamples">--%>
                    <%--<i class="material-icons">image</i>--%>
                    <%--<p> Pages--%>
                        <%--<b class="caret"></b>--%>
                    <%--</p>--%>
                <%--</a>--%>

                <%--<div class="collapse" id="pagesExamples">--%>
                    <%--<ul class="nav">--%>
                        <%--<li class="nav-item ">--%>
                            <%--<a class="nav-link" href="../pages/pricing.html">--%>
                                <%--<span class="sidebar-mini"> P </span>--%>
                                <%--<span class="sidebar-normal"> Pricing </span>--%>
                            <%--</a>--%>
                        <%--</li>--%>
                        <%--<li class="nav-item ">--%>
                            <%--<a class="nav-link" href="../pages/rtl.html">--%>
                                <%--<span class="sidebar-mini"> RS </span>--%>
                                <%--<span class="sidebar-normal"> RTL Support </span>--%>
                            <%--</a>--%>
                        <%--</li>--%>
                        <%--<li class="nav-item ">--%>
                            <%--<a class="nav-link" href="../pages/timeline.html">--%>
                                <%--<span class="sidebar-mini"> T </span>--%>
                                <%--<span class="sidebar-normal"> Timeline </span>--%>
                            <%--</a>--%>
                        <%--</li>--%>
                        <%--<li class="nav-item ">--%>
                            <%--<a class="nav-link" href="../pages/login.html">--%>
                                <%--<span class="sidebar-mini"> LP </span>--%>
                                <%--<span class="sidebar-normal"> Login Page </span>--%>
                            <%--</a>--%>
                        <%--</li>--%>
                        <%--<li class="nav-item ">--%>
                            <%--<a class="nav-link" href="../pages/register.html">--%>
                                <%--<span class="sidebar-mini"> RP </span>--%>
                                <%--<span class="sidebar-normal"> Register Page </span>--%>
                            <%--</a>--%>
                        <%--</li>--%>
                        <%--<li class="nav-item ">--%>
                            <%--<a class="nav-link" href="../pages/lock.html">--%>
                                <%--<span class="sidebar-mini"> LSP </span>--%>
                                <%--<span class="sidebar-normal"> Lock Screen Page </span>--%>
                            <%--</a>--%>
                        <%--</li>--%>
                        <%--<li class="nav-item ">--%>
                            <%--<a class="nav-link" href="../pages/user.html">--%>
                                <%--<span class="sidebar-mini"> UP </span>--%>
                                <%--<span class="sidebar-normal"> User Profile </span>--%>
                            <%--</a>--%>
                        <%--</li>--%>
                    <%--</ul>--%>
                <%--</div>--%>
            <%--</li>--%>

            <%--<li class="nav-item ">--%>
                <%--<a class="nav-link" data-toggle="collapse" href="#componentsExamples">--%>
                    <%--<i class="material-icons">apps</i>--%>
                    <%--<p> Components--%>
                        <%--<b class="caret"></b>--%>
                    <%--</p>--%>
                <%--</a>--%>

                <%--<div class="collapse" id="componentsExamples">--%>
                    <%--<ul class="nav">--%>
                        <%--<li class="nav-item ">--%>
                            <%--<a class="nav-link" data-toggle="collapse" href="#componentsCollapse">--%>
                                <%--<span class="sidebar-mini"> MLT </span>--%>
                            <%--<span class="sidebar-normal"> Multi Level Collapse--%>
                              <%--<b class="caret"></b>--%>
                            <%--</span>--%>

                            <%--</a>--%>

                            <%--<div class="collapse" id="componentsCollapse">--%>
                                <%--<ul class="nav">--%>
                                    <%--<li class="nav-item ">--%>
                                        <%--<a class="nav-link" href="#0">--%>
                                            <%--<span class="sidebar-mini"> E </span>--%>
                                            <%--<span class="sidebar-normal"> Example </span>--%>
                                        <%--</a>--%>
                                    <%--</li>--%>
                                <%--</ul>--%>
                            <%--</div>--%>
                        <%--</li>--%>
                        <%--<li class="nav-item ">--%>
                            <%--<a class="nav-link" href="../components/buttons.html">--%>
                                <%--<span class="sidebar-mini"> B </span>--%>
                                <%--<span class="sidebar-normal"> Buttons </span>--%>
                            <%--</a>--%>
                        <%--</li>--%>
                        <%--<li class="nav-item ">--%>
                            <%--<a class="nav-link" href="../components/grid.html">--%>
                                <%--<span class="sidebar-mini"> GS </span>--%>
                                <%--<span class="sidebar-normal"> Grid System </span>--%>
                            <%--</a>--%>
                        <%--</li>--%>
                        <%--<li class="nav-item ">--%>
                            <%--<a class="nav-link" href="../components/panels.html">--%>
                                <%--<span class="sidebar-mini"> P </span>--%>
                                <%--<span class="sidebar-normal"> Panels </span>--%>
                            <%--</a>--%>
                        <%--</li>--%>
                        <%--<li class="nav-item ">--%>
                            <%--<a class="nav-link" href="../components/sweet-alert.html">--%>
                                <%--<span class="sidebar-mini"> SA </span>--%>
                                <%--<span class="sidebar-normal"> Sweet Alert </span>--%>
                            <%--</a>--%>
                        <%--</li>--%>
                        <%--<li class="nav-item ">--%>
                            <%--<a class="nav-link" href="../components/notifications.html">--%>
                                <%--<span class="sidebar-mini"> N </span>--%>
                                <%--<span class="sidebar-normal"> Notifications </span>--%>
                            <%--</a>--%>
                        <%--</li>--%>
                        <%--<li class="nav-item ">--%>
                            <%--<a class="nav-link" href="../components/icons.html">--%>
                                <%--<span class="sidebar-mini"> I </span>--%>
                                <%--<span class="sidebar-normal"> Icons </span>--%>
                            <%--</a>--%>
                        <%--</li>--%>
                        <%--<li class="nav-item ">--%>
                            <%--<a class="nav-link" href="../components/typography.html">--%>
                                <%--<span class="sidebar-mini"> T </span>--%>
                                <%--<span class="sidebar-normal"> Typography </span>--%>
                            <%--</a>--%>
                        <%--</li>--%>
                    <%--</ul>--%>
                <%--</div>--%>
            <%--</li>--%>

            <%--<li class="nav-item ">--%>
                <%--<a class="nav-link" data-toggle="collapse" href="#formsExamples">--%>
                    <%--<i class="material-icons">content_paste</i>--%>
                    <%--<p> Forms--%>
                        <%--<b class="caret"></b>--%>
                    <%--</p>--%>
                <%--</a>--%>

                <%--<div class="collapse" id="formsExamples">--%>
                    <%--<ul class="nav">--%>
                        <%--<li class="nav-item ">--%>
                            <%--<a class="nav-link" href="../forms/regular.html">--%>
                                <%--<span class="sidebar-mini"> RF </span>--%>
                                <%--<span class="sidebar-normal"> Regular Forms </span>--%>
                            <%--</a>--%>
                        <%--</li>--%>
                        <%--<li class="nav-item ">--%>
                            <%--<a class="nav-link" href="../forms/extended.html">--%>
                                <%--<span class="sidebar-mini"> EF </span>--%>
                                <%--<span class="sidebar-normal"> Extended Forms </span>--%>
                            <%--</a>--%>
                        <%--</li>--%>
                        <%--<li class="nav-item ">--%>
                            <%--<a class="nav-link" href="../forms/validation.html">--%>
                                <%--<span class="sidebar-mini"> VF </span>--%>
                                <%--<span class="sidebar-normal"> Validation Forms </span>--%>
                            <%--</a>--%>
                        <%--</li>--%>
                        <%--<li class="nav-item ">--%>
                            <%--<a class="nav-link" href="../forms/wizard.html">--%>
                                <%--<span class="sidebar-mini"> W </span>--%>
                                <%--<span class="sidebar-normal"> Wizard </span>--%>
                            <%--</a>--%>
                        <%--</li>--%>
                    <%--</ul>--%>
                <%--</div>--%>
            <%--</li>--%>

            <%--<li class="nav-item active ">--%>
                <%--<a class="nav-link" data-toggle="collapse" href="#tablesExamples" aria-expanded="true">--%>
                    <%--<i class="material-icons">grid_on</i>--%>
                    <%--<p> Tables--%>
                        <%--<b class="caret"></b>--%>
                    <%--</p>--%>
                <%--</a>--%>

                <%--<div class="collapse show" id="tablesExamples">--%>
                    <%--<ul class="nav">--%>
                        <%--<li class="nav-item ">--%>
                            <%--<a class="nav-link" href="regular.html">--%>
                                <%--<span class="sidebar-mini"> RT </span>--%>
                                <%--<span class="sidebar-normal"> Regular Tables </span>--%>
                            <%--</a>--%>
                        <%--</li>--%>
                        <%--<li class="nav-item ">--%>
                            <%--<a class="nav-link" href="extended.html">--%>
                                <%--<span class="sidebar-mini"> ET </span>--%>
                                <%--<span class="sidebar-normal"> Extended Tables </span>--%>
                            <%--</a>--%>
                        <%--</li>--%>
                        <%--<li class="nav-item active ">--%>
                            <%--<a class="nav-link" href="datatables.net.html">--%>
                                <%--<span class="sidebar-mini"> DT </span>--%>
                                <%--<span class="sidebar-normal"> DataTables.net </span>--%>
                            <%--</a>--%>
                        <%--</li>--%>
                    <%--</ul>--%>
                <%--</div>--%>
            <%--</li>--%>

            <%--<li class="nav-item ">--%>
                <%--<a class="nav-link" data-toggle="collapse" href="#mapsExamples">--%>
                    <%--<i class="material-icons">place</i>--%>
                    <%--<p> Maps--%>
                        <%--<b class="caret"></b>--%>
                    <%--</p>--%>
                <%--</a>--%>

                <%--<div class="collapse" id="mapsExamples">--%>
                    <%--<ul class="nav">--%>
                        <%--<li class="nav-item ">--%>
                            <%--<a class="nav-link" href="../maps/google.html">--%>
                                <%--<span class="sidebar-mini"> GM </span>--%>
                                <%--<span class="sidebar-normal"> Google Maps </span>--%>
                            <%--</a>--%>
                        <%--</li>--%>
                        <%--<li class="nav-item ">--%>
                            <%--<a class="nav-link" href="../maps/fullscreen.html">--%>
                                <%--<span class="sidebar-mini"> FSM </span>--%>
                                <%--<span class="sidebar-normal"> Full Screen Map </span>--%>
                            <%--</a>--%>
                        <%--</li>--%>
                        <%--<li class="nav-item ">--%>
                            <%--<a class="nav-link" href="../maps/vector.html">--%>
                                <%--<span class="sidebar-mini"> VM </span>--%>
                                <%--<span class="sidebar-normal"> Vector Map </span>--%>
                            <%--</a>--%>
                        <%--</li>--%>
                    <%--</ul>--%>
                <%--</div>--%>
            <%--</li>--%>




            <li class="nav-item ">
                <a class="nav-link" href="/user-management">
                    <i class="material-icons">person</i>
                    <p> Users </p>
                </a>
            </li>

            <li class="nav-item ">
                <a class="nav-link" href="/building-management">
                    <i class="material-icons">person</i>
                    <p> Building </p>
                </a>
            </li>

            <li class="nav-item ">
                <a class="nav-link" href="/device-management">
                    <i class="material-icons">apps</i>
                    <p> Devices </p>
                </a>
            </li>
            <li class="nav-item ">
                <a class="nav-link" data-toggle="collapse" href="#tablesExamples1" aria-expanded="true">
                    <i class="material-icons">apps</i>
                    <p> Reports
                        <b class="caret"></b>
                    </p>

                </a>


                <div class="collapse hide" id="tablesExamples1">
                    <ul class="nav">
                        <%--<li class="nav-item ">--%>
                            <%--<a class="nav-link" href="/user-report">--%>
                                <%--<span class="sidebar-mini"> UR </span>--%>
                                <%--<span class="sidebar-normal"> User Report </span>--%>
                            <%--</a>--%>
                        <%--</li>--%>
                        <li class="nav-item ">
                            <a class="nav-link" href="/employee-report">
                                <span class="sidebar-mini"> ER </span>
                                <span class="sidebar-normal"> Employee report </span>
                            </a>
                        </li>

                    </ul>
                </div>



            </li>
            <li class="nav-item ">
                <a class="nav-link" href="/user-activity">
                    <i class="material-icons">timeline</i>
                    <p> History</p>
                </a>
            </li>

            <%--<li class="nav-item ">--%>
                <%--<a class="nav-link" href="../calendar.html">--%>
                    <%--<i class="material-icons">date_range</i>--%>
                    <%--<p> Calendar </p>--%>
                <%--</a>--%>
            <%--</li>--%>

        </ul>


    </div>
</div>