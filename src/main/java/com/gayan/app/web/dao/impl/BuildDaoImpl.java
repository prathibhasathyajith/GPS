package com.gayan.app.web.dao.impl;

import com.gayan.app.entity.Building;
import com.gayan.app.entity.Status;
import com.gayan.app.web.dao.BuildDao;
import com.gayan.app.web.dto.*;
import org.hibernate.SessionFactory;
import org.hibernate.classic.Session;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Iterator;

/**
 * Created by Gayan Sanjeewa on 10/7/2018.
 */
@Repository
public class BuildDaoImpl implements BuildDao {
    @Autowired
    private SessionFactory sessionFactory;

    public WebLocationBean getListOfLocations() throws Exception {
        Session session = sessionFactory.getCurrentSession();

        Iterator iterator = session.createCriteria(Building.class, "build")
                .createAlias("build.regUserId", "regUserId")
                .createAlias("build.statusId", "statusId")
//                .add(Restrictions.eq("regUserId.userId",9))
                .list()
                .iterator();
        WebLocationBean webLocationBean = new WebLocationBean();
        ArrayList<WebLocCircleBean> loc_list = new ArrayList<WebLocCircleBean>();
        ArrayList<WebLocDataBean> marker_list = new ArrayList<WebLocDataBean>();
        WebLocCircleBean webLocCircleBean;
        WebLocMarkerBean webLocMarkerBean;
        WebLocDataBean webLocDataBean;
        while (iterator.hasNext()) {
            Building building = (Building) iterator.next();

            webLocCircleBean = new WebLocCircleBean();
            webLocCircleBean.setName(building.getBuildingName());
            webLocCircleBean.setLat(new BigDecimal(building.getLatitude()));
            webLocCircleBean.setLon(new BigDecimal(building.getLongitude()));
            loc_list.add(webLocCircleBean);


            webLocMarkerBean = new WebLocMarkerBean();
            webLocMarkerBean.setLon(new BigDecimal(building.getLongitude()));
            webLocMarkerBean.setLat(new BigDecimal(building.getLatitude()));

            webLocDataBean = new WebLocDataBean();

            webLocDataBean.setRadius(new BigDecimal(building.getOwnerRadius()));
            webLocDataBean.setData(webLocMarkerBean);
            webLocDataBean.setEmployee_count(100+"");
            webLocDataBean.setName(building.getBuildingName());
            marker_list.add(webLocDataBean);
        }
        webLocationBean.setLoc_list(loc_list);
        webLocationBean.setMarker_list(marker_list);
        return webLocationBean;
    }


    public ArrayList<BuildingDataBean> getBuildingListDropDown() throws Exception {
        Session session = sessionFactory.getCurrentSession();
        Iterator iterator = session.createCriteria(Building.class)
                .setProjection(Projections.projectionList()
                        .add(Projections.property("buildingId"))
                        .add(Projections.property("buildingName"))
                )
                .list().iterator();
        BuildingDataBean dataBean = null;
        ArrayList<BuildingDataBean> arrayList = new ArrayList<BuildingDataBean>();
        while (iterator.hasNext()) {
            Object[] objects = (Object[]) iterator.next();
            dataBean = new BuildingDataBean();
            dataBean.setBuilding_id(objects[0].toString());
            dataBean.setBuilding_name(objects[1].toString());
            arrayList.add(dataBean);
        }
        return arrayList;
    }

    public ArrayList<StatusDataBean> getStatusListDropDown() throws Exception {
        Session session = sessionFactory.getCurrentSession();
        Iterator iterator = session.createCriteria(Status.class)
                .setProjection(Projections.projectionList()
                        .add(Projections.property("statusId"))
                        .add(Projections.property("status"))
                )
                .list().iterator();
        StatusDataBean dataBean = null;
        ArrayList<StatusDataBean> arrayList = new ArrayList<StatusDataBean>();
        while (iterator.hasNext()) {
            Object[] objects = (Object[]) iterator.next();
            dataBean = new StatusDataBean();
            dataBean.setStatus_id(objects[0].toString());
            dataBean.setStatus_name(objects[1].toString());
            arrayList.add(dataBean);
        }
        return arrayList;
    }
}
