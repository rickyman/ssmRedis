package com.springapp.mvc.dao;

/**
 * Created by ruiqizhang on 1/19/16.
 */

import java.util.List;

import com.springapp.mvc.model.User;
import org.springframework.stereotype.Component;

@Component  //将UserDao类注入到bean里面
public class UserDao extends BaseDao {
    public final String namespace = "com.springapp.mvc.dao.UserDao.";

    public boolean addUser(User user) throws Exception {
        User bean = (User) getSqlMapClient().insert(namespace + "insertUser", user);
        return bean != null ? true : false;
    }

    public boolean deleteUser(int id) throws Exception {
        int result = getSqlMapClientTemplate().delete(namespace +"deleteUser", id);
        return result > 0 ? true : false;
    }

    public User getUserById(int id) throws Exception {
        return (User) getSqlMapClientTemplate().queryForObject(namespace +"findUserByID", id);
    }

    @SuppressWarnings("unchecked")
    public List getAllUsers() throws Exception {
        return getSqlMapClientTemplate().queryForList(namespace +"findAllUser");
    }

    public boolean updateUser(User user) throws Exception {
        int result = getSqlMapClientTemplate().update(namespace +"updateUser", user);
        return result > 0 ? true : false;
    }

    public User getUserByNameAndPassword(User user) throws Exception {
        return (User) getSqlMapClientTemplate().queryForObject(namespace +"findUserByNameAndPassword", user);
    }

    public User getUserByName(String userName) throws Exception {
        return (User) getSqlMapClientTemplate().queryForObject(namespace +"findUserByName", userName);
    }

    public int getTotalCount() throws Exception {
        return (Integer) getSqlMapClientTemplate().queryForObject(namespace +"getTotalCount");
    }

    @SuppressWarnings("unchecked")
    public List getUsersByLike(User user) throws Exception {
        return getSqlMapClientTemplate().queryForList(namespace +"searchUsers", user);
    }

    public int deleteUserByLike(User user) throws Exception {
        int result = getSqlMapClientTemplate().delete(namespace +"deleteUserByLike", user);
        if (result > 0) {
            System.out.println("delete success！");
        } else {
            System.out.println("no record!");
        }
        return result;
    }
}
