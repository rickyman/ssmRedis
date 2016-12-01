package com.springapp.mvc.service;

import com.springapp.mvc.mapper.TbSchoolMapper;
import com.springapp.mvc.model.TbSchool;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by feige on 2016/11/27.
 */
@Service //将UserService类注入到bean里面
@Transactional  //注入事务管理
public class SchoolService {
    @Autowired
    private TbSchoolMapper tbSchoolDao;
   //根据学校ID查询学校详细信息
    public  TbSchool selectByPrimaryKey(Integer id) throws  Exception{
        return tbSchoolDao.selectByPrimaryKey(id);
    }
}
