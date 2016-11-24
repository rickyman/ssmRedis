package com.springapp.mvc.mapper;

import com.springapp.mvc.model.TbSchoolActivity;
import com.springapp.mvc.model.TbSchoolActivity;
import org.springframework.stereotype.Component;

@Component
public interface TbSchoolActivityMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(TbSchoolActivity record);

    int insertSelective(TbSchoolActivity record);

    TbSchoolActivity selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(TbSchoolActivity record);

    int updateByPrimaryKey(TbSchoolActivity record);
}