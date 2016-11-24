package com.springapp.mvc.model;

import java.io.Serializable;
import java.util.Date;

public class TbUserActivity implements Serializable {
    private static final long serialVersionUID = 1l;
    private Integer id;

    private Integer uid;

    private String school;

    private String coach;

    private String subject;

    private Date ts;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public String getSchool() {
        return school;
    }

    public void setSchool(String school) {
        this.school = school == null ? null : school.trim();
    }

    public String getCoach() {
        return coach;
    }

    public void setCoach(String coach) {
        this.coach = coach == null ? null : coach.trim();
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject == null ? null : subject.trim();
    }

    public Date getTs() {
        return ts;
    }

    public void setTs(Date ts) {
        this.ts = ts;
    }

    @Override
    public String toString() {
        return "TbUserActivity{" +
                "id=" + id +
                ", uid=" + uid +
                ", school='" + school + '\'' +
                ", coach='" + coach + '\'' +
                ", subject='" + subject + '\'' +
                ", ts=" + ts +
                '}';
    }
}