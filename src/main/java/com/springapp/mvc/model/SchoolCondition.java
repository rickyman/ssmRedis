package com.springapp.mvc.model;

/**
 * 用户查询学校列表的条件
 * Created by feige on 2016/12/4.
 */
public class SchoolCondition{
    private  TbSchool tbSchool=null;//驾校信息
    private  String userAddress;//用户的位置坐标
    private  int comprehensive;//默认的综合排序  1为true  0为false
    private  int  isDistance;//按照距离最近进行排序  1为true  0为false
    private  int numberOfAppli;//按照驾校的报名人数排序  1为true  0为false 查询返回时为具体值
    private  int  isfee;//按照驾校价格进行排序 1为true  0为false
    private  double distance;//距离范围内进行查询 0表示全城 3为3km 5为5km  10为10km 20 为20km 查询返回时为具体值

    public String getUserAddress() {
        return userAddress;
    }

    public void setUserAddress(String userAddress) {
        this.userAddress = userAddress;
    }

    public int getComprehensive() {
        return comprehensive;
    }

    public void setComprehensive(int comprehensive) {
        this.comprehensive = comprehensive;
    }

    public int getIsDistance() {
        return isDistance;
    }

    public void setIsDistance(int isDistance) {
        this.isDistance = isDistance;
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
    public int getNumberOfAppli() {
        return numberOfAppli;
    }

    public void setNumberOfAppli(int numberOfAppli) {
        this.numberOfAppli = numberOfAppli;
    }

    public TbSchool getTbSchool() {
        return tbSchool;
    }

    public void setTbSchool(TbSchool tbSchool) {
        this.tbSchool = tbSchool;
    }

    public SchoolCondition() {
    }

    public SchoolCondition(TbSchool tbSchool, String userAddress, int comprehensive, int isDistance, int numberOfAppli, int isfee, double distance){
        this.tbSchool = tbSchool;
        this.userAddress = userAddress;
        this.comprehensive = comprehensive;
        this.isDistance = isDistance;
        this.numberOfAppli = numberOfAppli;
        this.isfee = isfee;
        this.distance = distance;
    }
}
