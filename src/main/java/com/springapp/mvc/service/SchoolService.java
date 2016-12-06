package com.springapp.mvc.service;

import com.springapp.mvc.helper.GetDistance;
import com.springapp.mvc.mapper.TbSchoolMapper;
import com.springapp.mvc.mapper.TbSchoolListMapper;
import com.springapp.mvc.model.SchoolCondition;
import com.springapp.mvc.model.TbSchool;
import com.springapp.mvc.model.TbSchoolList;
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
    @Autowired
    private TbSchoolListMapper tbSchoolListDao;


    /**
     * 根据学校ID查询学校详细信息
     * @param id
     * @return
     * @throws Exception
     */
    public TbSchool selectByPrimaryKey(Integer id) throws Exception {
        return tbSchoolDao.selectByPrimaryKey(id);
    }

    //按照用户查询条件查询学校
    public List<TbSchoolList> getSchoolByCondition(SchoolCondition condition) throws Exception {
        List<TbSchoolList> tbSchoolLists = null;
        //默认的综合排序  距离*0.4+报名人数*0.3+费用*0.3(干预的以后再做)
        if (condition.getIsComprehensive()== 1) {
            //to do
            return tbSchoolLists;
        }if(condition.getIsDistance()==1){//按照距离最近排序

            return tbSchoolLists;
        }if(condition.getIsNumberOfAppli()==1){//按照驾校的报名人数排序
            tbSchoolLists=orderByOrders();//按照驾校的报名人数排序
            getDistanceAndFilter(tbSchoolLists,condition);//计算学校到用户的距离 并过滤距离
            return tbSchoolLists;
        }if(condition.getIsfee()==1){//按照驾校价格进行排序
            tbSchoolLists=orderByFee();//按照驾校价格进行排序
            getDistanceAndFilter(tbSchoolLists,condition);//计算学校到用户的距离 并过滤距离
            return tbSchoolLists;
        }
        return tbSchoolLists;
    }

    //距离的过滤
    public List<TbSchoolList> distanceFilter(List<TbSchoolList> tbSchoolLists, SchoolCondition condition) throws Exception {
        if (tbSchoolLists == null || condition == null)
            return null;
        //0(表示全城)时设置condition的distance为Max
        if (condition.getDistance() == 0)
            condition.setDistance(Integer.MAX_VALUE);
        //距离为3 5 10 20km 以及全城
        Iterator<TbSchoolList> iterator = tbSchoolLists.iterator();
        TbSchoolList tbSchoolList = null;
        while (iterator.hasNext()) {
            tbSchoolList = iterator.next();
            if (tbSchoolList.getDistance() > condition.getDistance())
                iterator.remove();
        }
        return tbSchoolLists;
    }

    //按照费用进行排序
    public List<TbSchoolList> orderByFee() throws Exception {
        return tbSchoolListDao.orderByFee();
    }

   ///按照订单数进行排序
    public List<TbSchoolList> orderByOrders() throws Exception {
        return tbSchoolListDao.orderByOrders();
    }

    //计算学校到用户的距离
    public void getDistance(List<TbSchoolList> tbSchoolLists, SchoolCondition condition) throws Exception {
        if (tbSchoolLists == null || condition == null)
            return ;
        Iterator<TbSchoolList> iterator = tbSchoolLists.iterator();
        TbSchoolList tbSchoolList = null;
        double distance = 0;
        while (iterator.hasNext()) {
            tbSchoolList = iterator.next();
            if(tbSchoolList.getAddress().contains(",")&&condition.getUserAddress().contains(",")){
                distance = GetDistance.getGeoDis(tbSchoolList.getAddress(), condition.getUserAddress());
                tbSchoolList.setDistance(distance);
            }
        }
    }

    //根据学校名称进行查询
    public List<TbSchoolList> selectSchoolByName(String name) throws Exception {
        return tbSchoolListDao.selectSchoolByName(name);
    }

    //计算学校到用户的距离 并距离过滤
    public void getDistanceAndFilter(List<TbSchoolList> tbSchoolLists, SchoolCondition condition) {
        if (tbSchoolLists == null || condition == null)
            return;
        //0(表示全城)时设置condition的distance为Max
        if (condition.getDistance() == 0)
            condition.setDistance(Integer.MAX_VALUE);
        //距离为3 5 10 20km 以及全城
        Iterator<TbSchoolList> iterator = tbSchoolLists.iterator();
        TbSchoolList tbSchoolList = null;
        double distance = 0;
        while (iterator.hasNext()) {
            tbSchoolList = iterator.next();
            if(tbSchoolList.getAddress().contains(",")&&condition.getUserAddress().contains(",")){
                distance = GetDistance.getGeoDis(tbSchoolList.getAddress(), condition.getUserAddress());
                if (distance > condition.getDistance())
                    iterator.remove();
                else
                    tbSchoolList.setDistance(distance);
            }else
                iterator.remove();
        }
    }

}
