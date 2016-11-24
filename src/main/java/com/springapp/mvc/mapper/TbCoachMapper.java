package com.springapp.mvc.mapper;

import com.springapp.mvc.model.TbCoach;
import org.springframework.stereotype.Component;

@Component
public interface TbCoachMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(TbCoach record);

    int insertSelective(TbCoach record);

    TbCoach selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(TbCoach record);

    int updateByPrimaryKey(TbCoach record);
}