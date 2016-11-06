package com.springapp.mvc.controller;

/**
 * Created by ruiqizhang on 1/19/16.
 */

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import com.springapp.mvc.model.User;
import com.springapp.mvc.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/user/")
public class UserController {

    @Resource(name = "userService")
    private UserService userService;
    private final String LIST = "redirect:/user/detail";

    /**
     * 登录
     *
     * @param session
     * @return
     */
    @RequestMapping("/login")
    public ModelAndView login(HttpSession session) throws Exception {
//        if (!result.hasErrors()) {
//            User loginUser = userService.login(user);
//            if (loginUser != null) {
//                session.setAttribute("USER", loginUser);
//                return new ModelAndView(LIST);
//            } else {
//                return new ModelAndView("redirect:/");
//            }
//        } else {
//            ModelAndView view = new ModelAndView();
//            view.setViewName("redirect:/");
//            view.addObject("error", result.getAllErrors());
//            return view;
//        }
        System.out.println("'''''''''''''''''''''''''before login user!");
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
            System.out.println("get page vo user is:"+user);
            String userName = user.getUsername();
            User vo = userService.getUserByName(userName);
            System.out.println("````````````````````````query by name```````````vo" + vo);
            if (vo != null) {
                ModelAndView error = new ModelAndView("user/error");
                error.addObject("error", "用户" + userName + "已存在，不能添加");
                return error;
            }
            System.out.println("add result is " +userService.addUser(user));

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
            System.out.println("Valid error!");
            view.addObject("error", result.getAllErrors());
            view.setViewName("user/edit");
            return view;
        } else {
            System.out.println(",,,,,,,,,,,before add user!");
            userService.updateUser(user);
            return new ModelAndView(LIST);
        }
    }

    /**
     * 详情
     */
    @RequestMapping(value = "/detail/{name}")
    public ModelAndView detail(@PathVariable String name) {
        ModelAndView modelAndView=new ModelAndView("user/detail");
        User user = null;
        try {
            user = userService.getUserByName(name);
        } catch (Exception e) {
            e.printStackTrace();
        }
        modelAndView.addObject("message",user);
        System.out.println("....................detail user is"+user);
        return modelAndView;

    }
}
