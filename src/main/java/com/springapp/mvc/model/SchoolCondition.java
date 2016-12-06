package com.springapp.mvc.model;

import java.io.Serializable;

/**
 * 用户查询学校列表的条件
 * Created by feige on 2016/12/4.
 */
public class SchoolCondition implements Serializable {
    private static final long serialVersionUID = 1l;

    private  String userAddress;//用户的位置坐标
    private  int isComprehensive;//默认的综合排序  1为true  0为false
    private  int  isDistance;//按照距离最近进行排序  1为true  0为false
    private  int isNumberOfAppli;//按照驾校的报名人数排序  1为true  0为false
    private  int  isfee;//按照驾校价格进行排序 1为true  0为false
    private  double distance;//距离范围内进行查询 0表示全城 3为3km 5为5km  10为10km 20 为20km

    public SchoolCondition() {
    }

    public SchoolCondition(String userAddress, int isComprehensive, int isDistance, int isNumberOfAppli, int isfee, double distance) {
        this.userAddress = userAddress;
        this.isComprehensive = isComprehensive;
        this.isDistance = isDistance;
        this.isNumberOfAppli = isNumberOfAppli;
        this.isfee = isfee;
        this.distance = distance;
    }

    public String getUserAddress() {
        return userAddress;
    }

    public void setUserAddress(String userAddress) {
        this.userAddress = userAddress;
    }

    public int getIsComprehensive() {
        return isComprehensive;
    }

    public void setIsComprehensive(int isComprehensive) {
        this.isComprehensive = isComprehensive;
    }

    public int getIsDistance() {
        return isDistance;
    }

    public void setIsDistance(int isDistance) {
        this.isDistance = isDistance;
    }

    public int getIsNumberOfAppli() {
        return isNumberOfAppli;
    }

    public void setIsNumberOfAppli(int isNumberOfAppli) {
        this.isNumberOfAppli = isNumberOfAppli;
    }

    public int getIsfee() {
        return isfee;
    }

    public void setIsfee(int isfee) {
        this.isfee = isfee;
    }

    public double getDistance() {
        return distance;
    }

    public void setDistance(double distance) {
        this.distance = distance;
    }

    @Override
    public String toString() {
        return "SchoolCondition{" +
                "userAddress='" + userAddress + '\'' +
                ", isComprehensive=" + isComprehensive +
                ", isDistance=" + isDistance +
                ", isNumberOfAppli=" + isNumberOfAppli +
                ", isfee=" + isfee +
                ", distance=" + distance +
                '}';
    }
}
