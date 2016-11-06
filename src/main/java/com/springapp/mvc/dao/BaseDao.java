package com.springapp.mvc.dao;
/**/

import javax.annotation.PostConstruct;
import javax.annotation.Resource;

import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;

import com.ibatis.sqlmap.client.SqlMapClient;

/**
 * Created by ruiqizhang on 1/19/16.
 */

public class BaseDao extends SqlMapClientDaoSupport {

    @Resource(name = "sqlMapClient")  //通过bean名称注入
    private SqlMapClient sqlMapClient;

    @PostConstruct  //完成sqlMapClient初始化工作
    public void initSqlMapClient() {
        super.setSqlMapClient(sqlMapClient);
    }
}