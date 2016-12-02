package com.springapp.mvc.mapper;

import com.springapp.mvc.model.TbSchoolOrder;

public interface TbSchoolOrderMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(TbSchoolOrder record);

    int insertSelective(TbSchoolOrder record);

    TbSchoolOrder selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(TbSchoolOrder record);

    int updateByPrimaryKey(TbSchoolOrder record);
}