package com.springapp.mvc.model;

import java.io.Serializable;
import java.util.Date;

public class TbCoach implements Serializable {
    private static final long serialVersionUID = 1l;
    private Integer id;

    private Integer userType;

    private String userName;

    private String mobile;

    private String address;

    private String school;

    private Integer state;

    private Integer orderNO;

    private Date regTime;

    private Date ts;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUserType() {
        return userType;
    }

    public void setUserType(Integer userType) {
        this.userType = userType;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName == null ? null : userName.trim();
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile == null ? null : mobile.trim();
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    public String getSchool() {
        return school;
    }

    public void setSchool(String school) {
        this.school = school == null ? null : school.trim();
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }

    public Integer getorderNO() {
        return orderNO;
    }

    public void setorderNO(Integer orderNO) {
        this.orderNO = orderNO;
    }

    public Date getRegTime() {
        return regTime;
    }

    public void setRegTime(Date regTime) {
        this.regTime = regTime;
    }

    public Date getTs() {
        return ts;
    }

    public void setTs(Date ts) {
        this.ts = ts;
    }

    @Override
    public String toString() {
        return "TbCoach{" +
                "id=" + id +
                ", userType=" + userType +
                ", userName='" + userName + '\'' +
                ", mobile='" + mobile + '\'' +
                ", address='" + address + '\'' +
                ", school='" + school + '\'' +
                ", state=" + state +
                ", orderNO=" + orderNO +
                ", regTime=" + regTime +
                ", ts=" + ts +
                '}';
    }
}