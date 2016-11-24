package com.springapp.mvc.mapper;

import com.springapp.mvc.model.TbUserActivity;
import com.springapp.mvc.model.TbUserActivity;
import org.springframework.stereotype.Component;

@Component
public interface TbUserActivityMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(TbUserActivity record);

    int insertSelective(TbUserActivity record);

    TbUserActivity selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(TbUserActivity record);

    int updateByPrimaryKey(TbUserActivity record);
}