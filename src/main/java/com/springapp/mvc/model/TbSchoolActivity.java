package com.springapp.mvc.model;

import java.io.Serializable;
import java.util.Date;

public class TbSchoolActivity implements Serializable {
    private static final long serialVersionUID = 1l;
    private Integer id;

    private Integer schoolid;

    private String discount;

    private String groupon;

    private String other;

    private Date fromTime;

    private Date toTime;

    private Integer status;

    private Date ts;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getSchoolid() {
        return schoolid;
    }

    public void setSchoolid(Integer schoolid) {
        this.schoolid = schoolid;
    }

    public String getDiscount() {
        return discount;
    }

    public void setDiscount(String discount) {
        this.discount = discount == null ? null : discount.trim();
    }

    public String getGroupon() {
        return groupon;
    }

    public void setGroupon(String groupon) {
        this.groupon = groupon == null ? null : groupon.trim();
    }

    public String getOther() {
        return other;
    }

    public void setOther(String other) {
        this.other = other == null ? null : other.trim();
    }

    public Date getFromTime() {
        return fromTime;
    }

    public void setFromTime(Date fromTime) {
        this.fromTime = fromTime;
    }

    public Date getToTime() {
        return toTime;
    }

    public void setToTime(Date toTime) {
        this.toTime = toTime;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Date getTs() {
        return ts;
    }

    public void setTs(Date ts) {
        this.ts = ts;
    }

    @Override
    public String toString() {
        return "TbSchoolActivity{" +
                "id=" + id +
                ", schoolid=" + schoolid +
                ", discount='" + discount + '\'' +
                ", groupon='" + groupon + '\'' +
                ", other='" + other + '\'' +
                ", fromTime=" + fromTime +
                ", toTime=" + toTime +
                ", status=" + status +
                ", ts=" + ts +
                '}';
    }
}