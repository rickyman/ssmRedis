package com.springapp.mvc.controller;

/**
 * Created by ruiqizhang on 1/19/16.
 */

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import com.alibaba.fastjson.JSONObject;
import com.springapp.mvc.model.User;
import com.springapp.mvc.service.UserService;
import org.quickbundle.tools.support.encrypt.Md5Token;
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
//@SessionAttributes(value = "user")
public class UserController {

    @Resource(name = "userService")
    private UserService userService;
    private final String LIST = "redirect:/user/detail";
    private final Md5Token md5Token = new Md5Token();
    private static final Logger logger = LoggerFactory.getLogger(UserController.class);
    @Autowired
    private RedisTemplate redisTemplate;


    //********************公共方法********************8
    public String ajaxError(String message) {
        JSONObject json = new JSONObject();
        json.put("status", false);
        json.put("message", message);
        return json.toString();
    }

    public JSONObject ajaxSuccess() {
        JSONObject json = new JSONObject();
        json.put("status", true);
        return json;
    }
    //************** ajax请求     ********************  */

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
            user.setPassword(md5Token.getLongToken(user.getPassword()));
            User loginUser = userService.login(user);
            logger.info("validateUser get user is " + user);
            if (loginUser != null) {
                session.setAttribute("user", user);
                ListOperations<String, User> listOperations = redisTemplate.opsForList();
                listOperations.leftPush("user", user);
                logger.info("validateUser from redis is" + listOperations.range("user", 0, -1));
                listOperations.getOperations().expire("user", 10, TimeUnit.MINUTES);
                return ajaxSuccess().toString();
            }
        } catch (Exception e) {
            logger.info("validateUser Exception is " + e.getMessage());
            e.printStackTrace();
        }
        return ajaxError("not find user!");
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
            return ajaxSuccess().toString();
        } else {
            return ajaxError("no user login !");
        }
    }


    /**
     * 登录
     *
     * @return
     */
    @RequestMapping("/login")
    public ModelAndView login(@ModelAttribute User user) throws Exception {
//        if (!result.hasErrors()) {
//            User loginUser = userService.login(user);
//            if (loginUser != null) {
//                session.setAttribute("USER", loginUser);
//                return new ModelAndView(LIST);
//            } else {
//                return new ModelAndView("redirect:/");
//            }
//        } else {
//        ModelAndView view = new ModelAndView();
//        view.setViewName("redirect:/");
//        view.addObject("error", result.getAllErrors());
//        return view;
////        }
        logger.info("'''''''''''''''''''''''''before login user!");
        ModelAndView modelAndView = new ModelAndView("/user/login");
        return modelAndView;
    }

    /**
     * 跳转至添加页
     *
     * @return
     */
    @RequestMapping(value = "/toAdd")
    public ModelAndView toAdd() {
        return new ModelAndView("user/add");
    }

    /**
     * 保存
     *
     * @param user
     * @return
     */
    @RequestMapping(value = "/add")
    public ModelAndView add(@Valid User user, BindingResult result) throws Exception {
        if (result.hasErrors()) {
            return new ModelAndView("user/add", "error", result.getAllErrors());
        } else {
            logger.info("get page vo user is:" + user);
            String userName = user.getUsername();
            User vo = userService.getUserByName(userName);
            logger.info("````````````````````````query by name```````````vo" + vo);
            if (vo != null) {
                ModelAndView error = new ModelAndView("user/error");
                error.addObject("error", "用户" + userName + "已存在，不能添加");
                return error;
            }
            logger.info("add result is " + userService.addUser(user));
            return new ModelAndView(LIST);
        }
    }

    /**
     * 根据ID删除
     *
     * @param id
     * @return
     */
    @RequestMapping(value = "/delete/{id}")
    public ModelAndView delete(@PathVariable int id) throws Exception {
        userService.deleteUser(id);
        return new ModelAndView(LIST);
    }

    /**
     * 跳转至编辑页面
     *
     * @param id
     * @return
     */
    @RequestMapping(value = "/edit/{id}")
    public ModelAndView edit(@PathVariable int id) throws Exception {
        User user = userService.getUserById(id);
        return new ModelAndView("user/edit", "user", user);
    }

    /**
     * 编辑
     *
     * @param user
     * @return
     */
    @RequestMapping(value = "/edit")
    public ModelAndView update(@Valid User user, BindingResult result) throws Exception {
        ModelAndView view = new ModelAndView();
        if (result.hasErrors()) {
            logger.info("Valid error!");
            view.addObject("error", result.getAllErrors());
            view.setViewName("user/edit");
            return view;
        } else {
            logger.info(",,,,,,,,,,,before add user!");
            userService.updateUser(user);
            return new ModelAndView(LIST);
        }
    }

    /**
     * 详情
     */
    @RequestMapping(value = "/detail/{name}")
    public ModelAndView detail(@PathVariable String name) {
        ModelAndView modelAndView = new ModelAndView("user/detail");
        User user = null;
        try {
            user = userService.getUserByName(name);
        } catch (Exception e) {
            e.printStackTrace();
        }
        modelAndView.addObject("message", user);
        logger.info("....................detail user is" + user);
        return modelAndView;

    }
}
