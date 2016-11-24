package com.springapp.mvc.controller;

import com.alibaba.fastjson.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by ruiqizhang on 11/24/16.
 */
@Controller
@RequestMapping("/school/")
public class SchoolController {

    /**
     * 学校列表
     *
     * @return
     */
    @ResponseBody
    @RequestMapping("list")
    String getSchoolList() {
        JSONObject json = new JSONObject();

        //todo

        return json.toString();

    }

    /**
     * 学校详情
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
