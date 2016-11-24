package com.springapp.mvc.mapper;

import com.springapp.mvc.model.TbUserLogin;
import com.springapp.mvc.model.TbUserLogin;
import org.springframework.stereotype.Component;

@Component
public interface TbUserLoginMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(TbUserLogin record);

    int insertSelective(TbUserLogin record);

    TbUserLogin selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(TbUserLogin record);

    int updateByPrimaryKey(TbUserLogin record);
}