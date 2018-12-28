package com.gayan.app.web.dto;

import java.util.ArrayList;

public class CountBean {
    private String inCount;
    private String outCount;
    private String rangeMin;
    private String pointCount;
    private ArrayList<String> mapData;


    public String getInCount() {
        return inCount;
    }

    public void setInCount(String inCount) {
        this.inCount = inCount;
    }

    public String getOutCount() {
        return outCount;
    }

    public void setOutCount(String outCount) {
        this.outCount = outCount;
    }

    public ArrayList<String> getMapData() {
        return mapData;
    }

    public void setMapData(ArrayList<String> mapData) {
        this.mapData = mapData;
    }


    public String getPointCount() {
        return pointCount;
    }

    public void setPointCount(String pointCount) {
        this.pointCount = pointCount;
    }

    public String getRangeMin() {
        return rangeMin;
    }

    public void setRangeMin(String rangeMin) {
        this.rangeMin = rangeMin;
    }
}
