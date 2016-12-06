package com.springapp.mvc.mapper;

import com.springapp.mvc.model.TbSchoolList;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * Created by feige on 2016/12/5.
 */
@Component
public interface TbSchoolListMapper {
    //学校和订单左连接 获得学校的订单数目 并按照费用排序
    List<TbSchoolList> orderByFee();

    //学校和订单左连接 获得学校的订单数目 并按照订单数目排序
    List<TbSchoolList> orderByOrders();

    //根据学校名称查询学校列表 获得学校的订单数目 并按照费用排序
    List<TbSchoolList> selectSchoolByName(String name);
}
