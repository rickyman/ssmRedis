package com.springapp.mvc.service;

import com.springapp.mvc.helper.GetDistance;
import com.springapp.mvc.mapper.TbSchoolMapper;
import com.springapp.mvc.model.SchoolCondition;
import com.springapp.mvc.model.TbSchool;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Iterator;
import java.util.List;

/**
 * Created by feige on 2016/11/27.
 */
@Service //将SchoolService类注入到bean里面
@Transactional  //注入事务管理
public class SchoolService {
    @Autowired
    private TbSchoolMapper tbSchoolDao;



    /**
     * 根据学校ID查询学校详细信息
     * 包括  id 名称(name) logo  描述信息(description) 距离(distance) 驾校课程(level) 费用(fee)  报名情况(numberOfAppli)
     * @param id
     * @return
     * @throws Exception
     */
    public TbSchool selectByPrimaryKey(Integer id) throws Exception {
        return tbSchoolDao.selectByPrimaryKey(id);
    }

    //按照用户查询条件查询学校
    public List<SchoolCondition> getSchoolByCondition(SchoolCondition condition) throws Exception {
        List<SchoolCondition> resultSchoolList = null;
        //默认的综合排序  距离*0.4+报名人数*0.3+费用*0.3(干预的以后再做)
        if (condition.getComprehensive() == 1) {
            //to do

        }

        return null;
    }


    //距离的过滤 以及计算学校到用户的距离
    public List<SchoolCondition> distanceFilter(List<SchoolCondition> conditionList, SchoolCondition condition) throws Exception {
        if (conditionList == null || condition == null)
            return null;
        //0(表示全城)时设置condition的distance为Max
        if (condition.getDistance() == 0)
            condition.setDistance(Integer.MAX_VALUE);
        //距离为3 5 10 20km 以及全城
        Iterator<SchoolCondition> iterator = conditionList.iterator();
        SchoolCondition conditionTemp = null;
        double distance = 0;
        while (iterator.hasNext()) {
            conditionTemp = iterator.next();
            distance = GetDistance.getGeoDis(conditionTemp.getTbSchool().getAddress(), condition.getUserAddress());
            if (distance > condition.getDistance())
                iterator.remove();
            else
                conditionTemp.setDistance(distance);

        }
        return conditionList;
    }

    //按照费用进行排序
    public List<TbSchool> orderByFee() throws Exception {
        return tbSchoolDao.orderByFee();
    }

    //按照订单数进行排序
    public List<TbSchool> orderByOrders() throws Exception {
        return tbSchoolDao.orderByFee();
    }


}
