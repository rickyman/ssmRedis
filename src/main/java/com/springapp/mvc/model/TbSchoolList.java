package com.springapp.mvc.model;

import java.io.Serializable;

/**
 * 用户查询学校列表的返回结果
 * Created by feige on 2016/12/6.
 */
public class TbSchoolList extends TbSchool implements Serializable {
    private static final long serialVersionUID = 1l;

    private  int numberOfAppli;//驾校的报名人数
    private  double distance;//用户到驾校的距离

    public TbSchoolList() {
    }

    public TbSchoolList(TbSchool tbSchool, int numberOfAppli, double distance) {
        this.numberOfAppli = numberOfAppli;
        this.distance = distance;
    }


    public int getNumberOfAppli() {
        return numberOfAppli;
    }

    public void setNumberOfAppli(int numberOfAppli) {
        this.numberOfAppli = numberOfAppli;
    }

    public double getDistance() {
        return distance;
    }

    public void setDistance(double distance) {
        this.distance = distance;
    }

    @Override
    public String toString() {
        return "TbSchoolList{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", address='" + address + '\'' +
                ", description='" + description + '\'' +
                ", logo='" + logo + '\'' +
                ", orderNo=" + orderNo +
                ", regTime=" + regTime +
                ", ts=" + ts +
                ", tag='" + tag + '\'' +
                ", fee='" + fee + '\'' +
                ", noitice='" + noitice + '\'' +
                ", level='" + level + '\'' +
                ", status=" + status + '\'' +
                ", numberOfAppli=" + numberOfAppli +
                ", distance=" + distance +
                '}';
    }
}
