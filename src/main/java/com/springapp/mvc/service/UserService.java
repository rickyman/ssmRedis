package com.springapp.mvc.service;

/**
 * Created by ruiqizhang on 1/19/16.
 */

import java.util.List;

import javax.annotation.Resource;

import com.mysql.jdbc.StringUtils;
import com.springapp.mvc.mapper.UserMapper;
import com.springapp.mvc.model.User;
import org.apache.poi.util.StringUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


@Service //将UserService类注入到bean里面
@Transactional  //注入事务管理
public class UserService {
    @Autowired
    private UserMapper userDao;

    public User selectByNameAndPassword(String name, String passwsd) throws Exception {
        return userDao.selectByNameAndPassword(name, passwsd);
    }

    // todo insertBatch  deleteBatch  update   selectByCondition


}