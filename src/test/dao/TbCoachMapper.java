package test.dao;

import test.model.TbCoach;

public interface TbCoachMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(TbCoach record);

    int insertSelective(TbCoach record);

    TbCoach selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(TbCoach record);

    int updateByPrimaryKey(TbCoach record);
}