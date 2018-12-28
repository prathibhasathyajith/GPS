package com.gayan.app.web.service.impl;

import com.gayan.app.entity.Building;
import com.gayan.app.web.dao.BuildDao;
import com.gayan.app.web.dto.BuildingDataBean;
import com.gayan.app.web.dto.StatusDataBean;
import com.gayan.app.web.dto.WebLocationBean;
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
}
