package com.gayan.app.web.dao;

import com.gayan.app.web.dto.BuildingDataBean;
import com.gayan.app.web.dto.StatusDataBean;
import com.gayan.app.web.dto.WebLocationBean;

import java.util.ArrayList;

/**
 * Created by Gayan Sanjeewa on 10/7/2018.
 */
public interface BuildDao {
    public WebLocationBean getListOfLocations()throws Exception;

    public ArrayList<BuildingDataBean> getBuildingListDropDown()throws Exception;

    public ArrayList<StatusDataBean> getStatusListDropDown()throws Exception;
}
