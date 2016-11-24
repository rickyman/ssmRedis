package com.springapp.mvc.model;

import java.io.Serializable;
import java.util.Date;

public class TbUserLogin implements Serializable {
    private static final long serialVersionUID = 1l;
    private Integer id;

    private String nick;

    private String avatar;

    private String passwd;

    private String mobile;

    private String name;

    private String identifyId;

    private String stage;

    private Integer money;

    private Date ts;

    private String gender;

    private String address;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNick() {
        return nick;
    }

    public void setNick(String nick) {
        this.nick = nick == null ? null : nick.trim();
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar == null ? null : avatar.trim();
    }

    public String getPasswd() {
        return passwd;
    }

    public void setPasswd(String passwd) {
        this.passwd = passwd == null ? null : passwd.trim();
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile == null ? null : mobile.trim();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getIdentifyId() {
        return identifyId;
    }

    public void setIdentifyId(String identifyId) {
        this.identifyId = identifyId == null ? null : identifyId.trim();
    }

    public String getStage() {
        return stage;
    }

    public void setStage(String stage) {
        this.stage = stage == null ? null : stage.trim();
    }

    public Integer getMoney() {
        return money;
    }

    public void setMoney(Integer money) {
        this.money = money;
    }

    public Date getTs() {
        return ts;
    }

    public void setTs(Date ts) {
        this.ts = ts;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender == null ? null : gender.trim();
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    @Override
    public String toString() {
        return "TbUserLogin{" +
                "id=" + id +
                ", nick='" + nick + '\'' +
                ", avatar='" + avatar + '\'' +
                ", passwd='" + passwd + '\'' +
                ", mobile='" + mobile + '\'' +
                ", name='" + name + '\'' +
                ", identifyId='" + identifyId + '\'' +
                ", stage='" + stage + '\'' +
                ", money=" + money +
                ", ts=" + ts +
                ", gender='" + gender + '\'' +
                ", address='" + address + '\'' +
                '}';
    }
}