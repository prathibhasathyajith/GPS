package com.gayan.app.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class ViewController {

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String index() {
        return "login";
    }

    @RequestMapping(value = "/user-management", method = RequestMethod.GET)
    public String user_managemnt() {
        return "user_management";
    }

    @RequestMapping(value = "/device-management", method = RequestMethod.GET)
    public String device_managemnt() {
        return "device_management";
    }

    @RequestMapping(value = "/building-management", method = RequestMethod.GET)
    public String building_managemnt() {
        return "building";
    }

    @RequestMapping(value = "/dashboard", method = RequestMethod.GET)
    public String dashboard() {
        return "dashboard";
    }

    @RequestMapping(value = "/employee-report", method = RequestMethod.GET)
    public String employeeReport() {
        return "employee-report";
    }


    @RequestMapping(value = "/user-report", method = RequestMethod.GET)
    public String UserReport() {
        return "user-report";
    }

    @RequestMapping(value = "/user-activity", method = RequestMethod.GET)
    public String UserActiity() {
        return "activities";
    }


}
