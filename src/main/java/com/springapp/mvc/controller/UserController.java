package com.springapp.mvc.controller;

/**
 * Created by ruiqizhang on 1/19/16.
 */

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import com.alibaba.fastjson.JSONObject;
import com.springapp.mvc.helper.AjaxUtil;
import com.springapp.mvc.model.User;
import com.springapp.mvc.service.UserService;
import org.apache.commons.codec.digest.DigestUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.ListOperations;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import java.util.concurrent.TimeUnit;

@Controller
@RequestMapping("/user/")
public class UserController {

    @Resource(name = "userService")
    private UserService userService;

    
    private static final Logger logger = LoggerFactory.getLogger(UserController.class);
    @Autowired
    private RedisTemplate redisTemplate;

    /**
     * 判断登陆用户是否合法，合法返回true，并且放入session
     * 否则返回false．
     * 其中passwd经过md5加密
     *
     * @param user
     * @return
     */
    @RequestMapping(value = "validate")
    @ResponseBody
    String validateUser(@ModelAttribute User user, HttpSession session) {
        try {
            user.setPassword(DigestUtils.md5Hex(user.getPassword()));
            User loginUser = userService.selectByNameAndPassword(user.getUsername(), user.getPassword());
            logger.info("validateUser get user is " + loginUser);
            if (loginUser != null) {
                session.setAttribute("user", loginUser);
                ListOperations<String, User> listOperations = redisTemplate.opsForList();
                listOperations.leftPush("user", loginUser);
                logger.info("validateUser from redis is" + listOperations.range("user", 0, -1));
                listOperations.getOperations().expire("user", 10, TimeUnit.MINUTES);
                return AjaxUtil.ajaxSuccess().toString();
            }
        } catch (Exception e) {
            logger.info("validateUser Exception is " + e.getMessage());
            e.printStackTrace();
        }
        return AjaxUtil.ajaxError("not find user!");
    }

    /**
     * 用户退出就删除session的user属性
     *
     * @return
     */
    @RequestMapping(value = "logout")
    @ResponseBody
    String logout(HttpSession session) {
        if (session.getAttribute("user") != null) {
            session.removeAttribute("user");
            ListOperations<String, User> listOperations = redisTemplate.opsForList();
            if (listOperations.getOperations().hasKey("user")) {
                logger.info("listOperations.getOperations before pop is " + listOperations.range("user", 0, -1));
                logger.info("listOperations.getOperations  pop is " + listOperations.leftPop("user"));
                logger.info("listOperations.getOperations after pop is" + listOperations.range("user", 0, -1));
            }
            return AjaxUtil.ajaxSuccess().toString();
        } else {
            return AjaxUtil.ajaxError("no user login !");
        }
    }


    /**
     * 登录
     *
     * @return
     */
    @RequestMapping("/login")
    public ModelAndView login(@ModelAttribute User user) throws Exception {
        logger.info("'''''''''''''''''''''''''before login user!");
        ModelAndView modelAndView = new ModelAndView("/user/login");
        return modelAndView;
    }


    /**
     * 用户详情
     *
     * @param id
     * @return
     */
    @ResponseBody
    @RequestMapping("{id}")
    String getSchoolList(@PathVariable Long id) {
        JSONObject json = new JSONObject();

        //todo

        return json.toString();
    }


}
