package com.springapp.mvc.controller;

import com.springapp.mvc.commmon.PageIterator;
import com.springapp.mvc.model.SubjectVo;
import net.sf.json.JSONArray;
import com.springapp.mvc.helper.ResourceBeanUtil;
import net.sf.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by ruiqizhang on 11/14/16.
 */
@Controller
@RequestMapping("/subject/")
public class SubjectController {

    @RequestMapping(value = "getData")
    @ResponseBody
    String getSubject(Integer type, Integer page, Integer pageSize, HttpServletResponse response) {
        if (type == null) {
            type = 1;
        }
        if (page == null) {
            page = 1;
        }
        String text = "";
        switch (type) {
            case 4:
                text = ResourceBeanUtil.readJsonFile("/home/ruiqizhang/resources/subject_four.json");
                break;
            case 1:
                text = ResourceBeanUtil.readJsonFile("/home/ruiqizhang/resources/subject_one.json");
                break;
            default:
                text = "";
                break;
        }

        if (!StringUtils.isEmpty(text)) {
            JSONArray array = JSONArray.fromObject(text);
            List<JSONObject> list = new ArrayList<JSONObject>();
            for (Object object : array) {
                JSONObject jsonObject = JSONObject.fromObject(object);
                SubjectVo subjectVo = (SubjectVo) jsonObject.toBean(jsonObject, SubjectVo.class);
                list.add(jsonObject);
            }
            PageIterator<JSONObject> pageIterator = ResourceBeanUtil.getPageIterator(list, pageSize);
            String result = pageIterator.getPageList(page).toString();
            response.setContentType("application/json;charset=utf-8");
            return JSONArray.fromObject(result).toString();
        }
        return "";
    }


}
