package com.gayan.app.web.service.impl;

import com.gayan.app.entity.Building;
import com.gayan.app.web.dao.BuildDao;
import com.gayan.app.web.dto.*;
import com.gayan.app.web.service.BuilService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;

/**
 * Created by Gayan Sanjeewa on 10/7/2018.
 */
@Service
public class BuilServiceImpl implements BuilService {

    @Autowired
    private BuildDao buildDao;

    @Transactional
    public WebLocationBean getListOfLocations() throws Exception {
        return buildDao.getListOfLocations();

    }

    @Transactional
    public ArrayList<BuildingDataBean> getBuildingListDropDown() throws Exception {
        return buildDao.getBuildingListDropDown();
    }

    @Transactional
    public ArrayList<StatusDataBean> getStatusListDropDown() throws Exception {
        return buildDao.getStatusListDropDown();
    }

    @Transactional
    public ArrayList<String[]> getBuildingList(String start, String length, String search_value, boolean device_id, boolean name, boolean location, boolean auth_admin) throws Exception {
        return buildDao.getBuildingList(start, length, search_value, device_id, name, location, auth_admin);
    }

    @Transactional
    public int getBuildingCount(String search_value, boolean device_id, boolean name, boolean location, boolean auth_admin) throws Exception {
        return buildDao.getBuildingCount(search_value, device_id, name, location, auth_admin);
    }

    @Transactional
    public WebResponsBean delete(String building_id) throws Exception {
        return buildDao.delete(building_id);
    }

    @Transactional
    public WebResponsBean addBuilding(BuildingAddBean buildingAddBean) throws Exception {
        return buildDao.addBuilding(buildingAddBean);
    }


}
