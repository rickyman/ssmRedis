package com.springapp.mvc.controller;

import com.alibaba.fastjson.JSONObject;
import com.springapp.mvc.helper.AjaxUtil;
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
     * 学校列表
     *
     * @return
     */
    @ResponseBody
    @RequestMapping("list")
    String getSchoolList() {
//        SchoolCondition  condition
        JSONObject json = new JSONObject();
    /*     id;
        
        SchoolCondition  condition=null;
        
        {

            private String name;   like

            private String address;    距离 从近到远    kilometer (分城市？？)

            private String description; like 

            private String tag;   

            private String feeBegin;  like 
            private String feeEnd;
            private String noitice; todo 
              int pge;
            int  pagesize;
        	
        	
        	
        }*/


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
    @RequestMapping(value="{id}",method= RequestMethod.GET,produces = "text/json;charset=UTF-8")
    String getSchoolList(@PathVariable Integer id) {
        try {
            TbSchool tbSchool =schoolService.selectByPrimaryKey(id);
            logger.info("query1School by id " + tbSchool);
            if(tbSchool!=null){
                return new JSONObject().toJSONString(tbSchool);
            }
        } catch (Exception e) {
            logger.info("query1School Exception is " + e.getMessage());
            e.printStackTrace();
        }
        return AjaxUtil.ajaxError("not find the schoolID!");
    }

}
