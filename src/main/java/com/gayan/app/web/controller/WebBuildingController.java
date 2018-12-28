package com.gayan.app.web.controller;

import com.gayan.app.web.dto.BuildingDataBean;
import com.gayan.app.web.dto.StatusDataBean;
import com.gayan.app.web.dto.WebLocationBean;
import com.gayan.app.web.service.BuilService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;

/**
 * Created by Gayan Sanjeewa on 10/7/2018.
 */
@Controller
@RequestMapping(value = "app/web")
public class WebBuildingController {

    @Autowired
    private BuilService builService;

    @RequestMapping(value = "build/list/all", method = RequestMethod.GET)
    public @ResponseBody  WebLocationBean getlistOfbuildingwithPagination() throws Exception {
        try {
            WebLocationBean listOfLocations = builService.getListOfLocations();
            return listOfLocations;
        } catch (Exception e) {
            e.printStackTrace();
            throw e;
        }

    }

    @RequestMapping(value = "/building/list/dropdown", method = RequestMethod.GET)
    public
    @ResponseBody
    ArrayList<BuildingDataBean> getBuildingListDropDown(
    ) throws Exception {

        return builService.getBuildingListDropDown();

    }

    @RequestMapping(value = "/status/list/dropdown", method = RequestMethod.GET)
    public
    @ResponseBody
    ArrayList<StatusDataBean> getStatusListDropDown(
    ) throws Exception {

        return builService.getStatusListDropDown();

    }

}
