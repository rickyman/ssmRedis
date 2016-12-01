package com.springapp.mvc.model;

import java.io.Serializable;
import java.util.Date;

public class TbSchool implements Serializable {
    private static final long serialVersionUID = 1l;
    private Integer id;

    private String name;

    private String address;

    private String description;

    private String logo;

    private Integer order_no;

    private Date regTime;

    private Date ts;

    private String tag;

    private String fee;

    private String noitice;

    private String level;

    private Integer status;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description == null ? null : description.trim();
    }

    public String getLogo() {
        return logo;
    }

    public void setLogo(String logo) {
        this.logo = logo == null ? null : logo.trim();
    }

    public Integer getOrder_no() {
        return order_no;
    }

    public void setOrder_no(Integer order_no) {
        this.order_no = order_no;
    }

    public Date getRegTime() {
        return regTime;
    }

    public void setRegTime(java.sql.Timestamp regTime) {
        this.regTime = regTime;
    }

    public Date getTs() {
        return ts;
    }

    public void setTs(Date ts) {
        this.ts = ts;
    }

    public String getTag() {
        return tag;
    }

    public void setTag(String tag) {
        this.tag = tag == null ? null : tag.trim();
    }

    public String getFee() {
        return fee;
    }

    public void setFee(String fee) {
        this.fee = fee == null ? null : fee.trim();
    }

    public String getNoitice() {
        return noitice;
    }

    public void setNoitice(String noitice) {
        this.noitice = noitice == null ? null : noitice.trim();
    }

    public String getLevel() {
        return level;
    }

    public void setLevel(String level) {
        this.level = level == null ? null : level.trim();
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "TbSchool{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", address='" + address + '\'' +
                ", description='" + description + '\'' +
                ", logo='" + logo + '\'' +
                ", order_no=" + order_no +
                ", regTime=" + regTime +
                ", ts=" + ts +
                ", tag='" + tag + '\'' +
                ", fee='" + fee + '\'' +
                ", noitice='" + noitice + '\'' +
                ", noitice='" + level + '\'' +
                ", status=" + status +
                '}';
    }
}