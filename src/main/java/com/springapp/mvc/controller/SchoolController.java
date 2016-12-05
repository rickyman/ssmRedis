package com.springapp.mvc.controller;

import com.alibaba.fastjson.JSONObject;
import com.springapp.mvc.commmon.PageIterator;
import com.springapp.mvc.helper.AjaxUtil;
import com.springapp.mvc.model.SchoolCondition;
import com.springapp.mvc.model.TbSchool;
import com.springapp.mvc.service.SchoolService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by ruiqizhang on 11/24/16.
 */
@Controller
@RequestMapping("/school/")
public class SchoolController {

    @Resource(name = "schoolService")
    private SchoolService schoolService;


    private static final Logger logger = LoggerFactory.getLogger(SchoolController.class);

    /**
     * 查询学校列表
     * 首页为当前定位附近的综合排序
     * 综合排序：距离+报名数+价钱+干预
     * 单项排序：距离、报名数、价钱
     * 距离为： 3km 5km 10km 20km  全城
     * 区县 选择城市(以后再做 现在默认城市为天津，区县是下一个版本做 现在用附近距离做)
     * appz中上拉有更多
     *
     * @return
     */
    @ResponseBody
    @RequestMapping("list")
    String getSchoolList(SchoolCondition condition) {
        JSONObject json = new JSONObject();
        //分页最后写
       /* List<JSONObject> result = new ArrayList<JSONObject>();
        PageIterator<JSONObject> page = new PageIterator<JSONObject>();*/

        try {

        } catch (Exception e) {
            logger.info("getShoolList Exception is " + e.getMessage());
            e.printStackTrace();
        }
        return AjaxUtil.ajaxError("抱歉，您的附近还未有签约驾校!");
    }

    /**
     * 根据学校ID查询学校详情
     *
     * @param id
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "{id}", method = RequestMethod.GET, produces = "text/json;charset=UTF-8")
    String getSchoolList(@PathVariable Integer id) {
        try {
            TbSchool tbSchool = schoolService.selectByPrimaryKey(id);
            logger.info("query1School by id " + tbSchool);
            if (tbSchool != null) {
                return new JSONObject().toJSONString(tbSchool);
            }
        } catch (Exception e) {
            logger.info("query1School Exception is " + e.getMessage());
            e.printStackTrace();
        }
        return AjaxUtil.ajaxError("not find the schoolID!");
    }

    /**
     *根据学校名称查询
     * @param id
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "querySchoolByName/{name}", method = RequestMethod.GET, produces = "text/json;charset=UTF-8")
    String querySchoolByName(@PathVariable Integer id) {
        // todo
/*        try {
            TbSchool tbSchool = schoolService.selectByPrimaryKey(id);
            logger.info("query1School by id " + tbSchool);
            if (tbSchool != null) {
                return new JSONObject().toJSONString(tbSchool);
            }
        } catch (Exception e) {
            logger.info("query1School Exception is " + e.getMessage());
            e.printStackTrace();
        }
        return AjaxUtil.ajaxError("not find the schoolID!");*/
        return null;
    }
}
