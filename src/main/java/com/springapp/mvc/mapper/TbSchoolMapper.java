package com.springapp.mvc.mapper;

import com.springapp.mvc.model.SchoolCondition;
import com.springapp.mvc.model.TbSchool;
import com.springapp.mvc.model.TbSchool;
import com.springapp.mvc.model.TbSchoolList;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public interface TbSchoolMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(TbSchool record);

    int insertSelective(TbSchool record);

    TbSchool selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(TbSchool record);

    int updateByPrimaryKey(TbSchool record);



}