package com.springapp.mvc.mapper;

import com.springapp.mvc.model.TbCoachOrder;

public interface TbCoachOrderMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(TbCoachOrder record);

    int insertSelective(TbCoachOrder record);

    TbCoachOrder selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(TbCoachOrder record);

    int updateByPrimaryKey(TbCoachOrder record);
}