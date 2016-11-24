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
@RequestMapping("/coach/")
public class CoacheController {


    /**
     * 教练列表
     *
     * @return
     */
    @ResponseBody
    @RequestMapping("list")
    String getCoachList() {
        JSONObject json = new JSONObject();

        //todo

        return json.toString();

    }

    /**
     * 教练详情
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
